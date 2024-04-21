import 'dart:io';

import 'package:dineconnect/classes/dish.dart';
import 'package:dineconnect/presentation/orders_screen/orders_screen.dart';
import 'package:dineconnect/services/firebase_service.dart';
import 'package:dineconnect/widgets/custom_text_form_field.dart';
import 'package:image_picker/image_picker.dart';

import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:path/path.dart' as Path;

import '../menu_screen/widgets/productinfo_item_widget.dart';
import 'package:dineconnect/core/app_export.dart';
import 'package:dineconnect/presentation/application_history_full_screen/application_history_full_Screen.dart';
import 'package:dineconnect/widgets/app_bar/appbar_image_1.dart';
import 'package:dineconnect/widgets/app_bar/custom_app_bar.dart';
import 'package:dineconnect/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {

  List<Dish> menuItem = [];

  TextEditingController dishController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  File? _image;
  late String? _uploadedFileURL;

  FirebaseService firebaseService = FirebaseService();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
          appBar: CustomAppBar(
              centerTitle: true,
              title: AppbarImage1(
                  imagePath: ImageConstant.imgDineconnectlogosblack)
          ),
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
                            child: Text("Menu",
                                style: theme.textTheme.headlineSmall)
                        ),
                      ]
                  )
              ),

              SizedBox(height: 9.v),

              Divider(),

              SizedBox(height: 9.v),

              Container(
                height: 150,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.amberAccent.shade200,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Text(
                              "Image:",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 5,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _image != null
                            ? Container(
                          child: Image.file(
                            _image!,
                            height: 70,
                            width: 100,
                          ),
                        )

                            : GestureDetector(
                              onTap: chooseFile,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Icon(
                                    Icons.add_box_outlined,
                                    size: 80,
                                  ),
                                ),
                        ),

                        // _image == null
                        // ? GestureDetector(
                        //   onTap: chooseFile,
                        //     child: Container(
                        //      decoration: BoxDecoration(
                        //       color: Colors.white,
                        //       borderRadius: BorderRadius.circular(10)
                        //     ),
                        //     child: Icon(
                        //       Icons.add_box_outlined,
                        //       size: 80,
                        //     ),
                        //   ),
                        // )
                        //     : Container(),
                        Column(
                          children: [
                            Text(
                                "Dish:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 28
                              ),
                            ),

                            SizedBox(height: 10,),

                            Text(
                              "Price:",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            CustomTextFormField(
                              width: 130.h,
                              fieldHeight: 10,
                              controller: dishController,
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),

                            SizedBox(height: 10,),

                            CustomTextFormField(
                              width: 130.h,
                              fieldHeight: 10,
                              controller: priceController,
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      _image != null
                          ? Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: ElevatedButton(
                        child: Container(
                              padding: EdgeInsets.only(left: 10),
                              width: 160,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Text(
                                  'Clear Selection',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ))
                        ),
                        onPressed: clearSelection,
                      ),
                          )
                          : Padding(
                        padding: const EdgeInsets.only(top: 8),
                            child: Container(
                        padding: EdgeInsets.only(left: 10),
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.red.shade300
                        ),
                        child: Text(
                            "Clear Selection",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                        ),
                      ),
                          ),

                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 8),
                        child: _image != null
                            ? ElevatedButton(
                          child: Container(
                            padding: EdgeInsets.only(left: 20),
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Text('Upload Data',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          onPressed: uploadFile,
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            onPrimary: Colors.white,
                          ),
                        ) :Container(
                          padding: EdgeInsets.only(left: 20),
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.blue,
                          ),
                          child: Text(
                            "Upload Data",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  ],
                ),
              ),

              SizedBox(height: 10,),
              Divider(),
              SizedBox(height: 10,),

              Expanded(
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  child: Column(
                    children: [
                      FutureBuilder<List<Dish>>(
                        future: firebaseService.fetchMenuItems(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState == ConnectionState.waiting) {
                            return Center(child: CircularProgressIndicator());
                          } else if (snapshot.hasError) {
                            return Center(child: Text('Error fetching menu items'));
                          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                            return Center(child: Text('No menu items available'));
                          } else {
                            List<Dish> menuItems = snapshot.data!;
                            return Container(
                              height: MediaQuery.of(context).size.height * 0.6,
                              child: GridView.builder(
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2, // Two items per row
                                  mainAxisSpacing: 5.0,
                                  crossAxisSpacing: 5.0,
                                  childAspectRatio: 1.2, // Aspect ratio of each item
                                ),
                                itemCount: menuItems.length,
                                itemBuilder: (context, index) {
                                  return ProductinfoItemWidget(
                                    Dish: menuItems[index].dish,
                                    price: menuItems[index].price,
                                    url: menuItems[index].url,
                                  );
                                },
                              ),
                            );
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
            bottomNavigationBar:
            CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })
        )
    );
  }

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

  void onTapImgArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  Future chooseFile() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      _image = File(pickedFile!.path);
    });
  }

  Future uploadFile() async {

    firebase_storage.Reference storageReference = firebase_storage.FirebaseStorage.instance
        .ref()
        .child('images/${Path.basename(_image!.path)}');

    firebase_storage.UploadTask uploadTask = storageReference.putFile(_image!);

    await uploadTask.whenComplete(() async {
      print('File Uploaded');
      storageReference.getDownloadURL().then((fileURL) {
        setState(() {
          if(fileURL != null && priceController != null && dishController != null) {
            _uploadedFileURL = fileURL;
            firebaseService.addMenuItem(dishController.text, priceController.text, _uploadedFileURL);
          }
        });
      });
    });
  }

  void clearSelection() {
    setState(() {
      _image = null;
      _uploadedFileURL = null;
    });
  }
}
