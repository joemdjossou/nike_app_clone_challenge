import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:nike_app_clone_challenge/core/app_export.dart';

// ignore: must_be_immutable
class NotificationssectionItemWidget extends StatelessWidget {
  const NotificationssectionItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.v),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 85.v,
            width: 87.h,
            padding: EdgeInsets.symmetric(
              horizontal: 3.h,
              vertical: 1.v,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.roundedBorder16,
              image: DecorationImage(
                image: fs.Svg(
                  ImageConstant.imgGroup142,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgPngaaa1,
              height: 82.v,
              width: 80.h,
              alignment: Alignment.center,
            ),
          ),
          Container(
            height: 73.v,
            width: 201.h,
            margin: EdgeInsets.only(bottom: 10.v),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 135.h,
                        child: Text(
                          "We Have New Products With Offers",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.titleSmallRalewayBlueA400,
                        ),
                      ),
                      SizedBox(height: 7.v),
                      SizedBox(
                        width: 134.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "364.95",
                              style: theme.textTheme.titleSmall,
                            ),
                            Text(
                              "260.00",
                              style: CustomTextStyles.titleSmallGray600,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "7 min ago",
                    style: CustomTextStyles.titleSmallGray600,
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
