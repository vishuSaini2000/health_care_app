import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_care_app/provider/app_mode_provider.dart';
import 'package:health_care_app/widgets/common/app_text_widget.dart';

class ConsultationCategoryTextBar extends ConsumerStatefulWidget {
  final String barText;
  final FontWeight barFontWeight;
  final double barFontSize;
  


  const ConsultationCategoryTextBar({
    super.key,
    required this.barText,
    this.barFontWeight = FontWeight.bold,
    this.barFontSize = 18,
  });

  @override
  ConsumerState<ConsultationCategoryTextBar> createState() =>
      _ConsultationCategoryTextBarState();
}

class _ConsultationCategoryTextBarState
    extends ConsumerState<ConsultationCategoryTextBar> {
  @override
  Widget build(BuildContext context) {
    Color appListContainerColor = ref.watch(appListContainerColorProvider);
    Color appTextColor = ref.watch(appTextColorProvider);
    return Container(
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
    );
  }
}
