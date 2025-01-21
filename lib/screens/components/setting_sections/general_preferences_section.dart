import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_care_app/constants/font_size_constants.dart';
import 'package:health_care_app/provider/app_mode_provider.dart';
import 'package:health_care_app/provider/option_text_provider.dart';
import 'package:health_care_app/screens/auto_play_videos_screen.dart';
import 'package:health_care_app/screens/components/section_category_bottom_border.dart';
import 'package:health_care_app/screens/components/sections_category_row.dart';
import 'package:health_care_app/screens/components/settings_section_category.dart';
import 'package:health_care_app/screens/preferred_feed_view_screen.dart';
import 'package:health_care_app/screens/show_profile_photos_screen.dart';
import 'package:health_care_app/screens/sound_effects_screen.dart';
import 'package:health_care_app/widgets/common/section_heading_text.dart';

class GeneralPreferencesSection extends ConsumerStatefulWidget {
  const GeneralPreferencesSection({super.key});

  @override
  ConsumerState<GeneralPreferencesSection> createState() =>
      _GeneralPreferencesSectionState();
}

class _GeneralPreferencesSectionState
    extends ConsumerState<GeneralPreferencesSection> {
  @override
  Widget build(BuildContext context) {
    Color appSectionContainerColor =
        ref.watch(appSectionContainerColorProvider);
    Color appTextColor = ref.watch(appTextColorProvider);
    Color appIconColor = ref.watch(appIconColorProvider);
    Color appHeadingTextColor = ref.watch(appHeadingTextColorProvider);
    Color appUniqueTextColor = ref.watch(appUniqueTextColorProvider);
    Color appBottomBorderColor = ref.watch(appBottomBorderColorProvider);
    String autoPlayVideosOptionText =
        ref.watch(autoPlayVideosOptionTextProvider);
    String showProfilePhotosOptionText =
        ref.watch(showProfilePhotosOptionTextProvider);
    String preferredFeedViewOptionText =
        ref.watch(preferredFeedViewOptionTextProvider);

    String playSoundeffectTextOptionText =
        ref.watch(playSoundeffectTextOptionTextProvider);
    return SettingSectionCategory(
      color: appSectionContainerColor,
      myColumn:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        SectionHeadingText(
          text: 'General preferences',
          fontColor: appHeadingTextColor,
          fontSize: appHeadingTextSize,
        ),
        SectionsCategoryRow(
            text: 'Language', fontColor: appTextColor, iconColor: appIconColor),
        SectionCategoryBottomBorder(
          color: appBottomBorderColor,
        ),
        SectionsCategoryRow(
            text: 'Content Language',
            fontColor: appTextColor,
            iconColor: appIconColor),
        SectionCategoryBottomBorder(
          color: appBottomBorderColor,
        ),
        SectionsCategoryRow(
            text: 'Auto Play videos',
            selectedOptionText: autoPlayVideosOptionText,
            selectedOptionTextfontColor: appUniqueTextColor,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AutoPlayVideosScreen(),
                ),
              );
            },
            fontColor: appTextColor,
            iconColor: appIconColor),
        SectionCategoryBottomBorder(
          color: appBottomBorderColor,
        ),
        SectionsCategoryRow(
            text: 'Sound effects',
            selectedOptionText: playSoundeffectTextOptionText,
            selectedOptionTextfontColor: appUniqueTextColor,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SoundEffectsScreen(),
                ),
              );
            },
            fontColor: appTextColor,
            iconColor: appIconColor),
        const SectionCategoryBottomBorder(),
        SectionsCategoryRow(
            text: 'Showing profile photos',
            selectedOptionText: showProfilePhotosOptionText,
            selectedOptionTextfontColor: appUniqueTextColor,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ShowProfilePhotosScreen(),
                ),
              );
            },
            fontColor: appTextColor,
            iconColor: appIconColor),
        SectionCategoryBottomBorder(
          color: appBottomBorderColor,
        ),
        SectionsCategoryRow(
            text: 'Preferred Feed View',
            selectedOptionText: preferredFeedViewOptionText,
            selectedOptionTextfontColor: appUniqueTextColor,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PreferredFeedViewScreen()),
              );
            },
            fontColor: appTextColor,
            iconColor: appIconColor),
        SectionCategoryBottomBorder(
          color: appBottomBorderColor,
        ),
        SectionsCategoryRow(
            text: 'People you unfollowed',
            fontColor: appTextColor,
            iconColor: appIconColor),
        SectionCategoryBottomBorder(
          color: appBottomBorderColor,
        ),
        SectionsCategoryRow(
            text: 'Open web links in app',
            fontColor: appTextColor,
            iconColor: appIconColor),
      ]),
    );
  }
}
