import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechta_flutter/app/app_restart.dart';
import 'package:mechta_flutter/app/di.dart';
import 'package:mechta_flutter/features/city/domain/entities/city_entity.dart';
import 'package:mechta_flutter/features/city/presentation/bloc/city_bloc.dart';
import 'package:mechta_flutter/l10n/app_localizations.dart';

class CityBottomSheet extends StatelessWidget {
  final Function(CityEntity)? onCitySelected;

  const CityBottomSheet({super.key, this.onCitySelected});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<CityBloc>()..add(const CityLoadRequested()),
      child: _CityBottomSheetView(onCitySelected: onCitySelected),
    );
  }
}

class _CityBottomSheetView extends StatelessWidget {
  final Function(CityEntity)? onCitySelected;

  const _CityBottomSheetView({this.onCitySelected});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CityBloc, CityState>(
      builder: (context, state) {
        return DraggableScrollableSheet(
          initialChildSize: 0.6,
          minChildSize: 0.3,
          maxChildSize: 0.9,
          expand: false,
          builder: (context, scrollController) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    AppLocalizations.of(context)!.selectCity,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                const Divider(height: 1),
                Expanded(
                  child: _buildContent(context, state, scrollController),
                ),
              ],
            );
          },
        );
      },
    );
  }

  Widget _buildContent(
    BuildContext context,
    CityState state,
    ScrollController scrollController,
  ) {
    return switch (state.status) {
      CityStatus.initial || CityStatus.loading => const Center(
          child: CircularProgressIndicator(),
        ),
      CityStatus.failure => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(state.errorMessage ?? AppLocalizations.of(context)!.loadingError),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => context
                    .read<CityBloc>()
                    .add(const CityLoadRequested()),
                child: Text(AppLocalizations.of(context)!.retry),
              ),
            ],
          ),
        ),
      CityStatus.success => ListView.builder(
          controller: scrollController,
          itemCount: state.cities.length,
          itemBuilder: (context, index) {
            final city = state.cities[index];
            final isSelected = state.selectedCity?.code == city.code;
            return ListTile(
              title: Text(city.name),
              trailing: isSelected
                  ? Icon(Icons.check, color: Theme.of(context).primaryColor)
                  : null,
              onTap: () {
                context.read<CityBloc>().add(CitySelected(city));
                onCitySelected?.call(city);
                Navigator.of(context).pop();
              },
            );
          },
        ),
    };
  }
}

void showCityBottomSheet(BuildContext context) {
  final outerContext = context;
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (_) => CityBottomSheet(
      onCitySelected: (_) {
        // Restart app after bottom sheet is dismissed to refresh all pages
        WidgetsBinding.instance.addPostFrameCallback((_) {
          AppRestart.restart(outerContext);
        });
      },
    ),
  );
}
