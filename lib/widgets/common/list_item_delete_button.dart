import 'package:flutter/material.dart';
import 'package:health_care_app/constants/color_constants.dart';

class ListItemDeleteButton extends StatelessWidget {
  const ListItemDeleteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appRed,
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const Icon(Icons.delete, color: appWhite),
    );
  }
}
