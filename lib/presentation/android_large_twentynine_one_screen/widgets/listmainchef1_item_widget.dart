import 'package:dineconnect/core/app_export.dart';
import 'package:dineconnect/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listmainchef1ItemWidget extends StatelessWidget {
  Listmainchef1ItemWidget({
    Key? key,
    this.onTapEdit,
  }) : super(
          key: key,
        );

  VoidCallback? onTapEdit;

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
          CustomElevatedButton(
            height: 17.v,
            width: 69.h,
            text: "Edit",
            margin: EdgeInsets.only(
              left: 3.h,
              top: 8.v,
            ),
            buttonStyle: CustomButtonStyles.fillOrangeATL8,
            buttonTextStyle: CustomTextStyles.bodySmallOnPrimaryContainer,
            onTap: () {
              onTapEdit?.call();
            },
          ),
        ],
      ),
    );
  }
}
