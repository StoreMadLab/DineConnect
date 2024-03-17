import '../application_history_full_screen/widgets/listmainchef_item_widget.dart';
import 'package:dineconnect/core/app_export.dart';
import 'package:dineconnect/widgets/app_bar/appbar_image.dart';
import 'package:dineconnect/widgets/app_bar/appbar_subtitle.dart';
import 'package:dineconnect/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ApplicationHistoryFullScreen extends StatelessWidget {
  const ApplicationHistoryFullScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: 91.v,
                leadingWidth: 37.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 6.h, bottom: 8.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                title: AppbarSubtitle(
                    text: "Application History",
                    margin: EdgeInsets.only(left: 10.h))),
            body: ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0.v),
                      child: SizedBox(
                          width: double.maxFinite,
                          child: Divider(
                              height: 1.v,
                              thickness: 1.v,
                              color: theme.colorScheme.onError)));
                },
                itemCount: 2,
                itemBuilder: (context, index) {
                  return ListmainchefItemWidget();
                })));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
