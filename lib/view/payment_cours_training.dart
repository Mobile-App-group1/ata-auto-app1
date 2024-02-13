import 'package:ata_auto_app/responsive/responsive.dart';
import 'package:flutter/material.dart';

import '../widget/boxbutton.dart';
import 'alert_buy_sefety.dart';

class Training_Cours_Pay extends StatelessWidget {
  Training_Cours_Pay({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
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
            height: height * 0.8,
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
                  Text(
                    'Location :',
                    style: gettextstylewhitesmaill(context),
                  ),
                  Text(
                    'Map :',
                    style: gettextstylewhitesmaill(context),
                  ),
                  Text(
                    'Contact :',
                    style: gettextstylewhitesmaill(context),
                  ),
                  Text(
                    'Facebook page :',
                    style: gettextstylewhitesmaill(context),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
      bottomNavigationBar: ButtonBarTheme(
          data: const ButtonBarThemeData(),
          child: Container(
            height: height * 0.14,
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
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: width,
                    height: height * 0.05,
                    decoration: BoxDecoration(
                        color: colorsWhite,
                        border: Border.all(width: 1, color: Colors.red),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'safety',
                            style: gettextstylebluebold(context),
                          ),
                        ),
                        IconButton(
                            onPressed: () async {
                              DialogTipForUserBuy(context);
                            },
                            icon: const Icon(
                              Icons.security,
                              color: Colors.red,
                            ))
                      ],
                    ),
                  ),
                ),
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
                          backgrounColors: Colors.white,
                          bordercolos: Colors.pink,
                          colorstext: Colors.pink,
                          name: 'Messeger'),
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
              ],
            ),
          )),
    );
  }
}
