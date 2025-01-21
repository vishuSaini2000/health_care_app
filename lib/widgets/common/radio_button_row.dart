import 'package:flutter/material.dart';
import 'package:health_care_app/constants/color_constants.dart';
import 'package:health_care_app/widgets/common/app_text_widget.dart';

class RadioButtonRow extends StatefulWidget {
  final String text;
  final FontWeight fontWeight;
  final Color fontColor;
  final double fontSize;
  final dynamic groupValue;
  final dynamic value;
  final ValueChanged onChanged;
  
  const  RadioButtonRow({super.key,
  required this.text,
  this.fontWeight= FontWeight.normal,
  this.fontColor= appBlack,
  this.fontSize=16.0,
  required this.value,
  required this.groupValue,
  required this.onChanged
  });

  @override
  State<RadioButtonRow> createState() => _RadioButtonRowState();
}

class _RadioButtonRowState extends State<RadioButtonRow> {
  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        Transform.scale(
              scale:1,
              child: Radio(
                activeColor: appGreen,
                value :widget.value,
                groupValue: widget.groupValue,
                onChanged: widget.onChanged,
              )
            ),
             AppTextWidget(
                  text: widget.text,
                  fontWeight: widget.fontWeight,
                  fontColor: widget.fontColor,
                  fontSize: widget.fontSize),
          ],
        );
  }
}



