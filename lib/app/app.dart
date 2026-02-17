import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mechta_flutter/app/di.dart';
import 'package:mechta_flutter/app/locale_bloc.dart';
import 'package:mechta_flutter/core/router/app_router.dart';
import 'package:mechta_flutter/core/theme/app_theme.dart';
import 'package:mechta_flutter/l10n/app_localizations.dart';

class MechtaApp extends StatefulWidget {
  const MechtaApp({super.key});

  @override
  State<MechtaApp> createState() => _MechtaAppState();
}

class _MechtaAppState extends State<MechtaApp> {
  late final GoRouter _router = createAppRouter();

  @override
  void dispose() {
    _router.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LocaleBloc(prefs: sl()),
      child: BlocBuilder<LocaleBloc, LocaleState>(
        builder: (context, localeState) {
          return MaterialApp.router(
            title: 'Mechta',
            theme: AppTheme.light,
            darkTheme: AppTheme.dark,
            themeMode: ThemeMode.system,
            routerConfig: _router,
            debugShowCheckedModeBanner: false,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            locale: localeState.locale,
          );
        },
      ),
    );
  }
}
