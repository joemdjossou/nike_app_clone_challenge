import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nike_app_clone_challenge/core/app_export.dart';

class SideMenuScreen extends StatelessWidget {
  SideMenuScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: appTheme.blue700,
        body: SafeArea(
          child: Container(
            height: 764.v,
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 30.v),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 35.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse909,
                          height: 96.adaptSize,
                          width: 96.adaptSize,
                          radius: BorderRadius.circular(
                            48.h,
                          ),
                          margin: EdgeInsets.only(left: 1.h),
                        ),
                        SizedBox(height: 16.v),
                        Text(
                          "Emmanuel Oyiboke",
                          style: CustomTextStyles.titleLargePrimary,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 618.v,
                    width: 347.h,
                    margin: EdgeInsets.only(top: 19.v),
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding:
                                EdgeInsets.fromLTRB(5.h, 172.v, 52.h, 426.v),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 8.adaptSize,
                                      width: 8.adaptSize,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          4.h,
                                        ),
                                        border: Border.all(
                                          color: theme.colorScheme.primary,
                                          width: 1.h,
                                          strokeAlign: strokeAlignCenter,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 3.v),
                                    Container(
                                      height: 7.v,
                                      width: 14.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          7.h,
                                        ),
                                        border: Border.all(
                                          color: theme.colorScheme.primary,
                                          width: 1.h,
                                          strokeAlign: strokeAlignCenter,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 27.h),
                                  child: Text(
                                    "Profile",
                                    style: theme.textTheme.titleMedium,
                                  ),
                                ),
                                Spacer(),
                                CustomImageView(
                                  imagePath: ImageConstant.imgDirectionLeft,
                                  height: 11.v,
                                  width: 5.h,
                                  margin: EdgeInsets.symmetric(vertical: 3.v),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: 21.v,
                            width: 291.h,
                            margin: EdgeInsets.only(
                              left: 3.h,
                              top: 226.v,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgBag2,
                                  height: 1.adaptSize,
                                  width: 1.adaptSize,
                                  alignment: Alignment.topLeft,
                                  margin: EdgeInsets.only(
                                    left: 4.h,
                                    top: 9.v,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgVectorPrimary,
                                            height: 5.v,
                                            width: 9.h,
                                          ),
                                          SizedBox(
                                            height: 14.v,
                                            width: 17.h,
                                            child: Stack(
                                              alignment: Alignment.topRight,
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgGoogle,
                                                  height: 14.v,
                                                  width: 17.h,
                                                  alignment: Alignment.center,
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgBag2,
                                                  height: 1.adaptSize,
                                                  width: 1.adaptSize,
                                                  alignment: Alignment.topRight,
                                                  margin: EdgeInsets.only(
                                                    top: 3.v,
                                                    right: 4.h,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 25.h,
                                          top: 2.v,
                                        ),
                                        child: Text(
                                          "My Cart",
                                          style: theme.textTheme.titleMedium,
                                        ),
                                      ),
                                      Spacer(),
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgDirectionLeft,
                                        height: 11.v,
                                        width: 5.h,
                                        margin: EdgeInsets.only(
                                          top: 4.v,
                                          bottom: 5.v,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding:
                                EdgeInsets.fromLTRB(3.h, 278.v, 52.h, 320.v),
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgTwitter,
                                  height: 16.v,
                                  width: 18.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 25.h),
                                  child: Text(
                                    "Favorite",
                                    style: theme.textTheme.titleMedium,
                                  ),
                                ),
                                Spacer(),
                                CustomImageView(
                                  imagePath: ImageConstant.imgDirectionLeft,
                                  height: 11.v,
                                  width: 5.h,
                                  margin: EdgeInsets.symmetric(vertical: 3.v),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 328.v,
                              right: 52.h,
                              bottom: 266.v,
                            ),
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgFilter,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 22.h,
                                    top: 2.v,
                                    bottom: 2.v,
                                  ),
                                  child: Text(
                                    "Orders",
                                    style: theme.textTheme.titleMedium,
                                  ),
                                ),
                                Spacer(),
                                CustomImageView(
                                  imagePath: ImageConstant.imgDirectionLeft,
                                  height: 11.v,
                                  width: 5.h,
                                  margin: EdgeInsets.only(
                                    top: 9.v,
                                    bottom: 3.v,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        _buildNotification(context),
                        _buildSettings(context),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 5.h,
                              bottom: 68.v,
                            ),
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgGooglePrimary,
                                  height: 18.adaptSize,
                                  width: 18.adaptSize,
                                  margin: EdgeInsets.only(bottom: 2.v),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 25.h),
                                  child: Text(
                                    "Sign Out",
                                    style: theme.textTheme.titleMedium,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 118.v),
                            child: SizedBox(
                              width: 312.h,
                              child: Divider(
                                indent: 4.h,
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgHome1,
                          alignment: Alignment.centerRight,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNotification(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: EdgeInsets.fromLTRB(4.h, 382.v, 43.h, 212.v),
        child: Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgNotification,
              height: 20.v,
              width: 16.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 26.h,
                top: 2.v,
                bottom: 2.v,
              ),
              child: Text(
                "Notifications",
                style: theme.textTheme.titleMedium,
              ),
            ),
            Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgBackArrow,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSettings(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: EdgeInsets.fromLTRB(3.h, 436.v, 43.h, 158.v),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgSettings,
              height: 18.adaptSize,
              width: 18.adaptSize,
              margin: EdgeInsets.only(bottom: 4.v),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 25.h,
                top: 4.v,
              ),
              child: Text(
                "Settings",
                style: theme.textTheme.titleMedium,
              ),
            ),
            Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgBackArrow,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ],
        ),
      ),
    );
  }
}
