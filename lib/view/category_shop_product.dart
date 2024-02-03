import 'package:ata_auto_app/responsive/responsive.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'datalist_prodcut_screen.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: DefaultTabController(
          length: 6,
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
                    text: 'Categor1',
                  ),
                  Tab(
                    text: 'Categor2',
                  ),
                  Tab(text: 'Category3'),
                  Tab(text: 'Category4'),
                  Tab(text: 'Category5'),
                  Tab(text: 'Category6'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    for (int i = 0; i < 6; i++)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GridView.count(
                            shrinkWrap: true,
                            primary: false,
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            scrollDirection: flipAxis(Axis.horizontal),
                            childAspectRatio: (1 / 1 / 1),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: GestureDetector(
                                          onTap: () async =>
                                              Get.to(Datalist_Product_Home()),
                                          child: Container(
                                            height: height * 0.3,
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
                                          'Name',
                                          style: gettextstylblackname(context),
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
                                              padding: const EdgeInsets.only(
                                                  right: 8),
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
