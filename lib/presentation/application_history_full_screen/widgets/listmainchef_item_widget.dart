import 'package:dineconnect/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListmainchefItemWidget extends StatelessWidget {
  const ListmainchefItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillBlueGray,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
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
          Padding(
            padding: EdgeInsets.only(
              left: 23.h,
              top: 12.v,
              bottom: 3.v,
            ),
            child: Text(
              "Edit",
              style: CustomTextStyles.bodySmallOnPrimaryContainer,
            ),
          ),
        ],
      ),
    );
  }
}
