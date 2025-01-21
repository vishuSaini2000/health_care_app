import 'package:flutter/material.dart';
import 'package:health_care_app/constants/color_constants.dart';


class SettingSectionCategory extends StatefulWidget {
  final Column myColumn;
  final Color color;
  const SettingSectionCategory({
    super.key, 
    required this.myColumn, 
    this.color=appWhite});

  @override
  State<SettingSectionCategory> createState() =>
      _SecttingSectionCategoryState();
}

class _SecttingSectionCategoryState
    extends State<SettingSectionCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration:  BoxDecoration(color: widget.color),
        child: widget.myColumn);
  }
}
