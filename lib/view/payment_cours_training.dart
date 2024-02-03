import 'package:ata_auto_app/responsive/responsive.dart';
import 'package:flutter/material.dart';

import '../widget/boxbutton.dart';

class Training_Cours_Pay extends StatelessWidget {
  Training_Cours_Pay({super.key});

  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () async {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: height * 0.4,
            decoration: BoxDecoration(
                color: colorBlue,
                boxShadow: const [BoxShadow(blurRadius: 4)],
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: height * 0.2,
                    decoration: BoxDecoration(
                        color: colorsWhite,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text('IMG'),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Date time',
                    style: gettextstylewhite(context),
                  ),
                  Text(
                    'Desription :',
                    style: gettextstylewhitesmaill(context),
                  ),
                  Text(
                    'Expert :',
                    style: gettextstylewhitesmaill(context),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
      bottomNavigationBar: ButtonBarTheme(
          data: ButtonBarThemeData(),
          child: Container(
            height: height * 0.08,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      20,
                    ),
                    topRight: Radius.circular(20)),
                color: Colors.white,
                boxShadow: [BoxShadow(blurRadius: 4, color: Colors.grey)]),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
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
                      backgrounColors: Colors.pink,
                      bordercolos: Colors.pink,
                      colorstext: Colors.white,
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
