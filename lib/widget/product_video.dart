import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/translate.dart';
import '../model/product_tr_video.dart';
import '../responsive/responsive.dart';
import '../view/product_datalist_video_home.dart';

class Product_Video extends StatelessWidget {
  Product_Video({super.key, required this.translate});
  Translatedata translate = Get.put(Translatedata());
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.sizeOf(context).width;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(blurRadius: 4, color: Colors.grey.withOpacity(0.5))
          ]),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () async => Get.to((Datalist_Product_Video_Home())),
              child: Container(
                height: height,
                width: width * 0.3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: colorBlue),
                child: const Center(
                  child: Text('image Pr videro'),
                ),
              ),
            ),
          ),
          SizedBox(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Obx(
                  () => Text(
                    translate.check.value == false
                        ? videoTrProduct[0].name_eg
                        : videoTrProduct[0].name_kh,
                    style: gettextstylblackname(context),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Obx(
                  () => Text(
                    translate.check.value == false
                        ? videoTrProduct[0].tital_eg
                        : videoTrProduct[0].tital_kh,
                    style: gettextstylblackname(context),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Obx(
                    () => Text(
                      translate.check.value == false
                          ? videoTrProduct[0].time_eg
                          : videoTrProduct[0].time_kh,
                      style: gettextstylgreytital(context),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
