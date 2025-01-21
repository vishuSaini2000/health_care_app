import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:health_care_app/constants/color_constants.dart';
import 'package:health_care_app/widgets/common/app_text_widget.dart';
// import 'package:health_care_app/widgets/common/space_between_row_childre.dart';

class ToogleSwitchRow extends StatefulWidget {
  final String text;
  final double fontSize;
  final Color fontColor;
  final FontWeight fontWeight;
  final String switchText;
  final double switchTextSize;
  final Color switchTextColor;
  final FontWeight switchTextFontWeight;
  final bool value;
  final ValueChanged onChanged;
  final Color switchActiveColor;

  const ToogleSwitchRow({
    super.key,
    required this.text,
    this.fontSize = 15,
    this.fontColor = appBlack,
    this.fontWeight = FontWeight.normal,
    required this.switchText,
    this.switchTextSize = 10,
    this.switchTextColor = appBlack,
    this.switchTextFontWeight = FontWeight.normal,
    this.value = false,
    required this.onChanged,
    this.switchActiveColor = appGreen,
  });

  @override
  State<ToogleSwitchRow> createState() => _ToogleSwitchRowState();
}

class _ToogleSwitchRowState extends State<ToogleSwitchRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppTextWidget(
          text: widget.text,
          fontColor: widget.fontColor,
          fontSize: widget.fontSize,
          fontWeight: widget.fontWeight,
        ),
        Row(
          children: [
            AppTextWidget(text: widget.switchText,fontSize: widget.switchTextSize,fontColor:widget.switchTextColor,fontWeight: widget.switchTextFontWeight,),
            Switch(
                value: widget.value,
                onChanged: widget.onChanged,
                activeColor: widget.switchActiveColor)
          ],
        )
      ],
    );
  }
}
