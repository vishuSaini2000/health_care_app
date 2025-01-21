import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_care_app/provider/app_mode_provider.dart';
import 'package:health_care_app/widgets/common/app_text_widget.dart';

class DoctorAvailabilityText extends ConsumerStatefulWidget {
  const DoctorAvailabilityText({super.key});

  @override
  ConsumerState<DoctorAvailabilityText> createState() => _DoctorAvailabilityTextState();
}

class _DoctorAvailabilityTextState extends ConsumerState<DoctorAvailabilityText> {
  @override
  Widget build(BuildContext context) {
    Color appTextColor = ref.watch(appTextColorProvider);
    Color appUniqueTextColor = ref.watch(appUniqueTextColorProvider);
    return  Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppTextWidget(
            text: 'Doctor Available',
            fontColor: appTextColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
           AppTextWidget(
            text: 'Show All',
            fontColor: appUniqueTextColor,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          )
        ],
      ),
    );
  }
}
