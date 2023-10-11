import 'package:dineconnect/core/app_export.dart';
import 'package:dineconnect/widgets/custom_drop_down.dart';
import 'package:dineconnect/widgets/custom_elevated_button.dart';
import 'package:dineconnect/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile2ItemWidget extends StatelessWidget {
  Userprofile2ItemWidget({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 13.h,
          vertical: 10.v,
        ),
        decoration: AppDecoration.fillOrange.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder30,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 13.v),
              child: Column(
                children: [
                  CustomIconButton(
                    height: 69.adaptSize,
                    width: 69.adaptSize,
                    padding: EdgeInsets.all(4.h),
                    decoration: IconButtonStyleHelper.fillGrayTL20,
                    child: CustomImageView(
                      svgPath: ImageConstant.imgPlusOnprimary,
                    ),
                  ),
                  SizedBox(height: 11.v),
                  CustomElevatedButton(
                    height: 24.v,
                    width: 73.h,
                    text: "Delete",
                    buttonStyle: CustomButtonStyles.fillRedA,
                    buttonTextStyle: CustomTextStyles.bodyLargeNicoMoji,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 14.h,
                top: 13.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 23.v,
                    width: 178.h,
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 22.v,
                            width: 178.h,
                            decoration: BoxDecoration(
                              color: appTheme.blueGray50,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 7.h),
                            child: Text(
                              "EmpName1",
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 1.v),
                  SizedBox(
                    height: 76.v,
                    width: 184.h,
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: 22.v,
                            width: 178.h,
                            decoration: BoxDecoration(
                              color: appTheme.blueGray50,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 7.h),
                            decoration: AppDecoration.fillBluegray50,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 1.v),
                                Text(
                                  "22000rs P/m",
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 7.h),
                            child: Text(
                              "+90 989788767",
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowdownOnerror,
                          height: 49.adaptSize,
                          width: 49.adaptSize,
                          alignment: Alignment.centerRight,
                        ),
                        CustomDropDown(
                          width: 178.h,
                          hintText: "Select ",
                          alignment: Alignment.centerLeft,
                          items: dropdownItemList,
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 14.h),
                          onChanged: (value) {},
                        ),
                      ],
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
