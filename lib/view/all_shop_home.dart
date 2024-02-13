import 'package:ata_auto_app/view/datalist_shop.dart';
import 'package:ata_auto_app/widget/product_all_shop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/translate.dart';
import '../responsive/responsive.dart';
import '../widget/form.dart';

class All_Shop_Home extends StatelessWidget {
  All_Shop_Home({super.key});
  final Translatedata translate = Get.put(Translatedata());
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    TextEditingController textsearch = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InputSearch(
                hintText: 'Seach Shop',
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
                    return Product_all_Shop(
                      translate: translate,
                    );
                  })),
            ),
          ],
        ),
      ),
    );
  }
}
