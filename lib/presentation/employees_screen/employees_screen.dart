import 'package:dineconnect/presentation/orders_screen/orders_screen.dart';

import '../employees_screen/widgets/userprofile2_item_widget.dart';
import 'package:dineconnect/core/app_export.dart';

import 'package:dineconnect/presentation/application_history_full_screen/application_history_full_Screen.dart';
import 'package:dineconnect/widgets/app_bar/appbar_image_1.dart';
import 'package:dineconnect/widgets/app_bar/custom_app_bar.dart';
import 'package:dineconnect/widgets/custom_bottom_bar.dart';
import 'package:dineconnect/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class EmployeesScreen extends StatelessWidget {
  EmployeesScreen({Key? key}) : super(key: key);

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
                padding: EdgeInsets.symmetric(vertical: 15.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowleft,
                                height: 30.v,
                                width: 31.h,
                                onTap: () {
                                  onTapImgArrowleftone(context);
                                }),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 13.h, top: 4.v, bottom: 2.v),
                                child: Text("Employees",
                                    style: theme.textTheme.headlineSmall))
                          ])),
                      SizedBox(height: 9.v),
                      Divider(),
                      Expanded(
                          child: Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 20.h, top: 14.v, right: 20.h),
                                  child: ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(height: 18.v);
                                      },
                                      itemCount: 2,
                                      itemBuilder: (context, index) {
                                        return Userprofile2ItemWidget();
                                      }
                                      )
                              )
                          )
                      ),
                      // Spacer(),
                      Divider(),
                      CustomElevatedButton(
                          width: 126.h,
                          text: "ADD",
                          margin: EdgeInsets.only(
                              top: 9.v, right: 20.h, bottom: 9.v),
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
        return ApplicationHistoryFullScreen();
      case AppRoutes.androidLargeFifteenPage:
        return OrdersScreen();
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
