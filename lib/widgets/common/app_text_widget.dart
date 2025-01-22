import 'package:flutter/material.dart';
import 'package:health_care_app/constants/color_constants.dart';

class AppTextWidget extends StatefulWidget {
  final TextAlign? textAlign;
  final String text;
  final TextDecoration? textDecoration;
  final double fontSize;
  final FontWeight? fontWeight;
  final Color fontColor;

  const AppTextWidget({
    super.key,
    this.textAlign,
    required this.text,
    this.textDecoration,
    this.fontSize = 10.0,
    this.fontWeight,
    this.fontColor = appBlack,});

  @override
  State<AppTextWidget> createState() => _AppTextWidgetState();
}

class _AppTextWidgetState extends State<AppTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: widget.textAlign,
      widget.text,
      style: TextStyle(
        decoration: widget.textDecoration,
        fontSize: widget.fontSize,
        fontWeight: widget.fontWeight,
        color: widget.fontColor,
      ),
    );
  }
}