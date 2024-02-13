import 'package:ata_auto_app/responsive/responsive.dart';
import 'package:flutter/material.dart';

class Waiting_Screen extends StatelessWidget {
  const Waiting_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Container(
          width: width * 0.4,
          height: width * 0.4,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width * 0.2),
              color: colorBlue,
              boxShadow: [
                BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 4)
              ]),
          child: Center(
            child: Text(
              'Logo app',
              style: gettextstylewhite(context),
            ),
          ),
        ),
      ),
    );
  }
}
