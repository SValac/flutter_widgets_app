import 'package:flutter/material.dart';
import 'package:widgets_app/config/router/app_router.dart';

import 'config/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flitter Widgets',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 7).getTheme(),

      // home: const HomeScreen(), When using initialRoute, don't define a home property.
    );
  }
}
