import 'package:dineconnect/core/app_export.dart';
import 'package:dineconnect/widgets/custom_checkbox_button.dart';
import 'package:dineconnect/widgets/custom_drop_down.dart';
import 'package:dineconnect/widgets/custom_elevated_button.dart';
import 'package:dineconnect/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListplusOneItemWidget extends StatelessWidget {
  ListplusOneItemWidget({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  bool paid = false;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 14.h,
          vertical: 7.v,
        ),
        decoration: AppDecoration.fillOrange.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder30,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 16.v,
                bottom: 42.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomIconButton(
                    height: 69.adaptSize,
                    width: 69.adaptSize,
                    padding: EdgeInsets.all(4.h),
                    decoration: IconButtonStyleHelper.fillGrayTL30,
                    child: CustomImageView(
                      svgPath: ImageConstant.imgPlusOnprimary,
                    ),
                  ),
                  SizedBox(height: 11.v),
                  CustomElevatedButton(
                    height: 24.v,
                    width: 76.h,
                    text: "Delete",
                    buttonStyle: CustomButtonStyles.fillRedA,
                    buttonTextStyle: CustomTextStyles.bodyLargeNicoMoji,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 7.h,
                top: 16.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 22.v,
                    width: 178.h,
                    margin: EdgeInsets.only(left: 3.h),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Align(
                          alignment: Alignment.center,
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
                              "Vendor-name",
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 76.v,
                    width: 184.h,
                    margin: EdgeInsets.only(
                      left: 3.h,
                      top: 2.v,
                    ),
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
                                  "300rs",
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
                        CustomDropDown(
                          width: 178.h,
                          hintText: "Select ",
                          alignment: Alignment.centerLeft,
                          items: dropdownItemList,
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 11.v),
                  CustomCheckboxButton(
                    text: "PAID",
                    value: paid,
                    padding: EdgeInsets.fromLTRB(20.h, 7.v, 12.h, 7.v),
                    onChange: (value) {
                      paid = value;
                    },
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
