import 'package:ata_auto_app/responsive/responsive.dart';
import 'package:ata_auto_app/responsive/treeview.dart';
import 'package:ata_auto_app/view/payment_cours_training.dart';
import 'package:ata_auto_app/view/product_play_video_list.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/pupulershop.dart';

class Training_Screen extends StatelessWidget {
  const Training_Screen({super.key});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: <Widget>[
              ButtonsTabBar(
                backgroundColor: colorBlue,
                unselectedBackgroundColor: Colors.grey[300],
                unselectedLabelStyle: gettextstylebg(context),
                labelStyle: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
                tabs: const [
                  Tab(
                    icon: Icon(Icons.play_circle_fill_outlined),
                    text: 'Playlist',
                  ),
                  Tab(
                    icon: Icon(Icons.document_scanner),
                    text: 'Document',
                  ),
                  Tab(icon: Icon(Icons.desktop_mac_outlined), text: 'Cours'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.count(
                          shrinkWrap: true,
                          primary: false,
                          crossAxisCount: 1,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          scrollDirection: flipAxis(Axis.horizontal),
                          childAspectRatio: (1 / 1 / 0.7),
                          clipBehavior: Clip.antiAlias,
                          children: List.generate(10, (index) {
                            return Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 4,
                                        color: Colors.grey.withOpacity(0.5))
                                  ]),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: GestureDetector(
                                        onTap: () async =>
                                            Get.to(Product_Playlist()),
                                        child: Container(
                                          height: height * 0.2,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: colorBlue),
                                          child: const Center(
                                            child: Text('image'),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Text(
                                        'Name :',
                                        style: gettextstylblackname(context),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Text(
                                        'Discription :',
                                        style: gettextstylgreytital(context),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Tital',
                                            style:
                                                gettextstylgreytital(context),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(right: 8),
                                            child: Text(
                                              'Price',
                                              style: gettextstylered(context),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]),
                            );
                          })),
                    ),
                    TreeViewFile(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.count(
                          shrinkWrap: true,
                          primary: false,
                          crossAxisCount: 1,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          scrollDirection: flipAxis(Axis.horizontal),
                          childAspectRatio: (1 / 1 / 0.5),
                          clipBehavior: Clip.antiAlias,
                          children: List.generate(10, (index) {
                            return Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 4,
                                        color: Colors.grey.withOpacity(0.5))
                                  ]),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: GestureDetector(
                                        onTap: () async =>
                                            Get.to(Training_Cours_Pay()),
                                        child: Container(
                                          height: height * 0.2,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: colorBlue),
                                          child: Center(
                                            child: Text(
                                              'image about cours',
                                              style: gettextstylewhite(context),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
                            );
                          })),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
