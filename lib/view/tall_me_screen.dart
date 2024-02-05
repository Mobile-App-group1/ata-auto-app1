import 'package:flutter/material.dart';

import '../responsive/responsive.dart';

class Tell_User_About_UseApp extends StatelessWidget {
  const Tell_User_About_UseApp({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text('Tell About Use App'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
              shrinkWrap: true,
              primary: false,
              crossAxisCount: 1,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: (1 / 1 / 0.5),
              clipBehavior: Clip.antiAlias,
              children: List.generate(10, (index) {
                return Card(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Name and Icons about button app :',
                            style: gettextstyltital(context),
                          ),
                        )
                      ],
                    ),
                    const Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Tall User about use mobile app'),
                    )
                  ],
                ));
              })),
        ));
  }
}
