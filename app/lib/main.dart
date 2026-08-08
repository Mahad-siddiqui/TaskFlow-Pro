import 'package:flutter/material.dart';
import 'core/constants/route_constants.dart';
import 'config/app_routes.dart';
import 'core/themes/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TaskFlow-Pro',
      theme: AppTheme.darkTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,

      //1  Use Route Constants for initial route
      initialRoute: RouteConstants.splash,

      // Use AppRoutes for route definitions
      routes: AppRoutes.getRoutes(),

      // Use AppRoutes for dynamic route generation
      onGenerateRoute: AppRoutes.onGenerateRoute,

      // Use AppRoutes for route guards
      // onGenerateInitialRoutes: (String initialRouteName) {
      //   // Check if user can navigate
      //   AppRoutes.canNavigateTo(initialRouteName).then((canNavigate) {
      //     if (!canNavigate) {
      //       // Redirect to login
      //       return [MaterialPageRoute(builder: (_) => const LoginScreen())];
      //     }
      //     return null;
      //   });
      //   return null;
      // },
      debugShowCheckedModeBanner: false,
    );
  }
}
