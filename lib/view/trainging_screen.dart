import 'package:ata_auto_app/model/product_tr_video.dart';
import 'package:ata_auto_app/responsive/responsive.dart';
import 'package:ata_auto_app/view/treeview.dart';
import 'package:ata_auto_app/view/payment_cours_training.dart';
import 'package:ata_auto_app/view/product_play_video_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/translate.dart';

class Training_Screen extends StatelessWidget {
  Training_Screen({super.key});
  Translatedata translate = Get.put(Translatedata());
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: <Widget>[
              TabBar(
                unselectedLabelStyle: gettextstylebg(context),
                labelStyle: TextStyle(
                    color: Colors.blue[400], fontWeight: FontWeight.bold),
                tabs: [
                  Obx(
                    () => Tab(
                      icon: const Icon(Icons.play_circle_fill_outlined),
                      text: translate.check == false
                          ? 'Play Video '
                          : 'មើលវីដីអូ',
                    ),
                  ),
                  Obx(() => Tab(
                        icon: Icon(Icons.document_scanner),
                        text: translate.check == false ? 'Document ' : 'ឯកសារ',
                      )),
                  Obx(
                    () => Tab(
                      icon: Icon(Icons.desktop_mac_outlined),
                      text: translate.check == false ? 'Course' : 'វគ្គសិក្សា',
                    ),
                  )
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.count(
                          shrinkWrap: true,
                          primary: false,
                          crossAxisCount: 1,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          scrollDirection: flipAxis(Axis.horizontal),
                          childAspectRatio: (1 / 1 / 0.7),
                          clipBehavior: Clip.antiAlias,
                          children: List.generate(10, (index) {
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
                                            Get.to(Product_Playlist()),
                                        child: Container(
                                          height: height * 0.2,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: colorBlue),
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
                                                ? videoTrProduct[0].name_eg
                                                : videoTrProduct[0].name_kh,
                                            style:
                                                gettextstylblackname(context),
                                          ),
                                        )),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Obx(
                                          () => Text(
                                            translate.check.value == false
                                                ? videoTrProduct[0]
                                                    .disciption_eg
                                                : videoTrProduct[0]
                                                    .disciption_kh,
                                            style:
                                                gettextstylgreytital(context),
                                          ),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Obx(
                                            () => Text(
                                              translate.check.value == false
                                                  ? videoTrProduct[0].tital_eg
                                                  : videoTrProduct[0].tital_kh,
                                              style:
                                                  gettextstylgreytital(context),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(right: 8),
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
                    TreeViewFile(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.count(
                          shrinkWrap: true,
                          primary: false,
                          crossAxisCount: 1,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          scrollDirection: flipAxis(Axis.horizontal),
                          childAspectRatio: (1 / 1 / 0.5),
                          clipBehavior: Clip.antiAlias,
                          children: List.generate(10, (index) {
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
                                            Get.to(Training_Cours_Pay()),
                                        child: Container(
                                          height: height * 0.2,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: colorBlue),
                                          child: Center(
                                            child: Text(
                                              'image about cours',
                                              style: gettextstylewhite(context),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
                            );
                          })),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
