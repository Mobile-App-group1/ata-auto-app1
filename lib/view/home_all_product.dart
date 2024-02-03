import 'package:ata_auto_app/widget/form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../responsive/responsive.dart';
import '../widget/dailogsearch.dart';
import 'datalist_prodcut_screen.dart';

class All_Product extends StatelessWidget {
  All_Product({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController textsearch = TextEditingController();
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(children: [
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
                childAspectRatio: (1 / 1 / 1.1),
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
                          GestureDetector(
                            onTap: () async => Get.to(Datalist_Product_Home()),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: height * 0.15,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: colorBlue),
                                child: const Center(
                                  child: Text('image'),
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
                            padding: const EdgeInsets.only(left: 8),
                            child: Row(
                              children: [
                                Text(
                                  'Tital',
                                  style: gettextstylgreytital(context),
                                ),
                                Text(
                                  'Price',
                                  style: gettextstylgreytital(context),
                                ),
                              ],
                            ),
                          ),
                        ]),
                  );
                })),
          )
        ]),
      ),
    );
  }
}
