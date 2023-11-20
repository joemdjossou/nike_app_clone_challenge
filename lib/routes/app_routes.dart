import 'package:flutter/material.dart';
import 'package:nike_app_clone_challenge/presentation/nike_screen/nike_screen.dart';
import 'package:nike_app_clone_challenge/presentation/home_container_screen/home_container_screen.dart';
import 'package:nike_app_clone_challenge/presentation/details_screen/details_screen.dart';
import 'package:nike_app_clone_challenge/presentation/side_menu_screen/side_menu_screen.dart';
import 'package:nike_app_clone_challenge/presentation/notifications_screen/notifications_screen.dart';
import 'package:nike_app_clone_challenge/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String nikeScreen = '/nike_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String favouritePage = '/favourite_page';

  static const String detailsScreen = '/details_screen';

  static const String sideMenuScreen = '/side_menu_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String profilePage = '/profile_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    nikeScreen: (context) => NikeScreen(),
    homeContainerScreen: (context) => HomeContainerScreen(),
    detailsScreen: (context) => DetailsScreen(),
    sideMenuScreen: (context) => SideMenuScreen(),
    notificationsScreen: (context) => NotificationsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
