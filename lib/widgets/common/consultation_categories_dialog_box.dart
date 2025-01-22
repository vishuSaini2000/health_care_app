import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_care_app/constants/color_constants.dart';


class ConsultationCategoriesDialogBox extends ConsumerStatefulWidget {
  final double height;
  final double width;
  final Color backgroundColor;
  final Widget child;

  const ConsultationCategoriesDialogBox({
    super.key,
    this.height = 500,
    this.width = 350,
    this.backgroundColor = appWhite,
    required this.child 
  });

  @override
  ConsumerState<ConsultationCategoriesDialogBox> createState() =>
      _ConsultationCategoriesDialogBoxState();
}

class _ConsultationCategoriesDialogBoxState
    extends ConsumerState<ConsultationCategoriesDialogBox> {
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
