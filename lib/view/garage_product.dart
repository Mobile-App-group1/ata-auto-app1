import 'package:ata_auto_app/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/translate.dart';
import '../model/garage_tr.dart';
import '../widget/boxbutton.dart';

class Garage_Product extends StatelessWidget {
  Garage_Product({super.key});
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
              width: width,
              height: height * 0.5,
              decoration: const BoxDecoration(
                  color: colorsWhite,
                  boxShadow: [BoxShadow(blurRadius: 4, color: Colors.grey)],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: height * 0.25,
                    width: width,
                    decoration: BoxDecoration(
                        color: Colors.blue[400],
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        'IMG',
                        style: gettextstylewhitebold(context),
                      ),
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: width * 0.2,
                        height: height * 0.1,
                        decoration: BoxDecoration(
                            color: colorBlue,
                            borderRadius: BorderRadius.circular(height * 0.05)),
                        child: Center(
                          child:
                              Text('LOGO', style: gettextstylewhite(context)),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          translate.check.value == false
                              ? garage_tr[0].name_eg
                              : garage_tr[0].name_kh,
                          style: gettextstyltital(context),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(),
                          child: Row(
                            children: [
                              Text('Map :'),
                              Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: Text(
                                  'Location',
                                  style: gettextstylblack(context),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          translate.check.value == false
                              ? garage_tr[0].car_expert_eg
                              : garage_tr[0].car_expert_kh,
                          style: gettextstylblack(context),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const Icon(
                          Icons.thumb_up,
                          color: Colors.grey,
                        ),
                        Text(
                          translate.check.value == false
                              ? garage_tr[0].count_like_eg
                              : garage_tr[0].count_like_kh,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.thumb_down,
                          color: Colors.grey,
                        ),
                        Text(
                          translate.check.value == false
                              ? garage_tr[0].count_unlike_eg
                              : garage_tr[0].count_unlike_kh,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.comment,
                          color: Colors.grey,
                        ),
                        Text(
                          translate.check.value == false
                              ? garage_tr[0].comment_eg
                              : garage_tr[0].comment_kh,
                        )
                      ],
                    )
                  ],
                )
              ]),
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
                  childAspectRatio: (1 / 0.55),
                  clipBehavior: Clip.antiAlias,
                  children: List.generate(10, (index) {
                    return Card(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: width,
                                height: height * 0.17,
                                decoration: BoxDecoration(
                                    color: colorBlue,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    'IMG',
                                    style: gettextstylewhite(context),
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text('Caption :'),
                            )
                          ]),
                    );
                  })),
            )
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
          ),
        ));
  }
}
