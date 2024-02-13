import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/translate.dart';

Future<void> DialogTipForUserBuy(BuildContext context) {
  final Translatedata translate = Get.put(Translatedata());
  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Sefety Tips for Buyers'),
        content: SizedBox(
          height: height * 0.2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(translate.check == false
                      ? '1. Do not sand money before receving \n the goods'
                      : '១​. មិនត្រូវផ្ញើប្រាក់ទៅមុន ​មុនទទួលបានទំនិញ'),
                ],
              ),
              Row(
                children: [
                  Text(translate.check == false
                      ? '2. Meet the saller at a safe location'
                      : '២. ត្រូវជួបអ្នកលក់នៅកន្លែងដែលមានសិវត្ថិភាព'),
                ],
              ),
              Row(
                children: [
                  Text(translate.check == false
                      ? '3. Check the item before you buy'
                      : '៣​. សូមពិនិត្យមើលទំនិញមុននិងទទួល'),
                ],
              ),
              Row(
                children: [
                  Text(translate.check == false
                      ? '4. Payment after receving the goods'
                      : '៤​. បង់ប្រាក់បន្ទាប់ពីទទួលបានទំនិញ'),
                ],
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text('Ok'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
