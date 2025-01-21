import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_care_app/constants/font_size_constants.dart';
import 'package:health_care_app/provider/app_mode_provider.dart';
import 'package:health_care_app/screens/components/sections_category_row.dart';
import 'package:health_care_app/screens/components/settings_section_category.dart';
import 'package:health_care_app/widgets/common/section_heading_text.dart';

class SyncinngOptionSection extends ConsumerStatefulWidget {
  const SyncinngOptionSection({super.key});

  @override
  ConsumerState<SyncinngOptionSection> createState() =>
      _SyncinningOptionSectionState();
}

class _SyncinningOptionSectionState
    extends ConsumerState<SyncinngOptionSection> {
  @override
  Widget build(BuildContext context) {
     Color appSectionContainerColor = ref.watch(appSectionContainerColorProvider);
    Color appTextColor = ref.watch(appTextColorProvider);
     Color appIconColor = ref.watch(appIconColorProvider); 
     Color appHeadingTextColor = ref.watch(appHeadingTextColorProvider);

    
   
  
    return SettingSectionCategory(
      color: appSectionContainerColor,
      myColumn:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        SectionHeadingText(
          text: 'Syncing options',
          fontColor: appHeadingTextColor,
          fontSize: appHeadingTextSize,
        ),
        SectionsCategoryRow(
            text: 'Sync contacts',
            fontColor: appTextColor,
            iconColor: appIconColor),
      ]),
    );
  }
}
