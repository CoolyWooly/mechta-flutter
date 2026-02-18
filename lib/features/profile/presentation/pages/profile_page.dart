import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechta_flutter/app/app_restart.dart';
import 'package:mechta_flutter/app/di.dart';
import 'package:mechta_flutter/core/usecase/usecase.dart';
import 'package:mechta_flutter/features/auth/presentation/widgets/auth_bottom_sheet.dart';
import 'package:mechta_flutter/features/city/domain/entities/city_entity.dart';
import 'package:mechta_flutter/features/city/domain/usecases/get_selected_city.dart';
import 'package:mechta_flutter/features/city/presentation/widgets/city_bottom_sheet.dart';
import 'package:mechta_flutter/app/locale_bloc.dart';
import 'package:mechta_flutter/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:mechta_flutter/l10n/app_localizations.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<ProfileBloc>()..add(const ProfileLoadRequested()),
      child: const _ProfileView(),
    );
  }
}

class _ProfileView extends StatelessWidget {
  const _ProfileView();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.profile)),
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return switch (state.status) {
            ProfileStatus.initial || ProfileStatus.loading => const Center(
                child: CircularProgressIndicator(),
              ),
            ProfileStatus.failure => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(state.errorMessage ?? l10n.loadingError),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () => context
                          .read<ProfileBloc>()
                          .add(const ProfileLoadRequested()),
                      child: Text(l10n.retry),
                    ),
                  ],
                ),
              ),
            ProfileStatus.success => state.profile?.isAuthenticated == true
                ? _AuthenticatedBody(state: state)
                : _UnauthenticatedBody(),
          };
        },
      ),
    );
  }
}

class _AuthenticatedBody extends StatelessWidget {
  final ProfileState state;

  const _AuthenticatedBody({required this.state});

  @override
  Widget build(BuildContext context) {
    final profile = state.profile!;
    final colorScheme = Theme.of(context).colorScheme;
    final l10n = AppLocalizations.of(context)!;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        CircleAvatar(
          radius: 40,
          child: Text(
            profile.fullName?.substring(0, 1).toUpperCase() ??
                profile.phone?.substring(0, 1) ??
                'U',
            style: const TextStyle(fontSize: 32),
          ),
        ),
        const SizedBox(height: 16),
        if (profile.fullName != null)
          Text(
            profile.fullName!,
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
        if (profile.email != null)
          Text(
            profile.email!,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        if (profile.phone != null)
          Text(
            profile.phone!,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        const SizedBox(height: 24),
        const _LanguageTile(),
        const SizedBox(height: 12),
        const _CityTile(),
        const SizedBox(height: 12),
        ListTile(
          leading: Icon(Icons.logout, color: colorScheme.error),
          title: Text(
            l10n.logout,
            style: TextStyle(color: colorScheme.error),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          tileColor: colorScheme.surfaceContainerHighest,
          onTap: () {
            showDialog(
              context: context,
              builder: (dialogContext) => AlertDialog(
                title: Text(l10n.logoutConfirmTitle),
                content: Text(l10n.logoutConfirmMessage),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(dialogContext),
                    child: Text(l10n.cancel),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(dialogContext);
                      context
                          .read<ProfileBloc>()
                          .add(const ProfileLogoutRequested());
                    },
                    child: Text(
                      l10n.logoutAction,
                      style: TextStyle(color: colorScheme.error),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}

class _UnauthenticatedBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              _LanguageTile(),
              SizedBox(height: 12),
              _CityTile(),
            ],
          ),
        ),
        Expanded(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.person_outline, size: 64, color: Colors.grey),
                const SizedBox(height: 16),
                Text(
                  AppLocalizations.of(context)!.signInPrompt,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (_) => AuthBottomSheet(
                        onSuccess: () {
                          context
                              .read<ProfileBloc>()
                              .add(const ProfileFetchRequested());
                        },
                      ),
                    );
                  },
                  child: Text(AppLocalizations.of(context)!.signIn),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _CityTile extends StatelessWidget {
  const _CityTile();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<CityEntity?>(
      future: sl<GetSelectedCityUseCase>()(NoParams()),
      builder: (context, snapshot) {
        final l10n = AppLocalizations.of(context)!;
        final cityName = snapshot.data?.name ?? l10n.selectCity;
        return ListTile(
          leading: const Icon(Icons.location_city),
          title: Text(l10n.city),
          subtitle: Text(cityName),
          trailing: const Icon(Icons.chevron_right),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          tileColor: Theme.of(context).colorScheme.surfaceContainerHighest,
          onTap: () => showCityBottomSheet(context),
        );
      },
    );
  }
}

class _LanguageTile extends StatelessWidget {
  const _LanguageTile();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final currentLocale = Localizations.localeOf(context);
    final langName = currentLocale.languageCode == 'kk' ? l10n.kazakh : l10n.russian;

    return ListTile(
      leading: const Icon(Icons.language),
      title: Text(l10n.language),
      subtitle: Text(langName),
      trailing: const Icon(Icons.chevron_right),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      tileColor: Theme.of(context).colorScheme.surfaceContainerHighest,
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (bottomSheetContext) {
            return SafeArea(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      l10n.language,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  const Divider(height: 1),
                  ListTile(
                    title: Text(l10n.russian),
                    trailing: currentLocale.languageCode == 'ru'
                        ? Icon(Icons.check, color: Theme.of(context).primaryColor)
                        : null,
                    onTap: () {
                      context.read<LocaleBloc>().add(LocaleChanged(const Locale('ru')));
                      Navigator.pop(bottomSheetContext);
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        AppRestart.restart(context);
                      });
                    },
                  ),
                  ListTile(
                    title: Text(l10n.kazakh),
                    trailing: currentLocale.languageCode == 'kk'
                        ? Icon(Icons.check, color: Theme.of(context).primaryColor)
                        : null,
                    onTap: () {
                      context.read<LocaleBloc>().add(LocaleChanged(const Locale('kk')));
                      Navigator.pop(bottomSheetContext);
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        AppRestart.restart(context);
                      });
                    },
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
