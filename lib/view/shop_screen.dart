import 'package:ata_auto_app/view/all_shop_home.dart';
import 'package:ata_auto_app/view/category_shop_product.dart';
import 'package:ata_auto_app/view/datalist_shop.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model/pupulershop.dart';
import '../responsive/responsive.dart';
import 'datalist_prodcut_screen.dart';

// ignore: camel_case_types
class Shop_Screen extends StatelessWidget {
  const Shop_Screen({super.key});
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
            Text(
              'Popular Shop',
              style: gettextstylebluebold(context),
            ),
            GestureDetector(
              onTap: () => Get.to(All_Shop_Home()),
              child: Text(
                'Seen All',
                style: gettextstyleblueboldunderline(context),
              ),
            )
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
            Text('Product', style: gettextstylebluebold(context)),
            GestureDetector(
              onTap: () async => Get.to(CategoryScreen()),
              child: Text(
                'Category',
                style: gettextstyleblueboldunderline(context),
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
            childAspectRatio: (1 / 1 / 1),
            clipBehavior: Clip.antiAlias,
            children: List.generate(4, (index) {
              return Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 4, color: Colors.grey.withOpacity(0.5))
                    ]),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () async => Get.to(Datalist_Product_Home()),
                          child: Container(
                            height: height * 0.13,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Tital',
                              style: gettextstylgreytital(context),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
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
    ])));
  }
}
