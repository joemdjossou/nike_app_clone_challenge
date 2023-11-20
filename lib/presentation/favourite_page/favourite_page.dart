import '../favourite_page/widgets/favouritegrid_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:nike_app_clone_challenge/core/app_export.dart';
import 'package:nike_app_clone_challenge/widgets/app_bar/appbar_subtitle.dart';
import 'package:nike_app_clone_challenge/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:nike_app_clone_challenge/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class FavouritePage extends StatelessWidget {
  const FavouritePage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(
            left: 17.h,
            top: 28.v,
            right: 17.h,
          ),
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 204.v,
              crossAxisCount: 2,
              mainAxisSpacing: 21.h,
              crossAxisSpacing: 21.h,
            ),
            physics: BouncingScrollPhysics(),
            itemCount: 4,
            itemBuilder: (context, index) {
              return FavouritegridItemWidget();
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarSubtitle(
        text: "Favourite",
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgMenuIcon,
          margin: EdgeInsets.symmetric(horizontal: 19.h),
        ),
      ],
    );
  }
}
