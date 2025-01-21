import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:health_care_app/constants/color_constants.dart';
import 'package:health_care_app/constants/font_size_constants.dart';
import 'package:health_care_app/widgets/common/app_text_widget.dart';
import 'package:health_care_app/widgets/common/space_between_row_childre.dart';

class SectionsCategoryRow extends StatefulWidget {
  final VoidCallback? onTap;
  final String text;
  final Color fontColor;
  final double fontSize;
  final FontWeight fontWeight;
  final String selectedOptionText;
  final Color selectedOptionTextfontColor;
  final double selectedOptionTextfontSize;
  final FontWeight selectedOptionTextfontWeight;
  final double width;
  final Color iconColor;

  const SectionsCategoryRow(
      {super.key,
      this.onTap,
      required this.text,
      this.fontColor = appBlack,
      this.fontSize = appSubHeadingTextSize,
      this.fontWeight = FontWeight.normal,
      this.selectedOptionText ='',
      this.selectedOptionTextfontColor = appBlack,
      this.selectedOptionTextfontSize = 15,
      this.selectedOptionTextfontWeight = FontWeight.normal,
      this.width = 1,
      this.iconColor = appBlack});

  @override
  State<SectionsCategoryRow> createState() => _SectionsCategoryRowState();
}

class _SectionsCategoryRowState extends State<SectionsCategoryRow> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppTextWidget(
              text: widget.text,
              fontColor: widget.fontColor,
              fontSize: widget.fontSize,
              fontWeight: widget.fontWeight,
            ),
            SpaceBetweenRowChildren(width: widget.width),
            AppTextWidget(
              text: widget.selectedOptionText,
              fontColor: widget.selectedOptionTextfontColor,
              fontSize: widget.selectedOptionTextfontSize,
              fontWeight: widget.selectedOptionTextfontWeight,
            ),
             Icon(
              Icons.arrow_forward,
              color: widget.iconColor,
              size: 20,
            )
          ],
        ),
      ),
    );
  }
}
