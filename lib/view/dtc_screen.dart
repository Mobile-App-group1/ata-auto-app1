import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/translate.dart';

class DTC_Screen extends StatelessWidget {
  DTC_Screen({super.key});
  Translatedata translate = Get.put(Translatedata());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Search Product',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.count(
                shrinkWrap: true,
                primary: false,
                crossAxisCount: 1,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: (1 / 0.22),
                clipBehavior: Clip.antiAlias,
                children: List.generate(1, (index) {
                  return GestureDetector(
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Obx(
                                () => Text(translate.check.value == false
                                    ? 'Misstake'
                                    : 'កំហូច'),
                              )
                            ]),
                      ),
                    ),
                  );
                })),
          )
        ]),
      ),
    );
  }
}
