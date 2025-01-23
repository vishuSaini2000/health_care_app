import 'package:flutter/material.dart';
import 'package:health_care_app/constants/color_constants.dart';
import 'package:health_care_app/widgets/common/app_text_widget.dart';

class ConsultationCategoryItemExploreButton extends StatefulWidget {
  final String buttonText;
  final FontWeight buttonFontWeight;
  final double buttonFontSize;
  const ConsultationCategoryItemExploreButton({
    super.key,
    this.buttonText = 'Explore',
      this.buttonFontWeight = FontWeight.normal,
      this.buttonFontSize = 15,
    });

  @override
  State<ConsultationCategoryItemExploreButton> createState() => _ConsultationCategoryItemExploreButtonState();
}

class _ConsultationCategoryItemExploreButtonState extends State<ConsultationCategoryItemExploreButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
            height: 50,
            decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                )),
            child: Center(
              child: AppTextWidget(
                text: widget.buttonText,
                fontColor: appWhite,
                fontWeight: widget.buttonFontWeight,
                fontSize: widget.buttonFontSize,
              ),
            ),
          );
  }
}