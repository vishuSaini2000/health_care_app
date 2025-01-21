import 'package:flutter/material.dart';
import 'package:health_care_app/constants/color_constants.dart';

class SubSectionsCategoryContainer extends StatefulWidget {
  final Color color;
  final Widget? child;
  const SubSectionsCategoryContainer(
      {super.key, this.color = appWhite, this.child});

  @override
  State<SubSectionsCategoryContainer> createState() =>
      _SubSectionsCategoryContainerState();
}

class _SubSectionsCategoryContainerState
    extends State<SubSectionsCategoryContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15),
        width: double.infinity,
        decoration: BoxDecoration(color: widget.color),
        child: widget.child);
  }
}


