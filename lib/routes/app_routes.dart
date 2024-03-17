// import 'dart:js';

import 'package:dineconnect/presentation/manage_jobs_screen/edit_jobs_screen.dart';
import 'package:flutter/material.dart';
import 'package:dineconnect/presentation/application_history_screen/application_history_screen.dart';
import 'package:dineconnect/presentation/orders_screen/orders_screen.dart';
import 'package:dineconnect/presentation/browse_jobs/browse_jobs.dart';
import 'package:dineconnect/presentation/single_job_screen/single_job_screen.dart';
import 'package:dineconnect/presentation/apply_now_screen/apply_now_screen.dart';
import 'package:dineconnect/presentation/create_account/create_account.dart';
import 'package:dineconnect/presentation/create_order_screen/create_order_screen.dart';
import 'package:dineconnect/presentation/post_a_job_screen/post_a_job_screen.dart';
import 'package:dineconnect/presentation/manage_jobs_screen/manage_jobs_screen.dart';
import 'package:dineconnect/presentation/application_screen/application_screen.dart';
import 'package:dineconnect/presentation/login/login.dart';
// import 'package:dineconnect/presentation/opt_screen/opt_screen.dart';
import 'package:dineconnect/presentation/home_screen/home_screen.dart';
import 'package:dineconnect/presentation/settings_screen/settings_screen.dart';
import 'package:dineconnect/presentation/single_application_screen/single_application_screen.dart';
import 'package:dineconnect/presentation/android_large_thirty_screen/android_large_thirty_screen.dart';
import 'package:dineconnect/presentation/menu_screen/menu_screen.dart';
import 'package:dineconnect/presentation/employees_screen/employees_screen.dart';
import 'package:dineconnect/presentation/vendors_screen/vendors_screen.dart';
import 'package:dineconnect/presentation/app_navigation_screen/app_navigation_screen.dart';

import '../presentation/launcherScreen/launcher_screen.dart';
import '../presentation/opt_screen/opt_screen.dart';

class AppRoutes {
  static const String launcherScreen =
      '/android_large_twentytwo_screen';

  static const String androidLargeThirtyonePage =
      '/android_large_thirtyone_page';

  static const String applicationHistoryScreen =
      '/android_large_thirtyone_container_screen';

  static const String ordersScreen =
      '/android_large_twentyseven_screen';

  static const String browseJobScreen = '/android_large_four_screen';

  static const String androidLargeTwentyeightScreen =
      '/android_large_twentyeight_screen';

  static const String applyNowScreen =
      '/android_large_twentynine_screen';

  static const String createAccountScreen = '/android_large_three_screen';

  static const String androidLargeFifteenPage = '/android_large_fifteen_page';

  static const String createOrderScreen =
      '/android_large_seventeen_screen';

  static const String androidLargeTwentysixScreen =
      '/android_large_twentysix_screen';

  static const String postAJobScreen = '/android_large_five_screen';

  static const String manageJobsScreen =
      '/android_large_twentynine_one_screen';

  static const String applicationScreen = '/android_large_six_screen';

  static const String loginScreen =
      '/android_large_twentythree_screen';

  static const String androidLargeTwentyfourScreen =
      '/android_large_twentyfour_screen';

  static const String homeScreen =
      '/android_large_twentyfive_screen';

  static const String settingsScreen = '/android_large_nine_screen';

  static const String androidLargeThirtyOneScreen =
      '/android_large_thirty_one_screen';

  static const String androidLargeThirtyScreen = '/android_large_thirty_screen';

  static const String menuScreen =
      '/android_large_sixteen_screen';

  static const String employeesScreen =
      '/android_large_eighteen_screen';

  static const String vendorsScreen =
      '/android_large_nineteen_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String editJobsScreen = '/edit_jobs_screen';

  static Map<String, WidgetBuilder> routes = {
    launcherScreen: (context) => LauncherScreen(),
    applicationHistoryScreen: (context) =>
        AppliationHistoryScreen(),
    ordersScreen: (context) => OrdersScreen(),
    browseJobScreen: (context) => BrowseJobsScreen(),
    androidLargeTwentyeightScreen: (context) => SingleJobScreen(),
    applyNowScreen: (context) => ApplyNowScreen(),
    createAccountScreen: (context) => CreateAccountScreen(),
    createOrderScreen: (context) => AndroidLargeSeventeenScreen(),
    postAJobScreen: (context) => PostAJobScreen(),
    manageJobsScreen: (context) =>
        ManageJobsScreen(),
    applicationScreen: (context) => ApplicationScreen(),
    loginScreen: (context) => LoginScreen(),
    // androidLargeTwentyfourScreen: (context) => opt_screen(verificationid:verificationid ,),
    homeScreen: (context) => HomeScreen(),
    settingsScreen: (context) => SettingsScreen(),
    androidLargeThirtyOneScreen: (context) => SingleApplicationScreen(),
    androidLargeThirtyScreen: (context) => AndroidLargeThirtyScreen(),
    menuScreen: (context) => MenuScreen(),
    employeesScreen: (context) => EmployeesScreen(),
    vendorsScreen: (context) => VendorsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    // editJobsScreen: (context) => EditJobsScreen(jobPosting: null,)
  };
}
