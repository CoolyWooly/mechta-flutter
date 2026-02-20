import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechta_flutter/app/di.dart';
import 'package:mechta_flutter/features/bonuses/domain/entities/bonuses_entity.dart';
import 'package:mechta_flutter/features/bonuses/presentation/bloc/bonuses_bloc.dart';
import 'package:mechta_flutter/l10n/app_localizations.dart';

class BonusesPage extends StatelessWidget {
  const BonusesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<BonusesBloc>()..add(const BonusesLoadRequested()),
      child: const _BonusesView(),
    );
  }
}

class _BonusesView extends StatelessWidget {
  const _BonusesView();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.bonuses)),
      body: BlocBuilder<BonusesBloc, BonusesState>(
        builder: (context, state) {
          return switch (state.status) {
            BonusesStatus.initial || BonusesStatus.loading =>
              const Center(child: CircularProgressIndicator()),
            BonusesStatus.failure => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(state.errorMessage ?? l10n.loadingError),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () => context
                          .read<BonusesBloc>()
                          .add(const BonusesLoadRequested()),
                      child: Text(l10n.retry),
                    ),
                  ],
                ),
              ),
            BonusesStatus.success || BonusesStatus.loadingMore =>
              _BonusesContent(state: state),
          };
        },
      ),
    );
  }
}

class _BonusesContent extends StatefulWidget {
  final BonusesState state;

  const _BonusesContent({required this.state});

  @override
  State<_BonusesContent> createState() => _BonusesContentState();
}

class _BonusesContentState extends State<_BonusesContent> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      context.read<BonusesBloc>().add(const BonusesLoadMoreRequested());
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = widget.state;
    final l10n = AppLocalizations.of(context)!;

    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        if (state.summary != null || state.chips != null)
          SliverToBoxAdapter(
            child: _SummarySection(
              summary: state.summary,
              chips: state.chips,
            ),
          ),
        SliverList.builder(
          itemCount: state.items.length,
          itemBuilder: (context, index) =>
              _OrderItemCard(item: state.items[index]),
        ),
        if (state.status == BonusesStatus.loadingMore)
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Center(child: CircularProgressIndicator()),
            ),
          ),
        if (state.items.isEmpty &&
            state.status == BonusesStatus.success)
          SliverFillRemaining(
            child: Center(child: Text(l10n.bonusHistoryEmpty)),
          ),
        const SliverToBoxAdapter(child: SizedBox(height: 24)),
      ],
    );
  }
}

class _SummarySection extends StatelessWidget {
  final BonusesSummaryEntity? summary;
  final ChipsSummaryEntity? chips;

  const _SummarySection({this.summary, this.chips});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      child: Column(
        children: [
          if (summary != null)
            _SummaryCard(
              title: l10n.bonuses,
              icon: Icons.star_rounded,
              color: colorScheme.primary,
              active: summary!.activeBonuses,
              blocked: summary!.blockedBonuses,
              expiring: summary!.totalExpiringBonuses,
              expirationDate: summary!.nearestExpirationDate,
            ),
          if (summary != null && chips != null) const SizedBox(height: 12),
          if (chips != null)
            _SummaryCard(
              title: l10n.chips,
              icon: Icons.toll_rounded,
              color: colorScheme.tertiary,
              active: chips!.activeChips,
              blocked: chips!.blockedChips,
              expiring: chips!.totalExpiringChips,
              expirationDate: chips!.nearestExpirationDate,
            ),
        ],
      ),
    );
  }
}

