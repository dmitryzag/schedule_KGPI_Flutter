import 'package:flutter/material.dart';
import 'package:schedule/router/router.dart';
import 'package:schedule/theme/theme.dart';

class ScheduleApp extends StatefulWidget {
  const ScheduleApp({super.key});

  @override
  State<ScheduleApp> createState() => _ScheduleAppState();
}

class _ScheduleAppState extends State<ScheduleApp> {
  final _router = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Schedule App',
      theme: themeApp,
      routerConfig: _router.config(),
    );
  }
}
