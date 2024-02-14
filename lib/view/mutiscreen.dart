import 'dart:io';
import 'package:ata_auto_app/controller/routhpage.dart';
import 'package:ata_auto_app/controller/translate.dart';
import 'package:ata_auto_app/view/signup_screen.dart';
import 'package:ata_auto_app/view/tell_use_about_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ata_auto_app/view/home_page.dart';
import 'package:ata_auto_app/view/garage.dart';
import 'package:ata_auto_app/view/shop_screen.dart';
import 'package:ata_auto_app/view/dtc_screen.dart';
import 'package:ata_auto_app/view/trainging_screen.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import '../responsive/responsive.dart';

class RoutesPage extends StatelessWidget {
  final RoutesController routesController = Get.put(RoutesController());
  final Translatedata translate = Get.put(Translatedata());
  final List<Widget> _widgetOptions = <Widget>[
    Home_Page(),
    Garage_Screen(),
    Shop_Screen(),
    DTC_Screen(),
    Training_Screen(),
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(
        child: SizedBox(
          height: height,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Container(
                            height: height * 0.15,
                            width: width * 0.3,
                            decoration: BoxDecoration(
                                color: colorBlue,
                                borderRadius:
                                    BorderRadius.circular(height * 0.1)),
                            child: const Center(
                                child: Icon(
                              Icons.person,
                              size: 50,
                              color: colorsWhite,
                            )),
                          ),
                          Positioned(
                              bottom: 0,
                              right: 8,
                              child: Container(
                                width: width * 0.1,
                                height: width * 0.1,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(width * 0.05),
                                    color: colorBlue,
                                    border: Border.all(
                                        width: 1, color: colorsWhite)),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.camera_alt,
                                      color: colorsWhite,
                                    )),
                              ))
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'User Name',
                            style: gettextstylblackdesription(context),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Email ',
                            style: gettextstylblackdesription(context),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Card(
                    child: SizedBox(
                      height: height * 0.08,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.phone),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Obx(
                                () => Text(translate.check.value == false
                                    ? 'Contact :'
                                    : 'លេខទំនាក់ទំនង'),
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Card(
                    child: SizedBox(
                      height: height * 0.08,
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.language),
                                ),
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Obx(
                                      () => Text(translate.check.value == false
                                          ? 'language :'
                                          : 'ភាសារ'),
                                    ))
                              ],
                            ),
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: width * 0.3,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          width: 1,
                                          color: Colors.blue.shade400)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      GestureDetector(
                                          onTap: () async {
                                            translate.CheckTracslate();
                                          },
                                          child: Obx(
                                            () => Container(
                                              width: width * 0.145,
                                              decoration: BoxDecoration(
                                                  color: translate.check ==
                                                          false
                                                      ? Colors.blue[400]
                                                      : colorsWhite,
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  10),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  10))),
                                              child: Center(
                                                child: Text(
                                                  'En',
                                                  style: TextStyle(
                                                      color: translate.check ==
                                                              false
                                                          ? colorsWhite
                                                          : Colors.grey,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          )),
                                      GestureDetector(
                                          onTap: () async {
                                            translate.CheckTracslate();
                                          },
                                          child: Obx(
                                            () => Container(
                                              width: width * 0.145,
                                              decoration: BoxDecoration(
                                                  color: translate.check ==
                                                          false
                                                      ? colorsWhite
                                                      : Colors.blue[400],
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                          topRight:
                                                              Radius.circular(
                                                                  10),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  10))),
                                              child: Center(
                                                child: Text('Kh',
                                                    style: TextStyle(
                                                        color:
                                                            translate.check ==
                                                                    false
                                                                ? colorBlue
                                                                : colorsWhite,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              ),
                                            ),
                                          )),
                                    ],
                                  ),
                                )),
                          ]),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () async {
                      Get.to(Tell_User());
                    },
                    child: Card(
                      child: SizedBox(
                        height: height * 0.08,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.engineering),
                                ),
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Obx(
                                      () => Text(translate.check.value == false
                                          ? 'Tell Me :'
                                          : 'ប្រាប់ខ្ញុំ'),
                                    ))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () async => Get.to(SignUp_Screen()),
                    child: Card(
                      child: SizedBox(
                        height: height * 0.08,
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.logout),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Obx(
                                        () => Text(
                                            translate.check.value == false
                                                ? 'Logout :'
                                                : 'ចេញពីចាខោន'),
                                      ))
                                ],
                              ),
                              const Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.arrow_right)),
                            ]),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      if (Platform.isAndroid) {
                        SystemNavigator.pop();
                      } else if (Platform.isIOS) {
                        exit(0);
                      }
                    },
                    child: Card(
                      child: SizedBox(
                        height: height * 0.08,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.exit_to_app),
                                ),
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Obx(
                                      () => Text(translate.check.value == false
                                          ? 'Exite :'
                                          : 'ចេញពីកម្មវិធី'),
                                    ))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
        ),
      ),
      appBar: AppBar(),
      body: Obx(() => _widgetOptions[routesController.selectedIndex.value]),
      bottomNavigationBar: Obx(() => FlashyTabBar(
            onItemSelected: routesController.changeIndex,
            selectedIndex: routesController.selectedIndex.value,
            shadows: const [
              BoxShadow(
                  blurRadius: 4, color: Colors.grey, offset: Offset(10, 4))
            ],
            animationDuration: Durations.long1,
            backgroundColor: colorBlue,
            items: [
              FlashyTabBarItem(
                activeColor: colorsWhite,
                icon: const Icon(
                  Icons.home_sharp,
                  color: Colors.black,
                ),
                title: const Text(
                  'Home',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              FlashyTabBarItem(
                activeColor: colorsWhite,
                icon: const Icon(
                  Icons.garage_outlined,
                  color: Colors.black,
                ),
                title: const Text(
                  'Garage',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              FlashyTabBarItem(
                activeColor: colorsWhite,
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
                title: const Text(
                  'Shop',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              FlashyTabBarItem(
                activeColor: colorsWhite,
                icon: const Icon(
                  Icons.engineering_rounded,
                  color: Colors.black,
                ),
                title: const Text(
                  'DTC',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              FlashyTabBarItem(
                activeColor: colorsWhite,
                icon: const Icon(
                  Icons.desktop_mac_sharp,
                  color: Colors.black,
                ),
                title: const Text(
                  'Training',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          )),
    );
  }
}
