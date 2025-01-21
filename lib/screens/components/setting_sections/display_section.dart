import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_care_app/constants/font_size_constants.dart';
import 'package:health_care_app/provider/app_mode_provider.dart';
import 'package:health_care_app/screens/components/sections_category_row.dart';
import 'package:health_care_app/screens/components/settings_section_category.dart';
import 'package:health_care_app/screens/dark_mode_screen.dart';
import 'package:health_care_app/widgets/common/section_heading_text.dart';

class DisplaySection extends ConsumerStatefulWidget {
  const DisplaySection({super.key});

  @override
  ConsumerState<DisplaySection> createState() => _DisplaySectionState();
}

class _DisplaySectionState extends ConsumerState<DisplaySection> {
  @override
  Widget build(BuildContext context) {
    Color appSectionContainerColor = ref.watch(appSectionContainerColorProvider);
    Color appTextColor = ref.watch(appTextColorProvider);
    Color appIconColor = ref.watch(appIconColorProvider); 
    Color appHeadingTextColor = ref.watch(appHeadingTextColorProvider);

    
    return SettingSectionCategory(
      color: appSectionContainerColor,
      myColumn: Column(
        children: [
           SectionHeadingText(
            text: 'Display',
            fontColor: appHeadingTextColor,
            fontSize: appHeadingTextSize,
          ),
          SectionsCategoryRow(
            text: 'Dark mode',
            fontColor: appTextColor,
            iconColor:appIconColor,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DarkModeScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
