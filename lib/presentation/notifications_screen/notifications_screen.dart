import '../notifications_screen/widgets/notificationssection_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:nike_app_clone_challenge/core/app_export.dart';
import 'package:nike_app_clone_challenge/presentation/favourite_page/favourite_page.dart';
import 'package:nike_app_clone_challenge/presentation/home_page/home_page.dart';
import 'package:nike_app_clone_challenge/presentation/profile_page/profile_page.dart';
import 'package:nike_app_clone_challenge/widgets/custom_bottom_app_bar.dart';

class NotificationsScreen extends StatelessWidget {
  NotificationsScreen({Key? key})
      : super(
          key: key,
        );

  List notificationssectionItemList = [
    {'id': 1, 'groupBy': "Recent"},
    {'id': 2, 'groupBy': "Recent"},
    {'id': 3, 'groupBy': "Yesterday"},
    {'id': 4, 'groupBy': "Yesterday"}
  ];

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 7.v,
          ),
          child: Column(
            children: [
              Text(
                "Notifications",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 28.v),
              _buildNotificationsSection(context),
              SizedBox(height: 78.v),
            ],
          ),
        ),
        // bottomNavigationBar: _buildBottomAppBarSection(context),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  /// Section Widget
  Widget _buildNotificationsSection(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 2.h),
        child: GroupedListView<dynamic, String>(
          shrinkWrap: true,
          stickyHeaderBackgroundColor: Colors.transparent,
          elements: notificationssectionItemList,
          groupBy: (element) => element['groupBy'],
          sort: false,
          groupSeparatorBuilder: (String value) {
            return Padding(
              padding: EdgeInsets.only(
                top: 1.v,
                bottom: 1.v,
              ),
              child: Text(
                value,
                style: CustomTextStyles.titleMediumOnSecondaryContainerSemiBold.copyWith(
                  color: theme.colorScheme.onSecondaryContainer,
                ),
              ),
            );
          },
          itemBuilder: (context, model) {
            return NotificationssectionItemWidget();
          },
          separator: SizedBox(
            height: 12.v,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomAppBarSection(BuildContext context) {
    return CustomBottomAppBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Solarhome2bold:
        return AppRoutes.homePage;
      case BottomBarEnum.Hearticon:
        return AppRoutes.favouritePage;
      case BottomBarEnum.Notificationicongray600:
        return AppRoutes.profilePage;
      case BottomBarEnum.Vuesaxoutlineframe:
        return "/";
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
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
