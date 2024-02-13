import 'package:get/get.dart';

class MainController extends GetxController {
  final isInitialized = false.obs;

  @override
  void onInit() async {
    await Future.delayed(Duration(seconds: 5));
    isInitialized.value = true;
  }
}
