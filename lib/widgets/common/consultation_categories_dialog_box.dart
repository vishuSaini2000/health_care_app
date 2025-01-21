import 'package:flutter/material.dart';
import 'package:health_care_app/constants/color_constants.dart';

class ConsultationCategoriesDialogBox extends StatefulWidget {
  final double height;
  final double width;
  final Color backgroundColor;
  final Widget child;

  const ConsultationCategoriesDialogBox({
    super.key,
    this.height = 700,
    this.width = 350,
    this.backgroundColor = appWhite,
    required this.child 
  });

  @override
  State<ConsultationCategoriesDialogBox> createState() =>
      _ConsultationCategoriesDialogBoxState();
}

class _ConsultationCategoriesDialogBoxState
    extends State<ConsultationCategoriesDialogBox> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(112, 47, 42, 42),
        ),
        child:  Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: widget.height,
              width: widget.width,
              decoration: BoxDecoration(
                color: widget.backgroundColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child:widget.child ,
            ),
        
          ],
           
        ),
        
      );
  }
}
