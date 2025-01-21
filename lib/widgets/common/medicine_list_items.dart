import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_care_app/constants/color_constants.dart';
import 'package:health_care_app/constants/path_constants.dart';
import 'package:health_care_app/provider/app_mode_provider.dart';
import 'package:health_care_app/widgets/common/app_text_widget.dart';
import 'package:health_care_app/widgets/common/space_between_row_childre.dart';

class MedicineListItems extends ConsumerStatefulWidget {
  final String text;
  final TextDecoration? textDecoration;
  final bool value;
  final ValueChanged onChanged;

  const MedicineListItems(
      {super.key,
      required this.text,
      this.textDecoration,
      required this.value,
      required this.onChanged});

  @override
  ConsumerState<MedicineListItems> createState() => _MedicineListItemsState();
}

class _MedicineListItemsState extends ConsumerState<MedicineListItems> {
  @override
  Widget build(BuildContext context) {
    Color appListContainerColor = ref.watch(appListContainerColorProvider);
    Color appContainerColor = ref.watch(appContainerColorProvider);
    Color appTextColor = ref.watch(appTextColorProvider);
    // Color mediciineListItemsRowTextColor =
    //     ref.watch(mediciineListItemsRowTextColorProvider);
    return Container(
      padding: const EdgeInsets.all(20),
      height: 80,
      width: 400,
      decoration: BoxDecoration(
        color: appListContainerColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: appContainerColor,
                  image: const DecorationImage(
                      image: AssetImage(medicineImage), fit: BoxFit.cover),
                ),
              ),
              const SpaceBetweenRowChildren(width: 20),
              AppTextWidget(
                  fontColor: appTextColor,
                  text: widget.text,
                  textDecoration: widget.textDecoration,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ],
          ),
          Checkbox(
            activeColor: appGreen,
            value: widget.value,
            onChanged: widget.onChanged,
          )
        ],
      ),
    );
  }
}
