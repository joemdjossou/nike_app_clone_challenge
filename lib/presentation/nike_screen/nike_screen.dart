import 'package:flutter/material.dart';
import 'package:nike_app_clone_challenge/core/app_export.dart';

class NikeScreen extends StatefulWidget {
  @override
  State<NikeScreen> createState() => _NikeScreenState();
}

class _NikeScreenState extends State<NikeScreen> {
  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    // Call the function to wait for 5 seconds
    waitForFiveSeconds().then(
      (_) => Navigator.pushNamed(context, AppRoutes.homeContainerScreen),
    );
  }

  Future<void> waitForFiveSeconds() async {
    // Create a Future.delayed that completes after 5 seconds
    await Future.delayed(Duration(seconds: 1));
    // The function will now wait for 5 seconds before moving to the next line
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: appTheme.blueA400,
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 109.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgVectorRed50,
                height: 54.v,
                width: 157.h,
              ),
              SizedBox(height: 5.v),
              Text(
                "NIKE".toUpperCase(),
                style: theme.textTheme.displayLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
