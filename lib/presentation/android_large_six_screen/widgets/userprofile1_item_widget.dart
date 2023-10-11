import 'package:dineconnect/core/app_export.dart';
import 'package:dineconnect/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget({
    Key? key,
    this.onTapUserprofile,
  }) : super(
          key: key,
        );

  VoidCallback? onTapUserprofile;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapUserprofile?.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 7.h,
          vertical: 9.v,
        ),
        decoration: AppDecoration.fillGray,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 25.h),
              child: Row(
                children: [
                  CustomIconButton(
                    height: 62.v,
                    width: 61.h,
                    padding: EdgeInsets.all(10.h),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgUserOrange100,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 5.h,
                      top: 9.v,
                      bottom: 2.v,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 9.h,
                      vertical: 1.v,
                    ),
                    decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Text(
                      "@Hrithik",
                      style: CustomTextStyles.bodyLargeLight,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 8.h,
                top: 14.v,
              ),
              child: Text(
                "Applied for this job!",
                style: CustomTextStyles.titleLargeLight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
