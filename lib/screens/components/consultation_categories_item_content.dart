import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_care_app/screens/components/consultation_category_item_explore_button.dart';
import 'package:health_care_app/screens/components/consultation_category_main_content_container.dart';
import 'package:health_care_app/screens/components/consultation_category_text_bar.dart';

class ConsultationCategoriesItemContent extends ConsumerStatefulWidget {
  final String barText;
  final String mainText;
  final String buttonText;
  const ConsultationCategoriesItemContent(
      {super.key,
      required this.barText,
      required this.mainText,
      this.buttonText = 'Explore'
      
      });

  @override
  ConsumerState<ConsultationCategoriesItemContent> createState() =>
      _ConsultationCategoriesItemContentState();
}

class _ConsultationCategoriesItemContentState
    extends ConsumerState<ConsultationCategoriesItemContent> {
  @override
  Widget build(BuildContext context) {
    // Color appTextColor = ref.watch(appTextColorProvider);
   
    return Padding(
      padding: const  EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ConsultationCategoryTextBar(
            barText: widget.barText),
          ConsultationCategoryMainContentContainer(
            mainText: widget.mainText,
          ),
          const ConsultationCategoryItemExploreButton()
          
        ],
      ),
    );
  }
}
