import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mechta_flutter/app/di.dart';
import 'package:mechta_flutter/features/filter/domain/entities/filter_entity.dart';
import 'package:mechta_flutter/features/filter/presentation/bloc/filter_bloc.dart';

class FilterPage extends StatelessWidget {
  final String slug;
  final Map<String, List<String>>? initialProperties;
  final double? initialMinPrice;
  final double? initialMaxPrice;

  const FilterPage({
    super.key,
    required this.slug,
    this.initialProperties,
    this.initialMinPrice,
    this.initialMaxPrice,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<FilterBloc>()
        ..add(FilterLoadRequested(
          slug: slug,
          initialProperties: initialProperties,
          initialMinPrice: initialMinPrice,
          initialMaxPrice: initialMaxPrice,
        )),
      child: const _FilterView(),
    );
  }
}

class _FilterView extends StatelessWidget {
  const _FilterView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Фильтры'),
        actions: [
          BlocSelector<FilterBloc, FilterState, int>(
            selector: (state) => state.activeFilterCount,
            builder: (context, count) {
              return TextButton(
                onPressed: count > 0
                    ? () => context.read<FilterBloc>().add(const FilterReset())
                    : null,
                child: const Text('Сбросить'),
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<FilterBloc, FilterState>(
        builder: (context, state) {
          if (state.status == FilterStatus.initial) {
            return const Center(child: CircularProgressIndicator());
          }
          return _FilterBody(state: state);
        },
      ),
      bottomNavigationBar: _ApplyButton(),
    );
  }
}

class _FilterBody extends StatelessWidget {
  final FilterState state;

  const _FilterBody({required this.state});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(bottom: 16),
      children: [
        _PriceRangeSection(state: state),
        ...state.properties.map(
          (property) => _PropertySection(
            property: property,
            state: state,
          ),
        ),
      ],
    );
  }
}

class _PriceRangeSection extends StatefulWidget {
  final FilterState state;

  const _PriceRangeSection({required this.state});

  @override
  State<_PriceRangeSection> createState() => _PriceRangeSectionState();
}

class _PriceRangeSectionState extends State<_PriceRangeSection> {
  late final TextEditingController _minController;
  late final TextEditingController _maxController;

  @override
  void initState() {
    super.initState();
    _minController = TextEditingController(
      text: widget.state.selectedMinPrice?.toStringAsFixed(0) ?? '',
    );
    _maxController = TextEditingController(
      text: widget.state.selectedMaxPrice?.toStringAsFixed(0) ?? '',
    );
  }

  @override
  void dispose() {
    _minController.dispose();
    _maxController.dispose();
    super.dispose();
  }

  void _onMinChanged(String value) {
    final price = double.tryParse(value);
    context.read<FilterBloc>().add(FilterMinPriceChanged(price));
  }

  void _onMaxChanged(String value) {
    final price = double.tryParse(value);
    context.read<FilterBloc>().add(FilterMaxPriceChanged(price));
  }

  @override
  Widget build(BuildContext context) {
    final priceRange = widget.state.priceRange;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 20, 16, 12),
          child: Text(
            'Цена',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _minController,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: InputDecoration(
                    labelText: 'От',
                    hintText: priceRange?.minPrice?.toString() ?? '0',
                    suffixText: '₸',
                    border: const OutlineInputBorder(),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 12,
                    ),
                  ),
                  onChanged: _onMinChanged,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: TextField(
                  controller: _maxController,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: InputDecoration(
                    labelText: 'До',
                    hintText: priceRange?.maxPrice?.toString() ?? '',
                    suffixText: '₸',
                    border: const OutlineInputBorder(),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 12,
                    ),
                  ),
                  onChanged: _onMaxChanged,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        const Divider(height: 32),
      ],
    );
  }
}

class _PropertySection extends StatefulWidget {
  final FilterPropertyEntity property;
  final FilterState state;

  const _PropertySection({
    required this.property,
    required this.state,
  });

  @override
  State<_PropertySection> createState() => _PropertySectionState();
}

class _PropertySectionState extends State<_PropertySection> {
  bool _expanded = true;

  @override
  Widget build(BuildContext context) {
    final selectedCount =
        widget.state.selectedProperties[widget.property.slug]?.length ?? 0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () => setState(() => _expanded = !_expanded),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        widget.property.name,
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                      if (selectedCount > 0) ...[
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(
                            color:
                                Theme.of(context).colorScheme.primaryContainer,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            '$selectedCount',
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
                Icon(
                  _expanded ? Icons.expand_less : Icons.expand_more,
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ],
            ),
          ),
        ),
        if (_expanded)
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: widget.property.items.map((item) {
                final isSelected = widget.state.isPropertySelected(
                  widget.property.slug,
                  item.slug,
                );
                return FilterChip(
                  label: Text('${item.value} (${item.count})'),
                  selected: isSelected,
                  onSelected: (_) {
                    context.read<FilterBloc>().add(FilterPropertyToggled(
                          propertySlug: widget.property.slug,
                          itemSlug: item.slug,
                        ));
                  },
                );
              }).toList(),
            ),
          ),
        const Divider(height: 1),
      ],
    );
  }
}

class _ApplyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterBloc, FilterState>(
      builder: (context, state) {
        final isLoading = state.status == FilterStatus.loading;
        final count = state.totalCount;

        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: FilledButton(
              onPressed: isLoading
                  ? null
                  : () => context.pop(state.toResult()),
              child: isLoading
                  ? const SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : Text('Показать $count товаров'),
            ),
          ),
        );
      },
    );
  }
}
