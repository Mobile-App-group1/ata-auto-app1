import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/translate.dart';
import '../model/translate_product.dart';
import '../responsive/responsive.dart';
import '../view/datalist_prodcut_screen.dart';

class ProductItem extends StatelessWidget {
  ProductItem({super.key, required this.translate});
  Translatedata translate = Get.put(Translatedata());

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(blurRadius: 4, color: Colors.grey.withOpacity(0.5))
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
                    borderRadius: BorderRadius.circular(10), color: colorBlue),
                child: const Center(
                  child: Text('image'),
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
            child: Align(
              alignment: Alignment.bottomRight,
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
          ),
        ],
      ),
    );
  }
}
