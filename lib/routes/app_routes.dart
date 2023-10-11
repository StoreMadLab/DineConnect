import 'package:flutter/material.dart';
import 'package:dineconnect/presentation/android_large_thirtyone_container_screen/android_large_thirtyone_container_screen.dart';
import 'package:dineconnect/presentation/android_large_twentyseven_screen/android_large_twentyseven_screen.dart';
import 'package:dineconnect/presentation/android_large_four_screen/android_large_four_screen.dart';
import 'package:dineconnect/presentation/android_large_twentyeight_screen/android_large_twentyeight_screen.dart';
import 'package:dineconnect/presentation/android_large_twentynine_screen/android_large_twentynine_screen.dart';
import 'package:dineconnect/presentation/create_account/create_account.dart';
import 'package:dineconnect/presentation/android_large_twentysix_one_screen/android_large_twentysix_one_screen.dart';
import 'package:dineconnect/presentation/android_large_seventeen_screen/android_large_seventeen_screen.dart';
import 'package:dineconnect/presentation/android_large_twentysix_screen/android_large_twentysix_screen.dart';
import 'package:dineconnect/presentation/android_large_five_screen/android_large_five_screen.dart';
import 'package:dineconnect/presentation/android_large_twentynine_one_screen/android_large_twentynine_one_screen.dart';
import 'package:dineconnect/presentation/android_large_six_screen/android_large_six_screen.dart';
import 'package:dineconnect/presentation/login/login.dart';
// import 'package:dineconnect/presentation/opt_screen/opt_screen.dart';
import 'package:dineconnect/presentation/home_screen/home_screen.dart';
import 'package:dineconnect/presentation/android_large_nine_screen/android_large_nine_screen.dart';
import 'package:dineconnect/presentation/android_large_thirty_one_screen/android_large_thirty_one_screen.dart';
import 'package:dineconnect/presentation/android_large_thirty_screen/android_large_thirty_screen.dart';
import 'package:dineconnect/presentation/android_large_sixteen_screen/android_large_sixteen_screen.dart';
import 'package:dineconnect/presentation/android_large_eighteen_screen/android_large_eighteen_screen.dart';
import 'package:dineconnect/presentation/android_large_nineteen_screen/android_large_nineteen_screen.dart';
import 'package:dineconnect/presentation/app_navigation_screen/app_navigation_screen.dart';

import '../presentation/launcherScreen/launcher_screen.dart';
import '../presentation/opt_screen/opt_screen.dart';

class AppRoutes {
  static const String launcherScreen =
      '/android_large_twentytwo_screen';

  static const String androidLargeThirtyonePage =
      '/android_large_thirtyone_page';

  static const String androidLargeThirtyoneContainerScreen =
      '/android_large_thirtyone_container_screen';

  static const String androidLargeTwentysevenScreen =
      '/android_large_twentyseven_screen';

  static const String androidLargeFourScreen = '/android_large_four_screen';

  static const String androidLargeTwentyeightScreen =
      '/android_large_twentyeight_screen';

  static const String androidLargeTwentynineScreen =
      '/android_large_twentynine_screen';

  static const String createAccountScreen = '/android_large_three_screen';

  static const String androidLargeTwentysixOneScreen =
      '/android_large_twentysix_one_screen';

  static const String androidLargeFifteenPage = '/android_large_fifteen_page';

  static const String androidLargeSeventeenScreen =
      '/android_large_seventeen_screen';

  static const String androidLargeTwentysixScreen =
      '/android_large_twentysix_screen';

  static const String androidLargeFiveScreen = '/android_large_five_screen';

  static const String androidLargeTwentynineOneScreen =
      '/android_large_twentynine_one_screen';

  static const String androidLargeSixScreen = '/android_large_six_screen';

  static const String loginScreen =
      '/android_large_twentythree_screen';

  static const String androidLargeTwentyfourScreen =
      '/android_large_twentyfour_screen';

  static const String homeScreen =
      '/android_large_twentyfive_screen';

  static const String androidLargeNineScreen = '/android_large_nine_screen';

  static const String androidLargeThirtyOneScreen =
      '/android_large_thirty_one_screen';

  static const String androidLargeThirtyScreen = '/android_large_thirty_screen';

  static const String androidLargeSixteenScreen =
      '/android_large_sixteen_screen';

  static const String androidLargeEighteenScreen =
      '/android_large_eighteen_screen';

  static const String androidLargeNineteenScreen =
      '/android_large_nineteen_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    launcherScreen: (context) => LauncherScreen(),
    androidLargeThirtyoneContainerScreen: (context) =>
        AndroidLargeThirtyoneContainerScreen(),
    androidLargeTwentysevenScreen: (context) => AndroidLargeTwentysevenScreen(),
    androidLargeFourScreen: (context) => AndroidLargeFourScreen(),
    androidLargeTwentyeightScreen: (context) => AndroidLargeTwentyeightScreen(),
    androidLargeTwentynineScreen: (context) => AndroidLargeTwentynineScreen(),
    createAccountScreen: (context) => CreateAccountScreen(),
    androidLargeTwentysixOneScreen: (context) =>
        AndroidLargeTwentysixOneScreen(),
    androidLargeSeventeenScreen: (context) => AndroidLargeSeventeenScreen(),
    androidLargeTwentysixScreen: (context) => AndroidLargeTwentysixScreen(),
    androidLargeFiveScreen: (context) => AndroidLargeFiveScreen(),
    androidLargeTwentynineOneScreen: (context) =>
        AndroidLargeTwentynineOneScreen(),
    androidLargeSixScreen: (context) => AndroidLargeSixScreen(),
    loginScreen: (context) => LoginScreen(),
    // androidLargeTwentyfourScreen: (context) => opt_screen(verificationid:verificationid ,),
    homeScreen: (context) => HomeScreen(),
    androidLargeNineScreen: (context) => AndroidLargeNineScreen(),
    androidLargeThirtyOneScreen: (context) => AndroidLargeThirtyOneScreen(),
    androidLargeThirtyScreen: (context) => AndroidLargeThirtyScreen(),
    androidLargeSixteenScreen: (context) => AndroidLargeSixteenScreen(),
    androidLargeEighteenScreen: (context) => AndroidLargeEighteenScreen(),
    androidLargeNineteenScreen: (context) => AndroidLargeNineteenScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
