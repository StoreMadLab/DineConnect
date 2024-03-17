import 'package:dineconnect/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductinfoItemWidget extends StatelessWidget {

  final String Dish;
  final String price;
  const ProductinfoItemWidget(
      {
        Key? key,
        required this.Dish,
        required this.price
      }
      )
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 24.h,
          vertical: 8.v,
        ),
        decoration: AppDecoration.fillOrange.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder30,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 6.v),
            CustomImageView(
              imagePath: ImageConstant.imgRectangle5370x70,
              height: 70.adaptSize,
              width: 70.adaptSize,
              radius: BorderRadius.circular(
                10.h,
              ),
            ),
            SizedBox(height: 8.v),
            SizedBox(
              height: 17.v,
              width: 88.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 17.v,
                      width: 88.h,
                      decoration: BoxDecoration(
                        color: appTheme.gray100,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      Dish,
                      style: CustomTextStyles.bodySmallInter,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2.v),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 30.h,
                vertical: 1.v,
              ),
              decoration: AppDecoration.fillGray,
              child: Text(
                price+"rs",
                style: CustomTextStyles.bodySmallInter,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
