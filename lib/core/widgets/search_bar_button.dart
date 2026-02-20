import 'package:flutter/material.dart';
import 'package:mechta_flutter/l10n/app_localizations.dart';

class SearchBarButton extends StatelessWidget {
  final VoidCallback onTap;
  final String? text;

  const SearchBarButton({super.key, required this.onTap, this.text});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final l10n = AppLocalizations.of(context)!;
    final displayText = text ?? l10n.searchProducts;
    final hasText = text != null && text!.isNotEmpty;

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 48,
          decoration: BoxDecoration(
            color: colorScheme.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Icon(
                Icons.search,
                color: colorScheme.onSurfaceVariant,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  displayText,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: hasText
                            ? colorScheme.onSurface
                            : colorScheme.onSurfaceVariant,
                      ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
