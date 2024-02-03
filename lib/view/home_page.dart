import 'package:ata_auto_app/view/datalist_prodcut_screen.dart';
import 'package:ata_auto_app/view/video_all.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../responsive/responsive.dart';
import 'home_all_product.dart';
import 'product_datalist_video_home.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
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
                Text('Product', style: gettextstylebluebold(context)),
                GestureDetector(
                  onTap: () async => Get.to(All_Product()),
                  child: Text(
                    'All Product',
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
                                  Get.to(Datalist_Product_Home()),
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
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Videro', style: gettextstylebluebold(context)),
                    GestureDetector(
                      onTap: () async => Get.to(All_Videro_Home()),
                      child: Text(
                        'All free video',
                        style: gettextstyleblueboldunderline(context),
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
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 4,
                                color: Colors.grey.withOpacity(0.5))
                          ]),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () async =>
                                  Get.to((Datalist_Product_Video_Home())),
                              child: Container(
                                height: height,
                                width: width * 0.3,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: colorBlue),
                                child: const Center(
                                  child: Text('image Pr videro'),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Text(
                                      'Name',
                                      style: gettextstylblackname(context),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Text(
                                      'Tital',
                                      style: gettextstylgreytital(context),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Text(
                                        'Time',
                                        style: gettextstylgreytital(context),
                                      ),
                                    ),
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    );
                  })),
            ],
          )
        ],
      )),
    );
  }
}
