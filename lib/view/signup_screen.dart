import 'package:ata_auto_app/responsive/responsive.dart';
import 'package:ata_auto_app/view/mutiscreen.dart';
import 'package:ata_auto_app/view/tell_use_about_app.dart';
import 'package:ata_auto_app/widget/form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';

import '../controller/translate.dart';
import '../widget/button.dart';
import 'subscription.dart';

// ignore: must_be_immutable
class SignUp_Screen extends StatelessWidget {
  SignUp_Screen({super.key});
  final Translatedata translate = Get.put(Translatedata());
  TextEditingController email = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        child: Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: width * 0.9,
                  height: height * 0.55,
                  decoration: BoxDecoration(
                      color: colorsWhite,
                      borderRadius: BorderRadius.circular(width * 0.05),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          color: Colors.grey.withOpacity(0.5),
                        )
                      ]),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InputForm(
                          hintText: translate.check.value == false
                              ? 'Phone number or email'
                              : 'លេខទូរសព្ទ​ រឺជីមែល',
                          controller: email,
                        ),
                        InputForm(
                          hintText: translate.check.value == false
                              ? 'User name'
                              : 'ឈ្មោះអ្នកប្រើប្រាស់',
                          controller: username,
                        ),
                        Inputpassword(
                          controller: password,
                          hintText: translate.check.value == false
                              ? 'Password'
                              : 'លេខសំងាត់',
                        ),
                        Inputpassword(
                          controller: confirmpassword,
                          hintText: translate.check.value == false
                              ? 'Comfirm ​Password'
                              : 'បញ្ជាក់លេខសំងាត់',
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: MultiSelectDropDown<int>(
                            onOptionSelected:
                                (List<ValueItem> selectedOptions) {},
                            options: const [
                              ValueItem(label: 'Free', value: 1),
                              ValueItem(label: 'Standart', value: 2),
                              ValueItem(label: 'Premiums', value: 3),
                              ValueItem(label: 'VIP', value: 4),
                            ],
                            hint: 'Brand',
                            controller: MultiSelectController(),
                            selectionType: SelectionType.single,
                            chipConfig:
                                const ChipConfig(wrapType: WrapType.wrap),
                            dropdownHeight: 300,
                            optionTextStyle: const TextStyle(fontSize: 16),
                            selectedOptionIcon: const Icon(Icons.check_circle),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: width,
                            child: GestureDetector(
                              onTap: () async => Get.to(Subscription_Screen()),
                              child: Text(
                                'Subsrciption',
                                style: gettextstylebluebold(context),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        GestureDetector(
                          onTap: () async => Get.to((Tell_User())),
                          child: Boxbutton(
                            colorbtn: Colors.blue,
                            namebtn: translate.check.value == false
                                ? 'Sig up'
                                : 'ចោះឈ្មោះ',
                            colortext: Colors.white,
                          ),
                        ),
                      ]),
                ),
              ],
            )),
      ),
    );
  }
}
