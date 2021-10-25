import 'package:flutter/material.dart';

import '../app_theme.dart';

class ListTagSelectedWidget extends StatelessWidget {
  const ListTagSelectedWidget(
      {Key? key,
      required this.values,
      required this.nameValues,
      this.isReview = false,
      required this.selectedValues,
      this.onSelected})
      : super(key: key);

  final List values;
  final bool? isReview;
  final List<String?> nameValues;
  final List<String>? selectedValues;
  final void Function(bool val, dynamic item)? onSelected;
  @override
  Widget build(BuildContext context) {
    var color = orangePrimary;
    if (isReview != null && isReview!) {
      color = successGreen;
    }
    return Wrap(
      spacing: 8,
      runSpacing: 4,
      children: List.generate(values.length, (index) {
        final item = values[index];
        bool isSelected = false;
        if (selectedValues != null) {
          isSelected = selectedValues!.contains(item);
        }
        return ChoiceChip(
          selected: isSelected,
          selectedColor: color,
          label: Text(nameValues[index] ?? '',

              /// TextStyle(color: isSelected ? Colors.white : null, fontSize: 14, fontWeight: FontWeight.w400))
              style: Styles.baseNotoSansTS.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: isSelected ? Colors.white : null)),
          onSelected: (value) {
            onSelected!(value, item);
          },
        );
      }),
    );
  }
}

class ListTagSelectedFilterWidget extends StatelessWidget {
  const ListTagSelectedFilterWidget(
      {Key? key,
      required this.values,
      required this.nameValues,
      this.isReview = false,
      required this.selectedValues,
      this.onSelected})
      : super(key: key);

  final List values;
  final bool? isReview;
  final List<String?> nameValues;
  final List<String>? selectedValues;
  final void Function(bool val, dynamic item)? onSelected;
  @override
  Widget build(BuildContext context) {
    var color = orangePrimary;
    if (isReview != null && isReview!) {
      color = successGreen;
    }
    return Wrap(
      spacing: 8,
      runSpacing: 4,
      children: List.generate(values.length, (index) {
        final item = values[index];
        bool isSelected = false;
        if (selectedValues != null) {
          isSelected = selectedValues!.contains(item.id);
          // final datas =
          //     selectedValues!.where((element) => element.contains(item));
          // isSelected = datas.isNotEmpty;
        }
        return ChoiceChip(
          selected: isSelected,
          selectedColor: color,
          label: Text(nameValues[index] ?? '',

              /// TextStyle(color: isSelected ? Colors.white : null, fontSize: 14, fontWeight: FontWeight.w400))
              style: Styles.baseNotoSansTS.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: isSelected ? Colors.white : null)),
          onSelected: (value) {
            onSelected!(value, item);
          },
        );
      }),
    );
  }
}
