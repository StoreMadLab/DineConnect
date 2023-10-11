import 'package:dineconnect/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CreateorderItemWidget extends StatelessWidget {
  CreateorderItemWidget({
    Key? key,
    this.onTapImgAddImage,
  }) : super(
          key: key,
        );

  VoidCallback? onTapImgAddImage;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 27.h,
          vertical: 10.v,
        ),
        decoration: AppDecoration.fillOrange.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder30,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Create \nOrder",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.headlineSmallInterOnErrorRegular,
            ),
            SizedBox(height: 7.v),
            CustomImageView(
              svgPath: ImageConstant.imgPlus,
              height: 42.adaptSize,
              width: 42.adaptSize,
              alignment: Alignment.center,
              onTap: () {
                onTapImgAddImage?.call();
              },
            ),
            SizedBox(height: 6.v),
          ],
        ),
      ),
    );
  }
}
