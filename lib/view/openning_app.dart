import 'package:ata_auto_app/controller/main_controller.dart';
import 'package:ata_auto_app/view/screen_chose_langues.dart';
import 'package:ata_auto_app/view/screen_wating.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OpeningApp extends StatelessWidget {
  OpeningApp({super.key});
  final MainController mainController = Get.put(MainController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (mainController.isInitialized.value) {
        return Chose_languses();
      } else {
        return Waiting_Screen();
      }
    });
  }
}
