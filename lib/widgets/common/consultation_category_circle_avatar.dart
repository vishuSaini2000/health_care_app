import 'package:flutter/material.dart';
import 'package:health_care_app/constants/color_constants.dart';
import 'package:health_care_app/widgets/common/app_circle_avatar.dart';

class ConsultationCategoryCircleAvatar extends StatelessWidget {
  final ImageProvider backgroundImage;
  final double radius;
  final VoidCallback? onTap;
  final Color backgroundColor;

  const ConsultationCategoryCircleAvatar({
    super.key,
    required this.backgroundImage,
    this.backgroundColor = appWhite,
    this.radius = 20.0,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AppCircleAvatar(
        backgroundColor: backgroundColor,
        backgroundImage: backgroundImage,
        radius: radius,
      ),
    );
  }
}
