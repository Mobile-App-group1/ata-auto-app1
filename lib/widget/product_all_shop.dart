import 'package:ata_auto_app/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/translate.dart';
import '../model/shop_product_tr.dart';
import '../view/datalist_shop.dart';

class Product_all_Shop extends StatelessWidget {
  Product_all_Shop({super.key, required this.translate});
  Translatedata translate = Get.put(Translatedata());
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(blurRadius: 4, color: Colors.grey.withOpacity(0.5))
          ]),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () async => Get.to((Datalist_shop())),
            child: Container(
              height: height * 0.13,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: colorBlue),
              child: const Center(
                child: Text('Logo Garage'),
              ),
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Obx(
              () => Text(
                translate.check.value == false
                    ? shop_product[0].name_eg
                    : shop_product[0].name_kh,
                style: gettextstylblackname(context),
              ),
            )),
        Padding(
          padding: const EdgeInsets.only(left: 8, top: 8),
          child: Row(
            children: [
              const Icon(
                Icons.location_on,
                color: Colors.red,
              ),
              Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Obx(
                    () => Text(
                      translate.check.value == false
                          ? shop_product[0].locatione_eg
                          : shop_product[0].locatione_kh,
                      style: gettextstylered(context),
                    ),
                  )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              for (int i = 0; i < 5; i++)
                const Icon(
                  Icons.star,
                  size: 13,
                  color: Colors.amberAccent,
                )
            ],
          ),
        )
      ]),
    );
  }
}
