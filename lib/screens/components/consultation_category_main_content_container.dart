import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_care_app/provider/app_mode_provider.dart';
import 'package:health_care_app/widgets/common/app_text_widget.dart';

class ConsultationCategoryMainContentContainer extends ConsumerStatefulWidget {
  final String mainText;
  final FontWeight mainTextFontWeight;
  final double mainTextFontSize;
  const ConsultationCategoryMainContentContainer(
      {super.key,
      required this.mainText,
      this.mainTextFontWeight = FontWeight.normal,
      this.mainTextFontSize = 20,
      });

  @override
  ConsumerState<ConsultationCategoryMainContentContainer> createState() =>
      _ConsultationCategoryMainContentContainerState();
}

class _ConsultationCategoryMainContentContainerState
    extends ConsumerState<ConsultationCategoryMainContentContainer> {
  @override
  Widget build(BuildContext context) {
    Color appTextColor = ref.watch(appTextColorProvider);
    return Container(
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
    );
  }
}
