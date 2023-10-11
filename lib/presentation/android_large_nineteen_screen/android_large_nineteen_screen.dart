import '../android_large_nineteen_screen/widgets/listplus_one_item_widget.dart';
import 'package:dineconnect/core/app_export.dart';
import 'package:dineconnect/presentation/android_large_fifteen_page/android_large_fifteen_page.dart';
import 'package:dineconnect/presentation/android_large_thirtyone_page/android_large_thirtyone_page.dart';
import 'package:dineconnect/widgets/app_bar/appbar_image_1.dart';
import 'package:dineconnect/widgets/app_bar/custom_app_bar.dart';
import 'package:dineconnect/widgets/custom_bottom_bar.dart';
import 'package:dineconnect/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AndroidLargeNineteenScreen extends StatelessWidget {
  AndroidLargeNineteenScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                centerTitle: true,
                title: AppbarImage1(
                    imagePath: ImageConstant.imgDineconnectlogosblack)),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 12.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 13.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowleft,
                                    height: 30.v,
                                    width: 31.h,
                                    onTap: () {
                                      onTapImgArrowleftone(context);
                                    }),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 11.h, bottom: 6.v),
                                    child: Text("Vendors",
                                        style: theme.textTheme.headlineSmall))
                              ])),
                      SizedBox(height: 7.v),
                      Divider(),
                      Expanded(
                          child: Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 20.h, top: 8.v, right: 20.h),
                                  child: ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(height: 14.v);
                                      },
                                      itemCount: 2,
                                      itemBuilder: (context, index) {
                                        return ListplusOneItemWidget();
                                      })))),
                      Spacer(),
                      Divider(),
                      CustomElevatedButton(
                          width: 126.h,
                          text: "ADD",
                          margin: EdgeInsets.only(
                              top: 10.v, right: 20.h, bottom: 11.v),
                          buttonStyle: CustomButtonStyles.fillGreen,
                          buttonTextStyle: CustomTextStyles.titleLargeNicoMoji,
                          alignment: Alignment.centerRight)
                    ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.androidLargeThirtyonePage;
      case BottomBarEnum.User:
        return "/";
      case BottomBarEnum.Map:
        return "/";
      case BottomBarEnum.Calculator:
        return AppRoutes.androidLargeFifteenPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.androidLargeThirtyonePage:
        return AndroidLargeThirtyonePage();
      case AppRoutes.androidLargeFifteenPage:
        return AndroidLargeFifteenPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
