import 'package:flutter/material.dart';

import '../responsive/responsive.dart';
import '../widget/boxbutton.dart';

class Product_Playlist extends StatelessWidget {
  Product_Playlist({super.key});

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
        title: const Text('NAME '),
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
                  'Tital :',
                  style: gettextstylebluebold(context),
                ),
                Text(
                  'Disription :',
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
                  return GestureDetector(
                      child: Card(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: width * 0.28,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(
                              child: Text('IMG'),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Name'),
                              SizedBox(
                                  width: width * 0.6,
                                  child: const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Time'),
                                      Text('Price'),
                                    ],
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ));
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
