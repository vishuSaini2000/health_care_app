import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_care_app/constants/path_constants.dart';
import 'package:health_care_app/provider/app_mode_provider.dart';
import 'package:health_care_app/screens/components/consultation_categories_item_content.dart';
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
    Color appCategoriesCircleAvatarBgColor =
        ref.watch(appCategoriesCircleAvatarBgColorProvider);
    Color appTextColor = ref.watch(appTextColorProvider);
    Color appContainerColor = ref.watch(appContainerColorProvider);
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
                builder: (context) => ConsultationCategoriesDialogBox(
                  backgroundColor: appContainerColor,
                  child: const ConsultationCategoriesItemContent(
                    barText: 'Consult with Expert Doctors',
                    mainText:
                        'Our network of experienced doctors is available to address your health issues through consultations via video, voice, or chat. Get professional medical advice tailored to your symptoms and health records, all from the comfort of your home.',
                  ),
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
                builder: (context) => ConsultationCategoriesDialogBox(
                  backgroundColor: appContainerColor,
                  child: const ConsultationCategoriesItemContent(
                    barText: 'Hospital Services ',
                    mainText: 'Access a wide range of hospital services, including emergency care, routine check-ups, and specialized treatments. Use our app to find hospitals based on specialty, availability, and location. Book and manage your appointments with ease.',
                  ),
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
                builder: (context) => ConsultationCategoriesDialogBox(
                  backgroundColor: appContainerColor,
                  child: const ConsultationCategoriesItemContent(
                    barText: "Healthcare Products",mainText: 'Browse our extensive catalog of healthcare products, including personal care items, fitness supplements, and prescription medications. Enjoy seamless online shopping with home delivery options.',
                  ),
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
                builder: (context) => ConsultationCategoriesDialogBox(
                  backgroundColor: appContainerColor,
                  child: const ConsultationCategoriesItemContent(
                    barText: "Customer Care and Assistance",
                    mainText: 'Need assistance with your account, medical services, or billing? Our dedicated support team is here to ensure your experience is hassle-free. Reach out for immediate assistance or to provide feedback about our services.',
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
