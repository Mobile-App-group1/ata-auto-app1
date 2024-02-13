import 'package:ata_auto_app/controller/translate.dart';
import 'package:ata_auto_app/view/datalist_prodcut_screen.dart';
import 'package:ata_auto_app/view/video_all.dart';
import 'package:ata_auto_app/widget/product.dart';
import 'package:ata_auto_app/widget/product_video.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../responsive/responsive.dart';
import 'home_all_product.dart';

class Home_Page extends StatelessWidget {
  Home_Page({super.key});
  final Translatedata translate = Get.put(Translatedata());
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Swiper(
              autoplay: true,
              autoplayDelay: 5000,
              itemCount: 5,
              layout: SwiperLayout.STACK,
              itemWidth: width * 0.9,
              itemHeight: 250,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Center(child: Text('Promot ${index} Iamge')),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(
                  () => Text(
                    translate.check.value == false ? 'Product' : 'មុខទំនិញ',
                    style: gettextstylebluebold(context),
                  ),
                ),
                GestureDetector(
                  onTap: () async => Get.to(All_Product()),
                  child: Obx(
                    () => Text(
                      translate.check.value == false
                          ? 'All Product'
                          : 'ទំនិញទាំងអស់',
                      style: gettextstyleblueboldunderline(context),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.count(
                shrinkWrap: true,
                primary: false,
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                scrollDirection: flipAxis(Axis.horizontal),
                childAspectRatio: (1 / 1 / 1.2),
                clipBehavior: Clip.antiAlias,
                children: List.generate(4, (index) {
                  return ProductItem(translate: translate);
                })),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(
                      () => Text(
                        translate.check.value == false ? 'Video' : 'វិឌីអូរ',
                        style: gettextstylebluebold(context),
                      ),
                    ),
                    GestureDetector(
                      onTap: () async => Get.to(All_Videro_Home()),
                      child: Obx(
                        () => Text(
                          translate.check.value == false
                              ? '​All Video'
                              : 'វិឌីអូរទាំងអស់',
                          style: gettextstyleblueboldunderline(context),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              GridView.count(
                  shrinkWrap: true,
                  primary: false,
                  crossAxisCount: 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: (1 / 0.4),
                  clipBehavior: Clip.antiAlias,
                  children: List.generate(4, (index) {
                    return Product_Video(translate: translate);
                  })),
            ],
          )
        ],
      )),
    );
  }
}
