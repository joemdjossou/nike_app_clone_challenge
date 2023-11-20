import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nike_app_clone_challenge/routes/app_routes.dart';
import 'package:nike_app_clone_challenge/theme/theme_helper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'nike_app_clone_challenge',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.nikeScreen,
      routes: AppRoutes.routes,
    );
  }
}
