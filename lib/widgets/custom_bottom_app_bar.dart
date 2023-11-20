import 'package:flutter/material.dart';
import 'package:nike_app_clone_challenge/core/app_export.dart';

class CustomBottomAppBar extends StatefulWidget {
  CustomBottomAppBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomAppBarState createState() => CustomBottomAppBarState();
}

class CustomBottomAppBarState extends State<CustomBottomAppBar> {
  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
        icon: ImageConstant.imgSolarHome2Bold,
        activeIcon: ImageConstant.imgSolarHome2Bold,
        type: BottomBarEnum.Solarhome2bold,
        isSelected: true),
    BottomMenuModel(
      icon: ImageConstant.imgHeartIcon,
      activeIcon: ImageConstant.imgHeartIcon,
      type: BottomBarEnum.Hearticon,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNotificationIconGray600,
      activeIcon: ImageConstant.imgNotificationIconGray600,
      type: BottomBarEnum.Notificationicongray600,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgVuesaxOutlineFrame,
      activeIcon: ImageConstant.imgVuesaxOutlineFrame,
      type: BottomBarEnum.Vuesaxoutlineframe,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: SizedBox(
        height: 106.v,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            bottomMenuList.length,
            (index) {
              return InkWell(
                onTap: () {
                  for (var element in bottomMenuList) {
                    element.isSelected = false;
                  }
                  bottomMenuList[index].isSelected = true;
                  widget.onChanged?.call(bottomMenuList[index].type);
                  setState(() {});
                },
                child: bottomMenuList[index].isSelected
                    ? CustomImageView(
                        imagePath: bottomMenuList[index].activeIcon,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        color: appTheme.blueA400,
                      )
                    : CustomImageView(
                        imagePath: bottomMenuList[index].icon,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        color: appTheme.gray600,
                      ),
              );
            },
          ),
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Solarhome2bold,
  Hearticon,
  Notificationicongray600,
  Vuesaxoutlineframe,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
    this.isSelected = false,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;

  bool isSelected;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
