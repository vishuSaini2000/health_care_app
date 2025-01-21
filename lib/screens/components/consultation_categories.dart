import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_care_app/constants/color_constants.dart';
import 'package:health_care_app/constants/path_constants.dart';
import 'package:health_care_app/provider/app_mode_provider.dart';
import 'package:health_care_app/widgets/common/consultation_categories_item.dart';
import 'package:health_care_app/widgets/common/consultation_categories_dialog_box.dart';

class ConsultationCategories extends ConsumerStatefulWidget {
  const ConsultationCategories({super.key});

  @override
  ConsumerState<ConsultationCategories> createState() =>
      _ConsultationCategoriesState();
}

class _ConsultationCategoriesState
    extends ConsumerState<ConsultationCategories> {
  @override
  Widget build(BuildContext context) {
    
    Color appCategoriesCircleAvatarBgColor = ref.watch(appCategoriesCircleAvatarBgColorProvider);
    Color appTextColor = ref.watch(appTextColorProvider);
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ConsultationCategoriesItem(
            backgroundColor: appCategoriesCircleAvatarBgColor,
            radius: 30,
            backgroundImage: const AssetImage(doctorCircleAvtarBg),
            text: 'Doctor',
            fontSize: 15,
            fontWeight: FontWeight.bold,
            fontColor: appTextColor,
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => const ConsultationCategoriesDialogBox(
                  backgroundColor: appLightBlue,
                  child: Text('hi'),
                ),
              );
            },
          ),
          ConsultationCategoriesItem(
            backgroundColor: appCategoriesCircleAvatarBgColor,
            radius: 30,
            backgroundImage: const AssetImage(hospitalCircleAvatarBg),
            text: 'Hospital',
            fontSize: 15,
            fontWeight: FontWeight.bold,
            fontColor: appTextColor,
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => const ConsultationCategoriesDialogBox(
                  backgroundColor: appLightBlue,
                  child: Text('hi'),
                ),
              );
            },
          ),
          ConsultationCategoriesItem(
            backgroundColor: appCategoriesCircleAvatarBgColor,
            radius: 30,
            backgroundImage: const AssetImage(shopCircleAvatarBg),
            text: 'Shop',
            fontSize: 15,
            fontWeight: FontWeight.bold,
            fontColor: appTextColor,
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => const ConsultationCategoriesDialogBox(
                  backgroundColor: appLightBlue,
                  child: Text('hi'),
                ),
              );
            },
          ),
          ConsultationCategoriesItem(
            backgroundColor: appCategoriesCircleAvatarBgColor,
            radius: 30,
            backgroundImage: const AssetImage(supportCircleAvatarBg),
            text: 'Support',
            fontSize: 15,
            fontWeight: FontWeight.bold,
            fontColor: appTextColor,
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => const ConsultationCategoriesDialogBox(
                  backgroundColor: appLightBlue,
                  child: Text('hi'),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
