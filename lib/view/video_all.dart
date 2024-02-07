import 'package:ata_auto_app/responsive/responsive.dart';
import 'package:ata_auto_app/view/product_datalist_video_home.dart';
import 'package:ata_auto_app/widget/form.dart';
import 'package:ata_auto_app/widget/product_video.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';

import '../controller/translate.dart';

class All_Videro_Home extends StatelessWidget {
  All_Videro_Home({super.key});
  final Translatedata translate = Get.put(Translatedata());
  @override
  Widget build(BuildContext context) {
    TextEditingController textseach = TextEditingController();
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InputSearch(
                hintText: 'Search Vide',
                controller: textseach,
                icons: Icon(Icons.search_rounded)),
            Padding(
              padding: const EdgeInsets.all(8),
              child: MultiSelectDropDown<int>(
                onOptionSelected: (List<ValueItem> selectedOptions) {},
                options: const [
                  ValueItem(label: 'Phnom Penh', value: 1),
                  ValueItem(label: 'Takev', value: 2),
                  ValueItem(label: 'Rothanak kiri', value: 3),
                  ValueItem(label: 'Kondal', value: 4),
                ],
                hint: ' Expert',
                controller: MultiSelectController(),
                selectionType: SelectionType.single,
                chipConfig: const ChipConfig(wrapType: WrapType.wrap),
                dropdownHeight: 300,
                optionTextStyle: const TextStyle(fontSize: 16),
                selectedOptionIcon: const Icon(Icons.check_circle),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GridView.count(
                shrinkWrap: true,
                primary: false,
                crossAxisCount: 1,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: (1 / 0.4),
                clipBehavior: Clip.antiAlias,
                children: List.generate(10, (index) {
                  return Product_Video(translate: translate);
                })),
          ],
        ),
      ),
    );
  }
}
