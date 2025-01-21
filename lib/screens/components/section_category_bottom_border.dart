import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_care_app/constants/color_constants.dart';

class SectionCategoryBottomBorder extends ConsumerStatefulWidget {
  final Color color;
  const SectionCategoryBottomBorder({super.key,
  this.color = appSlateBlue});

  @override
  ConsumerState<SectionCategoryBottomBorder> createState() => _SectionCategoryBottomBorderState();
}

class _SectionCategoryBottomBorderState extends ConsumerState<SectionCategoryBottomBorder> {
  @override
  Widget build(BuildContext context) {
    return Container(
                          width: double.infinity,
                          decoration:  BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: widget.color,
                                width: 1,
                              ),
                            ),
                          ),
                        );
  }
}





// import 'package:flutter/material.dart';
// import 'package:health_care_app/constants/color_constants.dart';

// class SectionCategoryBottomBorder extends StatelessWidget
//  {
//   const SectionCategoryBottomBorder({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }



