import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nike_app_clone_challenge/core/app_export.dart';
import 'package:nike_app_clone_challenge/presentation/favourite_page/favourite_page.dart';
import 'package:nike_app_clone_challenge/presentation/home_page/home_page.dart';
import 'package:nike_app_clone_challenge/presentation/notifications_screen/notifications_screen.dart';
import 'package:nike_app_clone_challenge/presentation/profile_page/profile_page.dart';
import 'package:nike_app_clone_challenge/widgets/custom_bottom_app_bar.dart';

// ignore_for_file: must_be_immutable
class HomeContainerScreen extends StatelessWidget {
  HomeContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
          body: SafeArea(
            child: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.homePage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 1))),
          ),
          bottomNavigationBar: _buildBottomAppBar(context),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked),
    );
  }

  /// Section Widget
  Widget _buildBottomAppBar(BuildContext context) {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Solarhome2bold:
        return AppRoutes.homePage;
      case BottomBarEnum.Hearticon:
        return AppRoutes.favouritePage;
      case BottomBarEnum.Notificationicongray600:
        return AppRoutes.notificationsScreen;
      case BottomBarEnum.Vuesaxoutlineframe:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.favouritePage:
        return FavouritePage();
      case AppRoutes.notificationsScreen:
        return NotificationsScreen();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
