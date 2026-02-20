import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechta_flutter/core/usecase/usecase.dart';
import 'package:mechta_flutter/features/cart/domain/entities/cart_item_entity.dart';
import 'package:mechta_flutter/features/cart/domain/repositories/cart_repository.dart';
import 'package:mechta_flutter/core/error/failures.dart';
import 'package:mechta_flutter/features/cart/domain/usecases/get_cart_items.dart';
import 'package:mechta_flutter/features/cart/presentation/cubit/cart_cubit.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final GetCartUseCase _getCart;
  final CartRepository _repository;
  final CartCubit _cartCubit;

  CartBloc({
    required GetCartUseCase getCart,
    required CartRepository repository,
    required CartCubit cartCubit,
  })  : _getCart = getCart,
        _repository = repository,
        _cartCubit = cartCubit,
        super(const CartState()) {
    on<CartLoadRequested>(_onLoadRequested);
    on<CartAddToCartRequested>(_onAddToCartRequested);
    on<CartChangeQuantityRequested>(_onChangeQuantityRequested);
    on<CartDeleteItemRequested>(_onDeleteItemRequested);
  }

  Future<void> _onLoadRequested(
    CartLoadRequested event,
    Emitter<CartState> emit,
  ) async {
    if (!event.isSilent) {
      emit(state.copyWith(status: CartStatus.loading));
    }
    try {
      final isAuth = await _repository.isAuthenticated();
      final cart = await _getCart(NoParams());
      
      final quantities = <String, int>{};
      for (final item in cart.items) {
        if (item.productId != null) {
          quantities[item.productId.toString()] = item.quantity;
        }
      }
      await _repository.syncCartProducts(quantities);
      _cartCubit.loadCartQuantities();
      
      emit(state.copyWith(
        status: CartStatus.success,
        cart: cart,
        isAuthenticated: isAuth,
      ));
    } catch (e) {
      if (e is ServerFailure) {
        emit(state.copyWith(
          status: CartStatus.failure,
          errorMessage: e.message,
          errors: e.errors,
        ));
      } else {
        emit(state.copyWith(
          status: CartStatus.failure,
          errorMessage: e.toString(),
        ));
      }
    }
  }

  Future<void> _onAddToCartRequested(
    CartAddToCartRequested event,
    Emitter<CartState> emit,
  ) async {
    try {
      await _repository.addToCart(event.productId);
      add(const CartLoadRequested(isSilent: true));
    } catch (_) {
      // silently ignore — UI handles optimistic update
      add(const CartLoadRequested(isSilent: true));
    }
  }

  Future<void> _onChangeQuantityRequested(
    CartChangeQuantityRequested event,
    Emitter<CartState> emit,
  ) async {
    try {
      // Optimistic update for UI responsiveness
      if (state.cart != null) {
        final updatedItems = state.cart!.items.map((item) {
          if (item.productId == event.productId) {
            // Create a temporary mock of the updated item 
            // The exact prices will be recalculated by the server, but this makes the counter snappy
            return CartItemEntity(
              id: item.id,
              productId: item.productId,
              name: item.name,
              code: item.code,
              preview: item.preview,
              quantity: event.quantity,
              bonus: item.bonus,
              spentBonus: item.spentBonus,
              earnedChips: item.earnedChips,
              prices: item.prices,
              priceSums: item.priceSums,
              isGift: item.isGift,
              catalogQuantity: item.catalogQuantity,
              canBuy: item.canBuy,
              brand: item.brand,
              tradein: item.tradein,
              isShowcase: item.isShowcase,
              reviewCount: item.reviewCount,
              rating: item.rating,
            );
          }
          return item;
        }).toList();
        
        final updatedCart = CartEntity(
          items: updatedItems,
          totalPrices: state.cart!.totalPrices, // Temporary until server responds
          actionChoice: state.cart!.actionChoice,
          actionChoiceName: state.cart!.actionChoiceName,
          actionChoiceList: state.cart!.actionChoiceList,
          actionChoiceCoupon: state.cart!.actionChoiceCoupon,
          couponList: state.cart!.couponList,
          discountByCoupons: state.cart!.discountByCoupons,
          tradeInDiscountAmount: state.cart!.tradeInDiscountAmount,
          tradeInAdditionalDiscount: state.cart!.tradeInAdditionalDiscount,
        );
        
        emit(state.copyWith(cart: updatedCart));
      }

      await _repository.changeQuantity(event.productId, event.quantity);
      add(const CartLoadRequested(isSilent: true));
    } catch (e) {
      if (e is ServerFailure && e.errors != null && e.errors!.isNotEmpty) {
        emit(state.copyWith(errors: e.errors));
        emit(state.copyWith(errors: [])); // clear errors immediately so they don't stick
      }
      add(const CartLoadRequested(isSilent: true));
    }
  }

  Future<void> _onDeleteItemRequested(
    CartDeleteItemRequested event,
    Emitter<CartState> emit,
  ) async {
    try {
      // Optimistic deletion
      if (state.cart != null) {
        final updatedItems = state.cart!.items
            .where((item) => item.productId != event.productId)
            .toList();
            
        final updatedCart = CartEntity(
          items: updatedItems,
          totalPrices: state.cart!.totalPrices,
          actionChoice: state.cart!.actionChoice,
          actionChoiceName: state.cart!.actionChoiceName,
          actionChoiceList: state.cart!.actionChoiceList,
          actionChoiceCoupon: state.cart!.actionChoiceCoupon,
          couponList: state.cart!.couponList,
          discountByCoupons: state.cart!.discountByCoupons,
          tradeInDiscountAmount: state.cart!.tradeInDiscountAmount,
          tradeInAdditionalDiscount: state.cart!.tradeInAdditionalDiscount,
        );
        
        emit(state.copyWith(cart: updatedCart));
      }

      await _repository.deleteFromCart(event.productId);
      _cartCubit.loadCartQuantities();
      add(const CartLoadRequested(isSilent: true));
    } catch (e) {
      if (e is ServerFailure && e.errors != null && e.errors!.isNotEmpty) {
        emit(state.copyWith(errors: e.errors));
        emit(state.copyWith(errors: []));
      }
      add(const CartLoadRequested(isSilent: true));
    }
  }
}

