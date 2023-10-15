import 'package:dineconnect/core/app_export.dart';
import 'package:dineconnect/widgets/custom_icon_button.dart';
import 'package:dineconnect/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:dineconnect/services/firebase_service.dart';

// ignore_for_file: must_be_immutable
class SettingsScreen extends StatelessWidget {
  SettingsScreen({Key? key}) : super(key: key);

  String fullName = "";
  String phoneNumber = "";
  String location = "";

  FirebaseService firebaseService = FirebaseService();

  TextEditingController userNameController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController locationController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    phoneNumber = firebaseService.getPhoneNumber()!;
    userNameController.text = fullName;
    phoneNumberController.text = phoneNumber;
    locationController.text = location;

    //fetch user data
    firebaseService.fetchUserData(phoneNumber).then((String? name){
      fullName=name!;
    });
    firebaseService.fetchLocation(phoneNumber).then((String? loc){
      location=loc!;
    });

    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 11.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgDineconnectlogosblack,
                          height: 33.v,
                          width: 349.h,
                          margin: EdgeInsets.only(left: 2.h)),
                      Padding(
                          padding: EdgeInsets.only(left: 14.h, top: 10.v),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowleft,
                                height: 19.v,
                                width: 24.h,
                                margin: EdgeInsets.symmetric(vertical: 2.v),
                                onTap: () {
                                  onTapImgArrowleftone(context);
                                }),
                            Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: Text("Settings",
                                    style: theme.textTheme.headlineSmall))
                          ])),
                      SizedBox(height: 12.v),
                      Divider(),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: 322.h,
                              margin:
                                  EdgeInsets.fromLTRB(22.h, 14.v, 16.h, 5.v),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 45.h, vertical: 38.v),
                              decoration: AppDecoration.fillPrimary.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder30),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                            height: 103.v,
                                            width: 114.h,
                                            margin:
                                                EdgeInsets.only(right: 53.h),
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomRight,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgEmojimanoffice,
                                                      height: 93.v,
                                                      width: 96.h,
                                                      alignment:
                                                          Alignment.topLeft),
                                                  CustomIconButton(
                                                      height: 41.adaptSize,
                                                      width: 41.adaptSize,
                                                      padding:
                                                          EdgeInsets.all(8.h),
                                                      decoration:
                                                          IconButtonStyleHelper
                                                              .fillOrange,
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgCameraGray90001))
                                                ]))),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 4.h, top: 27.v),
                                        child: Text("Full Name",
                                            style: theme.textTheme.titleLarge)),
                                    CustomTextFormField(
                                        controller: userNameController,
                                        textStyle: TextStyle(
                                            color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        margin: EdgeInsets.only(
                                            top: 11.v, right: 15.h),
                                        borderDecoration:
                                            TextFormFieldStyleHelper
                                                .fillOnPrimaryContainer,
                                        fillColor: theme
                                            .colorScheme.onPrimaryContainer),
                                    SizedBox(height: 14.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 4.h, top: 27.v),
                                        child: Text("Phone Number",
                                            style: theme.textTheme.titleLarge)),
                                    CustomTextFormField(
                                        controller: phoneNumberController,
                                        textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        margin: EdgeInsets.only(
                                            top: 12.v, right: 15.h),
                                        textInputAction: TextInputAction.done,
                                        borderDecoration:
                                            TextFormFieldStyleHelper
                                                .fillOnPrimaryContainer,
                                        fillColor: theme
                                            .colorScheme.onPrimaryContainer),
                                    SizedBox(height: 14.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 4.h, top: 27.v),
                                        child: Text("Location",
                                            style: theme.textTheme.titleLarge)),
                                    CustomTextFormField(
                                        controller: locationController,
                                        textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        margin: EdgeInsets.only(
                                            top: 12.v, right: 15.h),
                                        textInputAction: TextInputAction.done,
                                        borderDecoration:
                                        TextFormFieldStyleHelper
                                            .fillOnPrimaryContainer,
                                        fillColor: theme
                                            .colorScheme.onPrimaryContainer),
                                    SizedBox(height: 11.v),
                                    Center(
                                      child: ElevatedButton(
                                          onPressed: (){
                                            updateUserData();
                                          },
                                          child:Text("Edit"),
                                        style: ButtonStyle(
                                          backgroundColor: MaterialStateProperty.all<Color>(Colors.red[300]!),
                                          minimumSize: MaterialStateProperty.all<Size>(Size(150, 50)),
                                        ),

                                      ),
                                    ),
                                  ])))
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
  void updateUserData() {
    // Get the updated values from the text controllers
    String updatedFullName = userNameController.text;
    String updatedLocation = locationController.text;

    // Check if the data has been changed
    if (updatedFullName != fullName) {
      // Update full name in the database
      firebaseService.updateFullName(phoneNumber, updatedFullName);
      fullName = updatedFullName; // Update the displayed value
    }

    if (updatedLocation != location) {
      // Update location in the database
      firebaseService.updateLocation(phoneNumber, updatedLocation);
      location = updatedLocation; // Update the displayed value
    }
  }
}
