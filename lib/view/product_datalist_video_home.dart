import 'package:ata_auto_app/widget/boxbutton.dart';
import 'package:ata_auto_app/widget/product_video.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/translate.dart';
import '../model/product_tr_video.dart';
import '../responsive/responsive.dart';

class Datalist_Product_Video_Home extends StatelessWidget {
  Datalist_Product_Video_Home({super.key});
  Translatedata translate = Get.put(Translatedata());
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: height * 0.37,
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
                        'Videro',
                        style: gettextstylblackname(context),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    translate.check.value == false
                        ? videoTrProduct[0].name_eg
                        : videoTrProduct[0].name_kh,
                    style: gettextstylewhite(context),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    translate.check.value == false
                        ? videoTrProduct[0].tital_eg
                        : videoTrProduct[0].tital_kh,
                    style: gettextstylwhite(context),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    translate.check.value == false
                        ? videoTrProduct[0].disciption_eg
                        : videoTrProduct[0].disciption_kh,
                    style: gettextstylwhite(context),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.count(
                shrinkWrap: true,
                primary: false,
                crossAxisCount: 1,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: (1 / 1 / 0.4),
                clipBehavior: Clip.antiAlias,
                children: List.generate(4, (index) {
                  return Product_Video(translate: translate);
                })),
          ),
        ]),
      ),
      bottomNavigationBar: ButtonBarTheme(
          data: const ButtonBarThemeData(),
          child: Container(
            height: height * 0.08,
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
            child: Row(
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
                      name: 'Facebook'),
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
          )),
    );
  }
}
