import 'package:flutter/material.dart';
import 'package:mechta_flutter/app/app.dart';
import 'package:mechta_flutter/app/app_restart.dart';
import 'package:mechta_flutter/app/di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const AppRestart(child: MechtaApp()));
}
