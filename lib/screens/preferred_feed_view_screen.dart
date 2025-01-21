import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_care_app/constants/text_constants.dart';
import 'package:health_care_app/provider/app_mode_provider.dart';
import 'package:health_care_app/provider/option_text_provider.dart';
import 'package:health_care_app/provider/value_provider.dart';
import 'package:health_care_app/screens/components/app_bar.dart';
import 'package:health_care_app/screens/settings_screen.dart';
import 'package:health_care_app/widgets/common/radio_button_row.dart';
import 'package:health_care_app/widgets/common/sub_section_category_sub_heading.dart';
import 'package:health_care_app/widgets/common/sub_sections_category_container.dart';
import 'package:health_care_app/widgets/common/sub_sections_category_heading.dart';

class PreferredFeedViewScreen extends ConsumerStatefulWidget {
  const PreferredFeedViewScreen({super.key});

  @override
  ConsumerState<PreferredFeedViewScreen> createState() => _DarkModeScreenState();
 
}

class _DarkModeScreenState extends ConsumerState<PreferredFeedViewScreen> {
  final _groupValueNotifier = groupValueProvider.notifier;
  final _preferredFeedViewOptionTextNotifier = preferredFeedViewOptionTextProvider.notifier;

  void changeGroupValue(notifier,groupValue){
    notifier.state = groupValue;
  }

  void changeText(notifier,text){
    notifier.state = text;
  }
   

  @override
  Widget build(BuildContext context) {
    Color appScaffoldColor = ref.watch(appScaffoldColorProvider);
    
    Color appSectionContainerColor = ref.watch(appSectionContainerColorProvider);
    Color appTextColor = ref.watch(appTextColorProvider);
    Color appContainerColor = ref.watch(appContainerColorProvider);
    Color appIconColor = ref.watch(appIconColorProvider);
    Color appHeadingTextColor = ref.watch(appHeadingTextColorProvider);
    
    int groupValue = ref.watch(groupValueProvider);
    return Scaffold(
      backgroundColor: appScaffoldColor,
      body: SafeArea(
          child: Column(
        children: [
          ScreenAppBar(
            fontColor: appTextColor,
            iconColor: appIconColor,
            color: appContainerColor,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsScreen(),
                  ),
                );
              },
              text: 'Preferred Feed View'),
          Expanded(
            child: SubSectionsCategoryContainer(
                color: appSectionContainerColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SubSectionsCategoryHeading(
                        text:'Select your preferred feed view.',
                        fontColor: appHeadingTextColor),
                    RadioButtonRow(
                        text: 'Most relevant posts (Recommended)',
                        fontColor: appTextColor,
                        groupValue: groupValue,
                        onChanged: (value) {
                           changeGroupValue(ref.read(_groupValueNotifier), 1);
                           changeText(ref.read(_preferredFeedViewOptionTextNotifier),preferredFeedViewTextOptionOne);
                        },
                        value: 1),
                    RadioButtonRow(
                        text: 'Most recent posts',
                        fontColor: appTextColor,
                        groupValue: groupValue,
                        onChanged: (value) {
                         changeGroupValue(ref.read(_groupValueNotifier), 2);
                         changeText(ref.read(_preferredFeedViewOptionTextNotifier),preferredFeedViewTextOptionTwo);
                        },
                        value: 2),
                    SubSectionsCategorySubHeading(
                      text:
                          'The first option means app will use data from your profile and activity to rank feed content based on your interests. The second option means app won\'t use your profile and activity data, and instead show content in reverse chronological order. This will become your default feed view. You can change your feed preferences again anytime.',
                      fontColor:appTextColor ,
                    )
                  ],
                ),
              ),
          ),
          
        ],
      )),
    );
  }
}
