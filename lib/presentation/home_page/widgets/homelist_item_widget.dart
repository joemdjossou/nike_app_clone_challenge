import 'package:flutter/material.dart';
import 'package:nike_app_clone_challenge/core/app_export.dart';

// ignore: must_be_immutable
class HomelistItemWidget extends StatelessWidget {
  const HomelistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      width: 157.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 12.v),
          SizedBox(
            height: 89.v,
            width: 129.h,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPngitem5550642,
                  height: 81.v,
                  width: 125.h,
                  alignment: Alignment.bottomCenter,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgSearchBlueGray900,
                  height: 14.adaptSize,
                  width: 14.adaptSize,
                  alignment: Alignment.topLeft,
                ),
              ],
            ),
          ),
          SizedBox(height: 18.v),
          Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 9.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Best Seller".toUpperCase(),
                        style: theme.textTheme.labelLarge,
                      ),
                      SizedBox(height: 3.v),
                      Text(
                        "Nike Jordan",
                        style: CustomTextStyles.titleMediumGray70001,
                      ),
                      SizedBox(height: 9.v),
                      Text(
                        "302.00",
                        style: theme.textTheme.titleSmall,
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFloatingIcon,
                  height: 35.v,
                  width: 34.h,
                  margin: EdgeInsets.only(
                    left: 21.h,
                    top: 45.v,
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
