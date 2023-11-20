import 'package:flutter/material.dart';
import 'package:nike_app_clone_challenge/core/app_export.dart';

// ignore: must_be_immutable
class FifteenItemWidget extends StatelessWidget {
  const FifteenItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 11.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "All Shoes",
        style: TextStyle(
          color: theme.colorScheme.onSecondaryContainer,
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: false,
      backgroundColor: theme.colorScheme.primary,
      selectedColor: appTheme.blueA400,
      // shape: RoundedRectangleBorder(
      //   side: BorderSide.none,
      //   borderRadius: BorderRadius.circular(
      //     8.h,
      //   ),
      // ),
      onSelected: (value) {},
    );
  }
}
