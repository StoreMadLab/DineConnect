import 'package:dineconnect/core/utils/image_constant.dart';
import 'package:dineconnect/core/utils/size_utils.dart';
import 'package:dineconnect/presentation/settings_screen/settings_screen.dart';
import 'package:dineconnect/theme/custom_button_style.dart';
import 'package:dineconnect/theme/custom_text_style.dart';
import 'package:dineconnect/theme/theme_helper.dart';
import 'package:dineconnect/widgets/app_bar/appbar_image_1.dart';
import 'package:dineconnect/widgets/app_bar/custom_app_bar.dart';
import 'package:dineconnect/widgets/custom_elevated_button.dart';
import 'package:dineconnect/widgets/custom_image_view.dart';
import 'package:dineconnect/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class AddEmployee extends StatelessWidget {
    AddEmployee({super.key});

  TextEditingController fullNameController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController locationController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          centerTitle: true,
          title: AppbarImage1(
              imagePath: ImageConstant.imgDineconnectlogosblack)),
      body: Container(
        child: Column(
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
                          child: Text("Employees",
                              style: theme.textTheme.headlineSmall))
                    ])),

            SizedBox(height: 9.v),
            Divider(),

            Form(
                key: _formKey,
                child: Column(

                )
            )
          ],
        ),
      ),
    );
  }
}
