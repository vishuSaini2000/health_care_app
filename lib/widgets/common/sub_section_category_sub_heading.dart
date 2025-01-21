import 'package:flutter/material.dart';
import 'package:health_care_app/constants/color_constants.dart';
import 'package:health_care_app/widgets/common/app_text_widget.dart';

class SubSectionsCategorySubHeading extends StatefulWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color fontColor;
  const SubSectionsCategorySubHeading(
      {super.key,
      required this.text,
      this.fontSize = 15,
      this.fontWeight = FontWeight.normal,
      this.fontColor = appGrey});

  @override
  State<SubSectionsCategorySubHeading> createState() =>
      _SubSectionsCategoryHeadingState();
}

class _SubSectionsCategoryHeadingState
    extends State<SubSectionsCategorySubHeading> {
  @override
  Widget build(BuildContext context) {
    return AppTextWidget(
      text: widget.text,
      fontSize: widget.fontSize,
      fontColor: widget.fontColor,
      fontWeight: widget.fontWeight,
    );
  }
}
