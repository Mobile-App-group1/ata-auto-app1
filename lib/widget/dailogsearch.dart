import 'package:flutter/material.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';

Future<void> ShowdialogSeach(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Search Garage'),
        content: SizedBox(
          height: height * 0.28,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                child: MultiSelectDropDown<int>(
                  onOptionSelected: (List<ValueItem> selectedOptions) {},
                  options: const [
                    ValueItem(label: 'Phnom Penh', value: 1),
                    ValueItem(label: 'Takev', value: 2),
                    ValueItem(label: 'Rothanak kiri', value: 3),
                    ValueItem(label: 'Kondal', value: 4),
                  ],
                  hint: 'Car Expert',
                  controller: MultiSelectController(),
                  selectionType: SelectionType.single,
                  chipConfig: const ChipConfig(wrapType: WrapType.wrap),
                  dropdownHeight: 300,
                  optionTextStyle: const TextStyle(fontSize: 16),
                  selectedOptionIcon: const Icon(Icons.check_circle),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                child: MultiSelectDropDown<int>(
                  onOptionSelected: (List<ValueItem> selectedOptions) {},
                  options: const [
                    ValueItem(label: 'Phnom Penh', value: 1),
                    ValueItem(label: 'Takev', value: 2),
                    ValueItem(label: 'Rothanak kiri', value: 3),
                    ValueItem(label: 'Kondal', value: 4),
                  ],
                  hint: 'Province',
                  controller: MultiSelectController(),
                  selectionType: SelectionType.single,
                  chipConfig: const ChipConfig(wrapType: WrapType.wrap),
                  dropdownHeight: 300,
                  optionTextStyle: const TextStyle(fontSize: 16),
                  selectedOptionIcon: const Icon(Icons.check_circle),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                child: MultiSelectDropDown<int>(
                  onOptionSelected: (List<ValueItem> selectedOptions) {},
                  options: const [
                    ValueItem(label: 'Phnom Penh', value: 1),
                    ValueItem(label: 'Takev', value: 2),
                    ValueItem(label: 'Rothanak kiri', value: 3),
                    ValueItem(label: 'Kondal', value: 4),
                  ],
                  hint: 'District',
                  controller: MultiSelectController(),
                  selectionType: SelectionType.single,
                  chipConfig: const ChipConfig(wrapType: WrapType.wrap),
                  dropdownHeight: 300,
                  optionTextStyle: const TextStyle(fontSize: 16),
                  selectedOptionIcon: const Icon(Icons.check_circle),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                child: MultiSelectDropDown<int>(
                  onOptionSelected: (List<ValueItem> selectedOptions) {},
                  options: const [
                    ValueItem(label: 'Phnom Penh', value: 1),
                    ValueItem(label: 'Takev', value: 2),
                    ValueItem(label: 'Rothanak kiri', value: 3),
                    ValueItem(label: 'Kondal', value: 4),
                  ],
                  hint: 'Comune',
                  controller: MultiSelectController(),
                  selectionType: SelectionType.single,
                  chipConfig: const ChipConfig(wrapType: WrapType.wrap),
                  dropdownHeight: 300,
                  optionTextStyle: const TextStyle(fontSize: 16),
                  selectedOptionIcon: const Icon(Icons.check_circle),
                ),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text('Disable'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text('Seach'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
