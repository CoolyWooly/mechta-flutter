import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mechta_flutter/app/di.dart';
import 'package:mechta_flutter/features/favorites/presentation/bloc/favorites_bloc.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<FavoritesBloc>()..add(const FavoritesLoadRequested()),
      child: const _FavoritesView(),
    );
  }
}

class _FavoritesView extends StatelessWidget {
  const _FavoritesView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Избранное')),
      body: BlocBuilder<FavoritesBloc, FavoritesState>(
        builder: (context, state) {
          return switch (state.status) {
            FavoritesStatus.initial || FavoritesStatus.loading => const Center(
                child: CircularProgressIndicator(),
              ),
            FavoritesStatus.failure => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(state.errorMessage ?? 'Ошибка загрузки'),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () => context
                          .read<FavoritesBloc>()
                          .add(const FavoritesLoadRequested()),
                      child: const Text('Повторить'),
                    ),
                  ],
                ),
              ),
            FavoritesStatus.success => state.favorites.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.favorite_outline,
                            size: 64, color: Colors.grey),
                        const SizedBox(height: 16),
                        Text(
                          'Нет избранных товаров',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                  )
                : ListView.builder(
                    itemCount: state.favorites.length,
                    itemBuilder: (context, index) {
                      final fav = state.favorites[index];
                      return ListTile(
                        title: Text(fav.title),
                        subtitle: Text('${fav.price} ₸'),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () => context
                            .go('/favorites/product/${fav.productId}'),
                      );
                    },
                  ),
          };
        },
      ),
    );
  }
}
