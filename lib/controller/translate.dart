import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Translatedata extends GetxController {
  RxBool check = false.obs;
  void CheckTracslate() {
    check.value = !check.value;
  }
}
