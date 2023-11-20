import 'package:flutter/material.dart';
import 'package:nike_app_clone_challenge/core/app_export.dart';

// ignore: must_be_immutable
class AppbarTrailingImage extends StatelessWidget {
  AppbarTrailingImage({
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
    return InkWell(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath,
          height: 18.v,
          width: 25.h,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
