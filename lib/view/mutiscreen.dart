import 'dart:io';

import 'package:ata_auto_app/controller/routhpage.dart';
import 'package:ata_auto_app/view/tall_me_screen.dart';
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

  final List<Widget> _widgetOptions = <Widget>[
    const Home_Page(),
    const Garage_Screen(),
    const Shop_Screen(),
    const DTC_Screen(),
    const Training_Screen(),
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
                      child: Container(
                        height: height * 0.15,
                        width: width * 0.3,
                        decoration: BoxDecoration(
                            color: colorBlue,
                            borderRadius: BorderRadius.circular(height * 0.1)),
                        child: Center(
                          child: Text(
                            'Profile',
                            style: gettextstylewhitesmaill(context),
                          ),
                        ),
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
                            'ID :',
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.language),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Language'),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  'English',
                                  style: gettextstylgreytital(context),
                                ),
                                const Icon(Icons.arrow_right)
                              ],
                            ),
                          ),
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
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.phone),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Number :'),
                          )
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
                      child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.logout),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Logout'),
                                )
                              ],
                            ),
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.arrow_right)),
                          ]),
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
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.exit_to_app),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Exite'),
                                )
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
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Colors.grey.withOpacity(0.5),
                    )
                  ]),
              child: TextButton.icon(
                  onPressed: () async {
                    Get.to(Tell_User_About_UseApp());
                  },
                  icon: Icon(Icons.engineering),
                  label: Text('Tell Me')),
            ),
          )
        ],
      ),
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
