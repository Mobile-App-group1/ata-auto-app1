import 'package:ata_auto_app/widget/form.dart';
import 'package:ata_auto_app/widget/product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/translate.dart';
import '../responsive/responsive.dart';
import '../widget/dailogsearch.dart';
import 'datalist_prodcut_screen.dart';

class All_Product extends StatelessWidget {
  All_Product({super.key});
  final Translatedata translate = Get.put(Translatedata());
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
                  return ProductItem(translate: translate);
                })),
          )
        ]),
      ),
    );
  }
}
