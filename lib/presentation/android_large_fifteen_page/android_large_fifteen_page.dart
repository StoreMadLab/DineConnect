import '../android_large_fifteen_page/widgets/createorder_item_widget.dart';
import 'package:dineconnect/core/app_export.dart';
import 'package:dineconnect/widgets/app_bar/appbar_image_1.dart';
import 'package:dineconnect/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AndroidLargeFifteenPage extends StatelessWidget {
  const AndroidLargeFifteenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                centerTitle: true,
                title: AppbarImage1(
                    imagePath: ImageConstant.imgDineconnectlogosblack)),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 25.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowleft,
                                height: 19.v,
                                width: 24.h,
                                margin: EdgeInsets.only(top: 1.v, bottom: 3.v),
                                onTap: () {
                                  onTapImgArrowleftone(context);
                                }),
                            Padding(
                                padding: EdgeInsets.only(left: 20.h),
                                child: Text("Orders",
                                    style: theme.textTheme.headlineSmall))
                          ])),
                      SizedBox(height: 2.v),
                      Divider(),
                      Expanded(
                          child: Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 30.h, top: 24.v, right: 30.h),
                                  child: GridView.builder(
                                      shrinkWrap: true,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              mainAxisExtent: 138.v,
                                              crossAxisCount: 2,
                                              mainAxisSpacing: 0.h,
                                              crossAxisSpacing: 0.h),
                                      physics: BouncingScrollPhysics(),
                                      itemCount: 4,
                                      itemBuilder: (context, index) {
                                        return CreateorderItemWidget(
                                            onTapImgAddImage: () {
                                          onTapImgAddImage(context);
                                        });
                                      }))))
                    ]))));
  }

  /// Navigates to the androidLargeSeventeenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the androidLargeSeventeenScreen.
  onTapImgAddImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.androidLargeSeventeenScreen);
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
