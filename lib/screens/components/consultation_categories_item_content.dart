import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_care_app/constants/color_constants.dart';
import 'package:health_care_app/provider/app_mode_provider.dart';
import 'package:health_care_app/widgets/common/app_text_widget.dart';

class ConsultationCategoriesItemContent extends ConsumerStatefulWidget {
  final String barText;
  final FontWeight barFontWeight;
  final double barFontSize;
  final String buttonText;
  final FontWeight buttonFontWeight;
  final double buttonFontSize;
  final String mainText;
  final FontWeight mainTextFontWeight;
  final double mainTextFontSize;
  const ConsultationCategoriesItemContent(
      {super.key,
      required this.barText,
      this.barFontWeight = FontWeight.bold,
      this.barFontSize = 18,
      this.buttonText = 'Explore',
      this.buttonFontWeight = FontWeight.normal,
      this.buttonFontSize = 15,
      required this.mainText,
      this.mainTextFontWeight = FontWeight.normal,
      this.mainTextFontSize = 20
      });

  @override
  ConsumerState<ConsultationCategoriesItemContent> createState() =>
      _ConsultationCategoriesItemContentState();
}

class _ConsultationCategoriesItemContentState
    extends ConsumerState<ConsultationCategoriesItemContent> {
  @override
  Widget build(BuildContext context) {
    Color appListContainerColor = ref.watch(appListContainerColorProvider);
    Color appTextColor = ref.watch(appTextColorProvider);
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            decoration: BoxDecoration(
                color: appListContainerColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                )),
            child: Center(
              child: AppTextWidget(
                text: widget.barText,
                fontColor: appTextColor,
                fontWeight: widget.barFontWeight,
                fontSize: widget.barFontSize,
              ),
            ),
          ),
          Container(
            // padding: const EdgeInsets.all(20),
            height: 270,
            width: 350,
            decoration: const BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadiusDirectional.all(
                  Radius.circular(10),
                )),
              child: Center(
                child: AppTextWidget(
                  textAlign: TextAlign.center,
                  text: widget.mainText,
                  fontColor: appTextColor,
                  fontWeight: widget.mainTextFontWeight,
                  fontSize: widget.mainTextFontSize,
                ),
              ),
            
          ),
          Container(
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
          ),
        ],
      ),
    );
  }
}
