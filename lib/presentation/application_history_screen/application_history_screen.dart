import 'package:dineconnect/core/app_export.dart';
import 'package:dineconnect/presentation/application_history_full_screen/application_history_full_Screen.dart';
import 'package:dineconnect/presentation/home_screen/home_screen.dart';
import 'package:dineconnect/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AppliationHistoryScreen extends StatelessWidget {
  AppliationHistoryScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.androidLargeThirtyonePage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
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
}
