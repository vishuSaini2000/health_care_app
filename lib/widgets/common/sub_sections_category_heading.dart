import 'package:flutter/material.dart';
import 'package:health_care_app/constants/color_constants.dart';
import 'package:health_care_app/widgets/common/app_text_widget.dart';

class SubSectionsCategoryHeading extends StatefulWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color fontColor;
  const SubSectionsCategoryHeading(
      {super.key,
      required this.text,
      this.fontSize = 17,
      this.fontWeight = FontWeight.bold,
      this.fontColor = appBlack});

  @override
  State<SubSectionsCategoryHeading> createState() =>
      _SubSectionsCategoryHeadingState();
}

class _SubSectionsCategoryHeadingState
    extends State<SubSectionsCategoryHeading> {
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
