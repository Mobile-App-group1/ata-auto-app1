import 'package:ata_auto_app/responsive/responsive.dart';
import 'package:ata_auto_app/view/product_datalist_video_home.dart';
import 'package:ata_auto_app/widget/form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';

class All_Videro_Home extends StatelessWidget {
  const All_Videro_Home({super.key});

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
                  return Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              color: Colors.grey.withOpacity(0.5))
                        ]),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () async =>
                                Get.to(Datalist_Product_Video_Home()),
                            child: Container(
                              height: height,
                              width: width * 0.3,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: colorBlue),
                              child: const Center(
                                child: Text('image'),
                              ),
                            ),
                          ),
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Text(
                                  'Name',
                                  style: gettextstylblackname(context),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Text(
                                  'Tital',
                                  style: gettextstylgreytital(context),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Text(
                                  'Free',
                                  style: gettextstylgreytital(context),
                                ),
                              ),
                            ]),
                      ],
                    ),
                  );
                })),
          ],
        ),
      ),
    );
  }
}
