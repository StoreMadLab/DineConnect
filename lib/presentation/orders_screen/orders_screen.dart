import 'package:dineconnect/presentation/orders_screen/widget/orders_tile.dart';

import '../employees_screen/widgets/userprofile2_item_widget.dart';
import 'package:dineconnect/core/app_export.dart';
import 'package:dineconnect/presentation/application_history_full_screen/application_history_full_Screen.dart';
import 'package:dineconnect/widgets/app_bar/appbar_image_1.dart';
import 'package:dineconnect/widgets/app_bar/custom_app_bar.dart';
import 'package:dineconnect/widgets/custom_bottom_bar.dart';
import 'package:dineconnect/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class OrdersScreen extends StatelessWidget {
  OrdersScreen({Key? key}) : super(key: key);

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
            body: Column(
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Row(
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
                                  left: 13.h, top: 4.v, bottom: 2.v),
                              child: Text("Orders",
                                  style: theme.textTheme.headlineSmall))
                        ]
                    )
                ),
                SizedBox(height: 9.v),
                Divider(),

                SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: GestureDetector(
                        onTap:  () {
                          Navigator.pushNamed(
                              context, AppRoutes.createOrderScreen);
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("CREATE",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                            ),
                            Text("ORDER",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            Icon(Icons.add_circle_outline_outlined,
                              size: 50,
                            )
                          ],
                        ),
                      ),
                    ),
                    OrdersTile(),
                  ],
                ),

                SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OrdersTile(),
                    OrdersTile(),
                  ],
                ),

                SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OrdersTile(),
                    OrdersTile(),
                  ],
                ),

              ],
            ),
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
