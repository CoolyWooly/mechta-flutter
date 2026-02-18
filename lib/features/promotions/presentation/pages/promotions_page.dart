import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mechta_flutter/app/di.dart';
import 'package:mechta_flutter/features/promotions/domain/entities/promotion_entity.dart';
import 'package:mechta_flutter/features/promotions/presentation/bloc/promotions_bloc.dart';
import 'package:mechta_flutter/l10n/app_localizations.dart';

class PromotionsPage extends StatelessWidget {
  const PromotionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<PromotionsBloc>()..add(const PromotionsLoadRequested()),
      child: const _View(),
    );
  }
}

class _View extends StatefulWidget {
  const _View();

  @override
  State<_View> createState() => _ViewState();
}

class _ViewState extends State<_View> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      context.read<PromotionsBloc>().add(const PromotionsNextPageRequested());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= maxScroll - 200;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.promotions)),
      body: BlocBuilder<PromotionsBloc, PromotionsState>(
        builder: (context, state) {
          return switch (state.status) {
            PromotionsStatus.initial ||
            PromotionsStatus.loading when state.promotions.isEmpty =>
              const Center(child: CircularProgressIndicator()),
            PromotionsStatus.failure when state.promotions.isEmpty => Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(state.errorMessage ?? AppLocalizations.of(context)!.loadingError),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () => context
                          .read<PromotionsBloc>()
                          .add(const PromotionsLoadRequested()),
                      child: Text(AppLocalizations.of(context)!.retry),
                    ),
                  ],
                ),
              ),
            _ => ListView.builder(
                controller: _scrollController,
                padding: const EdgeInsets.all(16),
                itemCount: state.hasReachedMax
                    ? state.promotions.length
                    : state.promotions.length + 1,
                itemBuilder: (context, index) {
                  if (index >= state.promotions.length) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Center(child: CircularProgressIndicator()),
                    );
                  }
                  return _PromotionCard(promotion: state.promotions[index]);
                },
              ),
          };
        },
      ),
    );
  }
}

class _PromotionCard extends StatelessWidget {
  final PromotionEntity promotion;

  const _PromotionCard({required this.promotion});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.only(bottom: 16),
      child: InkWell(
        onTap: () => _onTap(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (promotion.imageSrc != null)
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  promotion.imageSrc!,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) =>
                      const SizedBox(),
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (promotion.name != null)
                    Text(
                      promotion.name!,
                      style:
                          Theme.of(context).textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                  if (promotion.previewText != null) ...[
                    const SizedBox(height: 4),
                    Text(
                      promotion.previewText!,
                      style: Theme.of(context).textTheme.bodyMedium,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                  if (promotion.daysBeforeExpiration != null &&
                      promotion.daysBeforeExpiration! > 0) ...[
                    const SizedBox(height: 8),
                    Text(
                      AppLocalizations.of(context)!.daysLeft(promotion.daysBeforeExpiration!),
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Theme.of(context).colorScheme.error,
                          ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onTap(BuildContext context) {
    final code = promotion.code;
    if (code == null || code.isEmpty) return;
    final location = GoRouterState.of(context).uri.toString();
    context.go('$location/promotion/$code');
  }
}
