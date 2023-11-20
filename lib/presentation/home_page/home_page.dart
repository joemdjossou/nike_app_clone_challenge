import 'package:flutter/material.dart';
import 'package:nike_app_clone_challenge/core/app_export.dart';
import 'package:nike_app_clone_challenge/widgets/app_bar/appbar_leading_image.dart';
import 'package:nike_app_clone_challenge/widgets/app_bar/appbar_title.dart';
import 'package:nike_app_clone_challenge/widgets/app_bar/appbar_title_image.dart';
import 'package:nike_app_clone_challenge/widgets/app_bar/appbar_trailing_image.dart';
import 'package:nike_app_clone_challenge/widgets/app_bar/custom_app_bar.dart';
import 'package:nike_app_clone_challenge/widgets/custom_elevated_button.dart';
import 'package:nike_app_clone_challenge/widgets/custom_icon_button.dart';
import 'package:nike_app_clone_challenge/widgets/custom_search_view.dart';

import '../home_page/widgets/fifteen_item_widget.dart';
import '../home_page/widgets/homelist_item_widget.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SafeArea(
          child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 19.v),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildSearchRow(context),
                    SizedBox(height: 25.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 20.h),
                            child: Text("Select Category",
                                style: CustomTextStyles
                                    .titleMediumOnSecondaryContainer))),
                    SizedBox(height: 14.v),
                    _buildTabRow(context),
                    SizedBox(height: 26.v),
                    _buildFrameRow(context),
                    SizedBox(height: 16.v),
                    _buildHomeList(context),
                    SizedBox(height: 23.v),
                    _buildFrameRow1(context),
                    SizedBox(height: 1.v),
                    _buildFiftyNineStack(context)
                  ])),
        ));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 43.v,
        leadingWidth: 45.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgHamburger,
            margin: EdgeInsets.only(left: 20.h, top: 13.v, bottom: 11.v),
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.notificationsScreen);
            }),
        centerTitle: true,
        title: SizedBox(
            height: 42.759995.v,
            width: 135.70999.h,
            child: Stack(alignment: Alignment.bottomCenter, children: [
              AppbarTitleImage(
                  imagePath: ImageConstant.imgHighlight05,
                  margin: EdgeInsets.only(right: 117.h, bottom: 29.v)),
              AppbarTitle(
                  text: "Explore",
                  margin: EdgeInsets.only(left: 17.h, top: 4.v))
            ])),
        actions: [
          AppbarTrailingImage(
            imagePath: ImageConstant.imgGroup27,
            margin: EdgeInsets.symmetric(horizontal: 20.h),
          ),
        ]);
  }

  /// Section Widget
  Widget _buildSearchRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: CustomSearchView(
                  controller: searchController, hintText: "Looking for shoes")),
          Padding(
              padding: EdgeInsets.only(left: 14.h),
              child: CustomIconButton(
                  height: 52.adaptSize,
                  width: 52.adaptSize,
                  padding: EdgeInsets.all(14.h),
                  decoration: IconButtonStyleHelper.outlineBlack,
                  child: CustomImageView(imagePath: ImageConstant.imgSliders)))
        ]));
  }

  /// Section Widget
  Widget _buildTabRow(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20.h),
            child: IntrinsicWidth(
                child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Wrap(
                          runSpacing: 16.v,
                          spacing: 16.h,
                          children: List<Widget>.generate(4, (index) => FifteenItemWidget(),
                          ),
                      ),
                      // CustomElevatedButton(
                      //     width: 108.h,
                      //     text: "Running",
                      //     margin: EdgeInsets.only(left: 16.h),
                      // ),
                      ],
                    ),
            ),
        ),
    );
  }

  /// Section Widget
  Widget _buildFrameRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Text("Popular Shoes",
                  style: CustomTextStyles.titleMediumOnSecondaryContainer_1)),
          Padding(
              padding: EdgeInsets.only(bottom: 2.v),
              child: Text("See all", style: theme.textTheme.labelLarge))
        ]));
  }

  /// Section Widget
  Widget _buildHomeList(BuildContext context) {
    return SizedBox(
        height: 201.v,
        child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 20.h);
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return HomelistItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildFrameRow1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("New Arrivals",
              style: CustomTextStyles.titleMediumOnSecondaryContainer),
          Text("See all", style: theme.textTheme.labelLarge)
        ]));
  }

  /// Section Widget
  Widget _buildFiftyNineStack(BuildContext context) {
    return SizedBox(
        height: 111.v,
        width: 335.h,
        child: Stack(alignment: Alignment.topRight, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  margin: EdgeInsets.only(top: 20.v),
                  padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 4.v),
                  decoration: AppDecoration.fillPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 75.v,
                            width: 145.h,
                            margin: EdgeInsets.only(bottom: 11.v),
                            child:
                                Stack(alignment: Alignment.topRight, children: [
                              Align(
                                  alignment: Alignment.bottomRight,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Summer Sale",
                                            style: CustomTextStyles
                                                .labelLargeRalewayGray800),
                                        Padding(
                                            padding: EdgeInsets.only(left: 3.h),
                                            child: Text(
                                              "15% OFF",
                                              style:
                                                  theme.textTheme.displaySmall,
                                            ))
                                      ])),
                              CustomImageView(
                                  imagePath: ImageConstant.imgVector,
                                  height: 16.v,
                                  width: 15.h,
                                  alignment: Alignment.topRight,
                                  margin: EdgeInsets.only(right: 7.h)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgVectorBlack900,
                                  height: 16.v,
                                  width: 15.h,
                                  alignment: Alignment.bottomLeft,
                                  margin: EdgeInsets.only(bottom: 3.v))
                            ])),
                        CustomImageView(
                            imagePath: ImageConstant.imgVectorBlueGray400,
                            height: 16.v,
                            width: 15.h,
                            margin: EdgeInsets.only(
                                left: 5.h, top: 62.v, bottom: 8.v)),
                        Spacer(),
                        Container(
                            height: 6.v,
                            width: 82.h,
                            margin: EdgeInsets.only(top: 77.v, bottom: 4.v),
                            decoration: BoxDecoration(
                                color: appTheme.black9004c,
                                borderRadius: BorderRadius.circular(41.h))),
                        CustomImageView(
                            imagePath: ImageConstant.imgVectorBlueGray400,
                            height: 16.v,
                            width: 15.h,
                            margin: EdgeInsets.fromLTRB(13.h, 11.v, 1.h, 59.v))
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgNikeZoomMocThe10th1,
              height: 103.v,
              width: 114.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(right: 29.h)),
          CustomImageView(
              imagePath: ImageConstant.imgMisc06,
              height: 27.adaptSize,
              width: 27.adaptSize,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 32.v, right: 131.h))
        ]));
  }

  /// Navigates to the sideMenuScreen when the action is triggered.
  onTapHamburger(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sideMenuScreen);
  }
}
