import 'package:flutter/material.dart';
import 'package:mechta_flutter/core/widgets/product_card.dart';
import 'package:mechta_flutter/core/widgets/skeleton.dart';

class ProductCardSkeleton extends StatelessWidget {
  final ProductCardViewMode mode;

  const ProductCardSkeleton({
    super.key,
    this.mode = ProductCardViewMode.vertical,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    
    return Material(
      color: colorScheme.surfaceContainerLow,
      borderRadius: BorderRadius.circular(12),
      clipBehavior: Clip.antiAlias,
      child: mode == ProductCardViewMode.vertical
          ? _buildVerticalLayout()
          : _buildHorizontalLayout(),
    );
  }

  Widget _buildVerticalLayout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(
          flex: 5,
          child: Skeleton(
            borderRadius: BorderRadius.zero,
            width: double.infinity,
          ),
        ),
        Expanded(
          flex: 6,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                const Skeleton(width: 60, height: 14),
                const SizedBox(height: 8),
                const Skeleton(width: double.infinity, height: 14),
                const SizedBox(height: 4),
                const Skeleton(width: 100, height: 14),
                const Spacer(),
                const Skeleton(width: 80, height: 20),
                const SizedBox(height: 12),
                Skeleton(width: double.infinity, height: 36, borderRadius: BorderRadius.circular(8)),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildHorizontalLayout() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(
          width: 140,
          child: Skeleton(
            borderRadius: BorderRadius.zero,
            width: double.infinity,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Skeleton(width: 60, height: 14),
                const SizedBox(height: 8),
                const Skeleton(width: double.infinity, height: 14),
                const SizedBox(height: 4),
                const Skeleton(width: 120, height: 14),
                const Spacer(),
                const Skeleton(width: 80, height: 20),
                const SizedBox(height: 12),
                Skeleton(width: double.infinity, height: 36, borderRadius: BorderRadius.circular(8)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
