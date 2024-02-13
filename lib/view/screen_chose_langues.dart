import 'package:ata_auto_app/responsive/responsive.dart';
import 'package:ata_auto_app/view/sigin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/translate.dart';

class Chose_languses extends StatelessWidget {
  Chose_languses({super.key});
  final Translatedata translate = Get.put(Translatedata());
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
          child: Container(
        width: width * 0.8,
        height: height * 0.3,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                color: Colors.grey.withOpacity(0.5),
              ),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: width * 0.15,
                            height: width * 0.15,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(width * 0.075),
                                image: const DecorationImage(
                                    image: AssetImage('asset/english.webp'),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'English',
                            style: gettextstylblackname(context),
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () async {
                          translate.check.value = false;
                          Get.to(Signin_Screen());
                        },
                        icon: const Icon(
                          Icons.keyboard_arrow_right_sharp,
                          size: 35,
                        ))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: width * 0.15,
                            height: width * 0.15,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(width * 0.075),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'asset/Flag_of_Cambodia_Flat_Round.png'),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Khmer',
                            style: gettextstylblackname(context),
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () async {
                          translate.check.value = true;
                          Get.to(Signin_Screen());
                        },
                        icon: const Icon(
                          Icons.keyboard_arrow_right_sharp,
                          size: 35,
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
