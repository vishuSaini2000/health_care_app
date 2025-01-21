import 'package:flutter/material.dart';
import 'package:health_care_app/constants/color_constants.dart';
import 'package:health_care_app/widgets/common/app_text_widget.dart';

class AddMedicineButton extends StatefulWidget {
  const AddMedicineButton({super.key});

  @override
  State<AddMedicineButton> createState() => _AddMedicineButtonState();
}

class _AddMedicineButtonState extends State<AddMedicineButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 100,
      decoration: const BoxDecoration(
        color: appGreen,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: const Center(
          child: AppTextWidget(
        text: 'Add',
        fontColor: appWhite,
        fontSize: 15,
      ),),
    );
  }
}
