import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_care_app/constants/font_size_constants.dart';
import 'package:health_care_app/provider/app_mode_provider.dart';
import 'package:health_care_app/screens/components/section_category_bottom_border.dart';
import 'package:health_care_app/screens/components/sections_category_row.dart';
import 'package:health_care_app/screens/components/settings_section_category.dart';
import 'package:health_care_app/widgets/common/section_heading_text.dart';

class ProfileSection extends ConsumerStatefulWidget {
  const ProfileSection({super.key});

  @override
  ConsumerState<ProfileSection> createState() => _ProfileSectionState();
}

class _ProfileSectionState extends ConsumerState<ProfileSection> {
  @override
  Widget build(BuildContext context) {
     Color appSectionContainerColor = ref.watch(appSectionContainerColorProvider);
     
    Color appTextColor = ref.watch(appTextColorProvider);
    Color appIconColor = ref.watch(appIconColorProvider);
    Color appHeadingTextColor = ref.watch(appHeadingTextColorProvider);


    
    Color appBottomBorderColor =
        ref.watch(appBottomBorderColorProvider);
    return SettingSectionCategory(
      color: appSectionContainerColor,
      myColumn:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        SectionHeadingText(
          text: 'Profile Information',
          fontColor: appHeadingTextColor,
          fontSize: appHeadingTextSize,
        ),
        SectionsCategoryRow(
          text: 'Name, location and industry',
          fontColor: appTextColor,
          iconColor: appIconColor,
        ),
        SectionCategoryBottomBorder(color: appBottomBorderColor),
        SectionsCategoryRow(
            text: 'Personal demographic information',
            fontColor: appTextColor,
            iconColor: appIconColor),
        SectionCategoryBottomBorder(color: appBottomBorderColor),
        SectionsCategoryRow(
            text: 'Verifications',
            fontColor: appTextColor,
            iconColor: appIconColor),
      ]),
    );
  }
}
