import 'package:flutter/material.dart';
import 'package:mechta_flutter/core/router/app_router.dart';
import 'package:mechta_flutter/core/theme/app_theme.dart';

class MechtaApp extends StatelessWidget {
  const MechtaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Mechta',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
    );
  }
}
