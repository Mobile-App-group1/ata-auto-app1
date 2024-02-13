import 'package:ata_auto_app/controller/translate.dart';
import 'package:ata_auto_app/view/alert_buy_sefety.dart';
import 'package:ata_auto_app/widget/boxbutton.dart';
import 'package:ata_auto_app/widget/product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model/translate_product.dart';
import '../responsive/responsive.dart';

class Datalist_Product_Home extends StatelessWidget {
  Datalist_Product_Home({super.key});
  final Translatedata translate = Get.put(Translatedata());
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: height * 0.35,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                color: Colors.blue[400]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: width,
                    height: height * 0.22,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Center(
                      child: Text(
                        'IMG',
                        style: gettextstylblackname(context),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Obx(
                    () => Text(
                      translate.check.value == false
                          ? product_tr[0].name_eg
                          : product_tr[0].name_kh,
                      style: gettextstylblackname(context),
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Obx(
                      () => Text(
                        translate.check.value == false
                            ? product_tr[0].price_eg
                            : product_tr[0].price_kh,
                        style: gettextstylered(context),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: width,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(blurRadius: 4, color: Colors.grey.withOpacity(0.5))
                ],
                color: colorsWhite,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Obx(
                  () => Text(
                    translate.check.value == false
                        ? product_tr[0].brand_eg
                        : product_tr[0].brand_kh,
                    style: gettextstylgreytexproduct(context),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Obx(
                  () => Text(
                    translate.check.value == false
                        ? product_tr[0].category_eg
                        : product_tr[0].category_kh,
                    style: gettextstylgreytexproduct(context),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Obx(
                  () => Text(
                    translate.check.value == false
                        ? product_tr[0].part_eg
                        : product_tr[0].part_kh,
                    style: gettextstylgreytexproduct(context),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Obx(
                  () => Text(
                    translate.check.value == false
                        ? product_tr[0].year_eg
                        : product_tr[0].year_kh,
                    style: gettextstylgreytexproduct(context),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Obx(
                  () => Text(
                    translate.check.value == false
                        ? product_tr[0].condition_eg
                        : product_tr[0].condition_kh,
                    style: gettextstylgreytexproduct(context),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GridView.count(
                  shrinkWrap: true,
                  primary: false,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: (1 / 1 / 1.1),
                  clipBehavior: Clip.antiAlias,
                  children: List.generate(4, (index) {
                    return ProductItem(translate: translate);
                  })),
            ]),
          ),
        ]),
      ),
      bottomNavigationBar: ButtonBarTheme(
          data: const ButtonBarThemeData(),
          child: Container(
            height: height * 0.14,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    color: Colors.grey.withOpacity(0.5),
                  )
                ],
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: width,
                    height: height * 0.05,
                    decoration: BoxDecoration(
                        color: colorsWhite,
                        border: Border.all(width: 1, color: Colors.red),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'safety',
                            style: gettextstylebluebold(context),
                          ),
                        ),
                        IconButton(
                            onPressed: () async {
                              DialogTipForUserBuy(context);
                            },
                            icon: const Icon(
                              Icons.security,
                              color: Colors.red,
                            ))
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () async {},
                      child: ButtonProduct(
                          backgrounColors: Colors.blue,
                          bordercolos: Colors.blue,
                          colorstext: Colors.white,
                          name: 'Telegram'),
                    ),
                    GestureDetector(
                      onTap: () async {},
                      child: ButtonProduct(
                          backgrounColors: Colors.white,
                          bordercolos: Colors.pink,
                          colorstext: Colors.pink,
                          name: 'Messeger'),
                    ),
                    GestureDetector(
                      onTap: () async {},
                      child: ButtonProduct(
                          backgrounColors: Colors.green,
                          bordercolos: Colors.green,
                          colorstext: Colors.white,
                          name: 'Call'),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
