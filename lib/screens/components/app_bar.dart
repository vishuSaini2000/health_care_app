import 'package:flutter/material.dart';
import 'package:health_care_app/constants/color_constants.dart';
import 'package:health_care_app/widgets/common/app_text_widget.dart';
import 'package:health_care_app/widgets/common/space_between_row_childre.dart';

class ScreenAppBar extends StatefulWidget {
  final double height;
  final Color color;
  final VoidCallback onTap;
  final Color iconColor;
  final String text;
  final Color fontColor;
  final FontWeight fontWeight;
  final double fontSize;

  const ScreenAppBar(
      {super.key,
      this.height = 70,
      this.color = appLightBlue,
      required this.onTap,
      this.iconColor = appBlack,
      required this.text,
      this.fontColor = appBlack,
      this.fontWeight = FontWeight.bold,
      this.fontSize = 20});

  @override
  State<ScreenAppBar> createState() => _ScreenAppBarState();
}

class _ScreenAppBarState extends State<ScreenAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: widget.height,
        width: double.infinity,
        decoration: BoxDecoration(color: widget.color),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              GestureDetector(
                onTap: widget.onTap,
                child:  Icon(
                  Icons.arrow_back,
                  color: widget.iconColor,
                ),
              ),
              const SpaceBetweenRowChildren(width: 30),
              AppTextWidget(
                  text: widget.text,
                  fontColor: widget.fontColor,
                  fontWeight: widget.fontWeight,
                  fontSize: widget.fontSize)
            ],
          ),
        ));
  }
}
