import 'package:flutter/material.dart';
import 'package:nike_app_clone_challenge/core/app_export.dart';
import 'package:nike_app_clone_challenge/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AppbarTrailingIconbutton extends StatelessWidget {
  AppbarTrailingIconbutton({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 88,
          width: 88,
          decoration: IconButtonStyleHelper.fillPrimary,
          child: CustomImageView(
            imagePath: ImageConstant.imgMenuIcon,
          ),
        ),
      ),
    );
  }
}
