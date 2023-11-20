import 'package:flutter/material.dart';
import 'package:nike_app_clone_challenge/core/app_export.dart';
import 'package:nike_app_clone_challenge/widgets/app_bar/appbar_subtitle.dart';
import 'package:nike_app_clone_challenge/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:nike_app_clone_challenge/widgets/app_bar/custom_app_bar.dart';
import 'package:nike_app_clone_challenge/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.primary,
      resizeToAvoidBottomInset: false,
      appBar: _buildAppBar(context),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 44.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 82.v,
                    width: 80.h,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle382,
                          height: 80.adaptSize,
                          width: 80.adaptSize,
                          radius: BorderRadius.circular(
                            40.h,
                          ),
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 19.adaptSize,
                            width: 19.adaptSize,
                            margin: EdgeInsets.only(right: 6.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 5.h,
                              vertical: 6.v,
                            ),
                            decoration: AppDecoration.outlineGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8,
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgFill244,
                              height: 5.v,
                              width: 6.h,
                              alignment: Alignment.centerLeft,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 22.v),
                Text(
                  "Your Name",
                  style: CustomTextStyles.titleMediumGray600,
                ),
                SizedBox(height: 12.v),
                CustomTextFormField(
                  controller: nameController,
                  hintText: "EMMANUEL OYIBOKE",
                ),
                SizedBox(height: 12.v),
                Text(
                  "Email Address",
                  style: CustomTextStyles.titleMediumGray600,
                ),
                SizedBox(height: 12.v),
                CustomTextFormField(
                  controller: emailController,
                  hintText: "emmanueloyiboke@gmail.com",
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(height: 30.v),
                Text(
                  "Password",
                  style: CustomTextStyles.titleMediumGray600,
                ),
                SizedBox(height: 12.v),
                CustomTextFormField(
                  controller: passwordController,
                  textInputAction: TextInputAction.done,
                  obscureText: true,
                ),
                SizedBox(height: 8.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Recovery Password",
                    style: CustomTextStyles.bodySmallGray600,
                  ),
                ),
                SizedBox(height: 8.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 39.v,
      centerTitle: true,
      title: AppbarSubtitle(
        text: "Profile",
      ),
      actions: [
        AppbarSubtitleTwo(
          text: "Edit",
          margin: EdgeInsets.fromLTRB(20.h, 12.v, 20.h, 8.v),
        ),
      ],
    );
  }
}
