import 'package:dineconnect/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget({
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
          horizontal: 30.h,
          vertical: 9.v,
        ),
        decoration: AppDecoration.fillBlueGray,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Main Chef",
              style: theme.textTheme.titleLarge,
            ),
            SizedBox(height: 3.v),
            Text(
              "Mundappan Hotel",
              style: CustomTextStyles.bodySmallGray600,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 5.h,
                top: 6.v,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgLocation,
                    height: 8.v,
                    width: 6.h,
                    margin: EdgeInsets.only(bottom: 2.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Text(
                      "Sultan Battery,Mangalore",
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 3.h,
                top: 9.v,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEmojidollar,
                    height: 5.v,
                    width: 9.h,
                    margin: EdgeInsets.only(bottom: 4.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 9.h),
                    child: Text(
                      "Rs 12,000 to 15,100 per month",
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
