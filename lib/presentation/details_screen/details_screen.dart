import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:nike_app_clone_challenge/core/app_export.dart';
import 'package:nike_app_clone_challenge/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:nike_app_clone_challenge/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:nike_app_clone_challenge/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:nike_app_clone_challenge/widgets/app_bar/custom_app_bar.dart';
import 'package:nike_app_clone_challenge/widgets/custom_elevated_button.dart';
import 'package:nike_app_clone_challenge/widgets/custom_icon_button.dart';
import 'package:readmore/readmore.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
          body: SafeArea(
              child: Column(children: [
                SizedBox(
                    height: 560.v,
                    width: double.maxFinite,
                    child:
                        Stack(alignment: Alignment.bottomCenter, children: [
                      _buildShoeShadowSlider(context),
                      _buildSeventyRow(context),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 20.h, top: 69.v),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                        width: 204.h,
                                        child: Text(
                                            "Nike Air Max 270 Essential",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: theme
                                                .textTheme.headlineMedium)),
                                    SizedBox(height: 7.v),
                                    Text("Men’s Shoes",
                                        style: CustomTextStyles
                                            .titleMediumGray600_1),
                                    SizedBox(height: 7.v),
                                    Text("179.39",
                                        style: theme.textTheme.headlineSmall)
                                  ]))),
                      CustomImageView(
                          imagePath: ImageConstant.imgHeroImage,
                          height: 417.v,
                          width: 375.h,
                          alignment: Alignment.center),
                      _buildAppBar(context)
                    ])),
                _buildEightyColumn(context)
              ]))),
    );
  }

  /// Section Widget
  Widget _buildShoeShadowSlider(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            height: 199.v,
            width: 352.h,
            margin: EdgeInsets.only(bottom: 11.v),
            child: Stack(alignment: Alignment.topCenter, children: [
              // Align(
              //     alignment: Alignment.topRight,
              //     child: Container(
              //         height: 61.v,
              //         width: 240.h,
              //         margin: EdgeInsets.only(right: 35.h),
              //         decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(120.h),
              //             gradient: LinearGradient(
              //                 begin: Alignment(0.94, 0.5),
              //                 end: Alignment(0, 0.5),
              //                 colors: [
              //                   appTheme.black900.withOpacity(0.8),
              //                   appTheme.black900.withOpacity(0.8)
              //                 ])))),
              CustomImageView(
                  imagePath: ImageConstant.imgSlider,
                  height: 77.v,
                  width: 352.h,
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 23.v))
            ])));
  }

  /// Section Widget
  Widget _buildSeventyRow(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 81.h),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                      height: 73.v,
                      width: 74.h,
                      padding:
                          EdgeInsets.symmetric(horizontal: 7.h, vertical: 6.v),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(ImageConstant.imgGroup71),
                              fit: BoxFit.cover)),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgRectangle795,
                          height: 56.adaptSize,
                          width: 56.adaptSize,
                          radius: BorderRadius.circular(16.h),
                          alignment: Alignment.topRight)),
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup139,
                      height: 56.adaptSize,
                      width: 56.adaptSize,
                      margin: EdgeInsets.only(top: 6.v, bottom: 11.v)),
                  Container(
                      height: 56.adaptSize,
                      width: 56.adaptSize,
                      margin:
                          EdgeInsets.only(left: 14.h, top: 6.v, bottom: 11.v),
                      padding:
                          EdgeInsets.symmetric(horizontal: 2.h, vertical: 6.v),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder16,
                          image: DecorationImage(
                              image: fs.Svg(ImageConstant.imgRectangle795),
                              fit: BoxFit.cover)),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgNikeAh805011042x50,
                          height: 42.v,
                          width: 50.h,
                          alignment: Alignment.center)),
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup141,
                      height: 56.adaptSize,
                      width: 56.adaptSize,
                      margin:
                          EdgeInsets.only(left: 14.h, top: 6.v, bottom: 11.v)),
                  Container(
                      height: 57.v,
                      width: 58.h,
                      margin:
                          EdgeInsets.only(left: 13.h, top: 5.v, bottom: 10.v),
                      child: Stack(alignment: Alignment.center, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle795,
                            height: 56.adaptSize,
                            width: 56.adaptSize,
                            radius: BorderRadius.circular(16.h),
                            alignment: Alignment.center),
                        CustomImageView(
                            imagePath: ImageConstant.imgNikeShoe,
                            height: 48.v,
                            width: 58.h,
                            alignment: Alignment.center)
                      ]))
                ])));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 64.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgAppsCircle,
            margin: EdgeInsets.only(left: 20.h),
            onTap: () {
              onTapIconButton(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "Sneaker Shop"),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgBag,
              margin: EdgeInsets.symmetric(horizontal: 20.h))
        ]);
  }

  /// Section Widget
  Widget _buildEightyColumn(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 24.v),
        child: Column(children: [
          SizedBox(
              width: 328.h,
              child: ReadMoreText(
                  "The Max Air 270 unit delivers unrivaled, all-day comfort. The sleek, running-inspired design roots you to everything Nike........",
                  trimLines: 3,
                  colorClickableText: appTheme.blueA400,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: "Read More",
                  moreStyle: theme.textTheme.bodyMedium!.copyWith(height: 1.71),
                  lessStyle:
                      theme.textTheme.bodyMedium!.copyWith(height: 1.71))),
          SizedBox(height: 60.v),
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: EdgeInsets.only(left: 28.h, right: 7.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomIconButton(
                            height: 52.adaptSize,
                            width: 52.adaptSize,
                            padding: EdgeInsets.all(14.h),
                            decoration: IconButtonStyleHelper.fillBlueGray,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgVuesaxLinearHeart)),
                        CustomElevatedButton(
                            height: 50.v,
                            width: 208.h,
                            text: "Add to Cart",
                            leftIcon: Container(
                                margin: EdgeInsets.only(right: 16.h),
                                child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgVuesaxLinearBag2,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize)),
                            buttonStyle: CustomButtonStyles.fillBlueA,
                            buttonTextStyle:
                                CustomTextStyles.titleSmallRalewayPrimary)
                      ]))),
          SizedBox(height: 5.v)
        ]));
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapIconButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }
}
