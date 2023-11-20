import 'package:flutter/material.dart';
import 'package:nike_app_clone_challenge/core/app_export.dart';
import 'package:nike_app_clone_challenge/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class FavouritegridItemWidget extends StatelessWidget {
  const FavouritegridItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 90.v,
            width: 130.h,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPngitem5550642,
                  height: 81.v,
                  width: 125.h,
                  alignment: Alignment.bottomCenter,
                ),
                CustomIconButton(
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  alignment: Alignment.topLeft,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgLocationRed300,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "Best Seller".toUpperCase(),
              style: theme.textTheme.labelLarge,
            ),
          ),
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "Nike Jordan",
              style: CustomTextStyles.titleMediumOnSecondaryContainer_1,
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "58.7",
                  style:
                      CustomTextStyles.titleMediumPoppinsOnSecondaryContainer,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup163,
                  height: 16.v,
                  width: 42.h,
                  margin: EdgeInsets.only(
                    left: 45.h,
                    top: 4.v,
                    bottom: 4.v,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
