import 'package:dineconnect/presentation/home_screen/home_screen.dart';

import '../application_screen/widgets/userprofile1_item_widget.dart';
import 'package:dineconnect/core/app_export.dart';
import 'package:dineconnect/presentation/application_history_full_screen/application_history_full_Screen.dart';
import 'package:dineconnect/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ApplicationScreen extends StatelessWidget {
  ApplicationScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "DINECONNECT"
            ),
            backgroundColor: Colors.blueAccent,
          ),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 20.v),
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
                                    left: 9.h, top: 3.v, bottom: 3.v),
                                child: Text("Applications",
                                    style: theme.textTheme.headlineSmall))
                          ])),
                      SizedBox(height: 6.v),
                      Expanded(
                          child: ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return Padding(
                                    padding:
                                        EdgeInsets.all(10.0,),
                                    child: SizedBox(
                                        width: double.maxFinite,
                                        child: Divider(
                                            height: 1.v,
                                            thickness: 1.v,
                                            color: theme.colorScheme.onError)));
                              },
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(left: 10,right: 10,top: 5, bottom: 5),
                                  child: Userprofile1ItemWidget(
                                      onTapUserprofile: () {
                                    onTapUserprofile(context);
                                  }),
                                );
                              }))
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
        return HomeScreen();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the androidLargeThirtyOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the androidLargeThirtyOneScreen.
  onTapUserprofile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.androidLargeThirtyOneScreen);
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