class _SummaryCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final int? active;
  final int? blocked;
  final int? expiring;
  final String? expirationDate;

  const _SummaryCard({
    required this.title,
    required this.icon,
    required this.color,
    this.active,
    this.blocked,
    this.expiring,
    this.expirationDate,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: color, size: 20),
                const SizedBox(width: 8),
                Text(title,
                    style: textTheme.titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: _StatItem(
                    label: l10n.activeBonuses,
                    value: '${active ?? 0}',
                    valueColor: color,
                  ),
                ),
                if (blocked != null && blocked! > 0)
                  Expanded(
                    child: _StatItem(
                      label: l10n.blockedBonuses,
                      value: '${blocked ?? 0}',
                      valueColor: colorScheme.onSurfaceVariant,
                    ),
                  ),
                if (expiring != null && expiring! > 0)
                  Expanded(
                    child: _StatItem(
                      label: l10n.expiringSoon,
                      value: '${expiring ?? 0}',
                      valueColor: colorScheme.error,
                    ),
                  ),
              ],
            ),
            if (expirationDate != null && expiring != null && expiring! > 0) ...[
              const SizedBox(height: 8),
              Text(
                '${l10n.expirationDate}: $expirationDate',
                style: textTheme.bodySmall
                    ?.copyWith(color: colorScheme.onSurfaceVariant),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String label;
  final String value;
  final Color? valueColor;

  const _StatItem({
    required this.label,
    required this.value,
    this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          value,
          style: textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: valueColor,
          ),
        ),
        Text(label, style: textTheme.bodySmall),
      ],
    );
  }
}

class _OrderItemCard extends StatefulWidget {
  final OrderItemEntity item;

  const _OrderItemCard({required this.item});

  @override
  State<_OrderItemCard> createState() => _OrderItemCardState();
}

class _OrderItemCardState extends State<_OrderItemCard> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    final item = widget.item;
    final l10n = AppLocalizations.of(context)!;
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    final bonusValue = item.totalBonuses ?? 0;
    final isPositive = bonusValue >= 0;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: item.products.isNotEmpty
            ? () => setState(() => _expanded = !_expanded)
            : null,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (item.orderId != null)
                          Text(
                            '${l10n.order} #${item.orderId}',
                            style: textTheme.titleSmall
                                ?.copyWith(fontWeight: FontWeight.w600),
                          ),
                        if (item.orderStatusName != null) ...[
                          const SizedBox(height: 2),
                          Text(
                            item.orderStatusName!,
                            style: textTheme.bodySmall?.copyWith(
                                color: colorScheme.onSurfaceVariant),
                          ),
                        ],
                        if (item.actionDate != null) ...[
                          const SizedBox(height: 2),
                          Text(
                            item.actionDate!,
                            style: textTheme.bodySmall?.copyWith(
                                color: colorScheme.onSurfaceVariant),
                          ),
                        ],
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      if (bonusValue != 0)
                        Text(
                          '${isPositive ? '+' : ''}$bonusValue ${l10n.bonuses}',
                          style: textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: isPositive
                                ? Colors.green
                                : colorScheme.error,
                          ),
                        ),
                      if ((item.totalChips ?? 0) != 0)
                        Text(
                          '+${item.totalChips} ${l10n.chips}',
                          style: textTheme.bodySmall?.copyWith(
                            color: colorScheme.tertiary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                    ],
                  ),
                  if (item.products.isNotEmpty) ...[
                    const SizedBox(width: 8),
                    Icon(
                      _expanded
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ],
                ],
              ),
              if (_expanded && item.products.isNotEmpty) ...[
                const Divider(height: 24),
                ...item.products.map((p) => _ProductRow(product: p)),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class _ProductRow extends StatelessWidget {
  final BonusProductEntity product;

  const _ProductRow({required this.product});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (product.productImageUrl != null)
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                product.productImageUrl!,
                width: 48,
                height: 48,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  width: 48,
                  height: 48,
                  color: colorScheme.surfaceContainerHighest,
                  child: const Icon(Icons.image_not_supported_outlined, size: 24),
                ),
              ),
            )
          else
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(Icons.image_not_supported_outlined,
                  size: 24, color: colorScheme.onSurfaceVariant),
            ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (product.productName != null)
                  Text(
                    product.productName!,
                    style: textTheme.bodySmall,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                const SizedBox(height: 4),
                Wrap(
                  spacing: 8,
                  children: [
                    if ((product.earnedBonuses ?? 0) > 0)
                      Text(
                        '+${product.earnedBonuses} б',
                        style: textTheme.bodySmall?.copyWith(
                          color: Colors.green,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    if ((product.spentBonuses ?? 0) > 0)
                      Text(
                        '-${product.spentBonuses} б',
                        style: textTheme.bodySmall?.copyWith(
                          color: colorScheme.error,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    if ((product.earnedChips ?? 0) > 0)
                      Text(
                        '+${product.earnedChips} ч',
                        style: textTheme.bodySmall?.copyWith(
                          color: colorScheme.tertiary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
