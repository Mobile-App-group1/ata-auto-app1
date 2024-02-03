import 'package:ata_auto_app/responsive/responsive.dart';
import 'package:ata_auto_app/view/garage_product.dart';
import 'package:ata_auto_app/widget/dailogsearch.dart';
import 'package:ata_auto_app/widget/form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';

class Garage_Screen extends StatelessWidget {
  const Garage_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    TextEditingController textsearch = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                child: Container(
                  width: width,
                  height: height * 0.05,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 4, color: Colors.grey.withOpacity(0.5))
                      ]),
                  child: TextButton(
                      onPressed: () async {
                        ShowdialogSeach(context);
                      },
                      child: Text('Option Seach')),
                )),
            InputSearch(
                hintText: 'Seach Product',
                controller: textsearch,
                icons: Icon(Icons.search_rounded)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                  shrinkWrap: true,
                  primary: false,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  scrollDirection: flipAxis(Axis.horizontal),
                  childAspectRatio: (1 / 1 / 1.1),
                  clipBehavior: Clip.antiAlias,
                  children: List.generate(8, (index) {
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
                                onTap: () async => Get.to((Garage_Product())),
                                child: Container(
                                  height: height * 0.13,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: colorBlue),
                                  child: const Center(
                                    child: Text('Logo Garage'),
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
                              padding: const EdgeInsets.only(left: 8, top: 8),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.location_on,
                                    color: Colors.red,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8),
                                    child: Text(
                                      'Location',
                                      style: gettextstylered(context),
                                    ),
                                  ),
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
                  })),
            ),
          ],
        ),
      ),
    );
  }
}
