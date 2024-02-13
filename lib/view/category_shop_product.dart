import 'package:ata_auto_app/responsive/responsive.dart';
import 'package:ata_auto_app/widget/product.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/translate.dart';
import 'datalist_prodcut_screen.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});
  final Translatedata translate = Get.put(Translatedata());
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
                              return ProductItem(translate: translate);
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
