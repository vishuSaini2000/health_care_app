import 'package:flutter/material.dart';
import 'package:health_care_app/constants/color_constants.dart';
import 'package:health_care_app/widgets/common/app_text_widget.dart';

class SectionHeadingText extends StatefulWidget {
  final String text;
  final Color fontColor;
  final FontWeight fontWeight;
  final double fontSize;

  const SectionHeadingText(
      {super.key,
      required this.text,
      this.fontColor = appBlack,
      this.fontWeight = FontWeight.bold,
      this.fontSize = 10.0});

  @override
  State<SectionHeadingText> createState() => _SectionHeadingTextState();
}

class _SectionHeadingTextState extends State<SectionHeadingText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          AppTextWidget(
            text: widget.text,
            fontColor: widget.fontColor,
            fontWeight: widget.fontWeight,
            fontSize: widget.fontSize,
          )
        ],
      ),
    );
  }
}
