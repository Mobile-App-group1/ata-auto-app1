import 'package:ata_auto_app/view/all_shop_home.dart';
import 'package:ata_auto_app/view/category_shop_product.dart';
import 'package:ata_auto_app/view/datalist_shop.dart';
import 'package:ata_auto_app/widget/product.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/translate.dart';
import '../model/pupulershop.dart';
import '../responsive/responsive.dart';

// ignore: camel_case_types
class Shop_Screen extends StatelessWidget {
  Shop_Screen({super.key});
  final Translatedata translate = Get.put(Translatedata());
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
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
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(
              () => Text(
                translate.check.value == false ? 'Shop' : 'ហាង',
                style: gettextstylebluebold(context),
              ),
            ),
            GestureDetector(
                onTap: () => Get.to(All_Shop_Home()),
                child: Obx(
                  () => Text(
                    translate.check.value == false
                        ? 'All shop'
                        : 'គ្រប់ហាងទាំងអស់',
                    style: gettextstyleblueboldunderline(context),
                  ),
                ))
          ],
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      SizedBox(
          height: height * 0.14,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: pupularshop.length,
              itemBuilder: (BuildContext context, int index) {
                return Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () async {
                            Get.to(Datalist_shop());
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Container(
                              width: width * 0.15,
                              height: width * 0.15,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(blurRadius: 4, color: Colors.grey)
                                  ],
                                  borderRadius:
                                      BorderRadius.circular(width * 0.075)),
                              child: const Center(child: Text('Logo')),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(pupularshop[index].name,
                            style: gettextstylebluelogo(context))
                      ],
                    ),
                  )
                ]);
              })),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(
              () => Text(translate.check.value == false ? 'Product' : 'ទំនិញ',
                  style: gettextstylebluebold(context)),
            ),
            GestureDetector(
                onTap: () async => Get.to(CategoryScreen()),
                child: Obx(
                  () => Text(
                    translate.check.value == false ? 'Category' : 'ប្រភេទទំនិញ',
                    style: gettextstyleblueboldunderline(context),
                  ),
                ))
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
            childAspectRatio: (1 / 1 / 1),
            clipBehavior: Clip.antiAlias,
            children: List.generate(4, (index) {
              return ProductItem(translate: translate);
            })),
      ),
    ])));
  }
}
