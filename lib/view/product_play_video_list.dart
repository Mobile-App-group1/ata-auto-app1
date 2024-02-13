import 'package:ata_auto_app/widget/product_video.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/translate.dart';
import '../model/product_tr_video.dart';
import '../responsive/responsive.dart';
import '../widget/boxbutton.dart';
import '../widget/playList_videro.dart';

class Product_Playlist extends StatelessWidget {
  Product_Playlist({super.key});
  final Translatedata translate = Get.put(Translatedata());
  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Payment'),
          content: Text('Can to buy with Option'),
          actions: <Widget>[
            Row(
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
                      backgrounColors: Colors.green,
                      bordercolos: Colors.green,
                      colorstext: Colors.white,
                      name: 'Call'),
                ),
              ],
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final higth = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          translate.check.value == false
              ? videoTrProduct[0].name_eg
              : videoTrProduct[0].name_kh,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: higth * 0.3,
            color: Colors.blue[400],
            child: const Center(child: Text('Video')),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  translate.check.value == false
                      ? videoTrProduct[0].tital_eg
                      : videoTrProduct[0].tital_kh,
                  style: gettextstylebluebold(context),
                ),
                Text(
                  translate.check.value == false
                      ? videoTrProduct[0].disciption_eg
                      : videoTrProduct[0].disciption_kh,
                  style: gettextstylblack(context),
                ),
              ],
            ),
          ),
          Container(
            child: GridView.count(
                shrinkWrap: true,
                primary: false,
                crossAxisCount: 1,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: (1 / 0.3),
                clipBehavior: Clip.antiAlias,
                children: List.generate(10, (index) {
                  return Product_Video_List(translate: translate);
                })),
          ),
        ]),
      ),
      bottomNavigationBar: ButtonBarTheme(
          data: ButtonBarThemeData(),
          child: GestureDetector(
            onTap: () => _dialogBuilder(context),
            child: Container(
              height: higth * 0.06,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 4, color: Colors.grey.withOpacity(0.5))
                  ],
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blue[400]),
              child: const Center(
                child: Text(
                  'BUY NOW',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )),
    );
  }
}
