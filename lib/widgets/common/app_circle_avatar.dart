import 'package:flutter/material.dart';
import 'package:health_care_app/constants/color_constants.dart';

class AppCircleAvatar extends StatefulWidget {
  final Color backgroundColor;
  final ImageProvider? backgroundImage;
  final double radius;
  final Widget? child;

  const AppCircleAvatar({
    super.key,
    this.backgroundColor = appWhite,
    this.backgroundImage,
    this.radius = 20,
    this.child});

  @override
  State<AppCircleAvatar> createState() => _AppCircleAvatarState();
}

class _AppCircleAvatarState extends State<AppCircleAvatar> {
  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(
      backgroundColor: widget.backgroundColor,
      backgroundImage: widget.backgroundImage,
      radius: widget.radius,
      child: widget.child,
    );
  }
}