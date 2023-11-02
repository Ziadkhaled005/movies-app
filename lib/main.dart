import 'package:flutter/material.dart';
import 'package:moviesapp/shared/style/theme/app_theme.dart';
import 'package:moviesapp/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      darkTheme: AppTheme.darkTheme,
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
      },
    );
  }
}
