import 'package:flutter/material.dart';
import 'package:health_care_app/constants/color_constants.dart';
import 'package:health_care_app/widgets/common/app_text_widget.dart';
import 'package:health_care_app/widgets/common/consultation_category_circle_avatar.dart';
import 'package:health_care_app/widgets/common/space_between_column_children.dart';

class ConsultationCategoriesItem extends StatelessWidget {
  final ImageProvider backgroundImage;
  final double radius;
  final VoidCallback? onTap;
  final String text;
  final double fontSize;
  final FontWeight? fontWeight;
  final Color fontColor;
  final Color backgroundColor;

  const ConsultationCategoriesItem({
    super.key,
    required this.backgroundImage,
    this.radius = 20.0,
    this.onTap,
    required this.text,
    this.fontSize = 10.0,
    this.fontWeight,
    this.fontColor = appBlack,
    this.backgroundColor = appLightBlue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConsultationCategoryCircleAvatar(
            backgroundImage: backgroundImage,
            onTap: onTap,
            radius: radius,
            backgroundColor: backgroundColor),
        const SpaceBetweenColumnChildren(height: 10),
        AppTextWidget(
          text: text,
          fontColor: fontColor,
          fontWeight: fontWeight,
          fontSize: fontSize,
        )
      ],
    );
  }
}
