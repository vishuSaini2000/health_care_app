import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_care_app/constants/text_constants.dart';
import 'package:health_care_app/provider/app_mode_provider.dart';
import 'package:health_care_app/provider/option_text_provider.dart';
import 'package:health_care_app/provider/value_provider.dart';
import 'package:health_care_app/screens/components/app_bar.dart';
import 'package:health_care_app/screens/settings_screen.dart';
import 'package:health_care_app/widgets/common/radio_button_row.dart';
import 'package:health_care_app/widgets/common/sub_sections_category_container.dart';
import 'package:health_care_app/widgets/common/sub_sections_category_heading.dart';

class ShowProfilePhotosScreen extends ConsumerStatefulWidget {
  const ShowProfilePhotosScreen({super.key});

  @override
  ConsumerState<ShowProfilePhotosScreen> createState() => _DarkModeScreenState();
}

class _DarkModeScreenState extends ConsumerState<ShowProfilePhotosScreen> {
  // int _autoPlayVideosGroupValue = 1;
  final _groupValueNotifier = groupValueProvider.notifier;
   final showProfilePhotosOptionTextNotifier = showProfilePhotosOptionTextProvider.notifier;

void changeText(notifier,text){
  notifier.state = text;
}

  void changeValue(notifier, groupValue) {
    notifier.state = groupValue;
  }

  @override
  Widget build(BuildContext context) {
    Color appScaffoldColor = ref.watch(appScaffoldColorProvider);
    Color appContainerColor = ref.watch(appContainerColorProvider);
    Color appTextColor = ref.watch(appTextColorProvider);
    Color appSectionContainerColor = ref.watch(appSectionContainerColorProvider);
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
              text: 'Show profile photos'),
          Expanded(
            child: SubSectionsCategoryContainer(
              color: appSectionContainerColor,
              child: Column(
                children: [
                  SubSectionsCategoryHeading(
                      text:
                          'Which app member\'s profile would you like to see?',
                      fontColor: appHeadingTextColor),
                  RadioButtonRow(
                      text: 'No one',
                      fontColor: appTextColor,
                      groupValue: groupValue,
                      onChanged: (value) {
                       
                       changeValue(ref.read(_groupValueNotifier), 1);
                       changeText(ref.read(showProfilePhotosOptionTextNotifier),showProfileRadioTextOptionOne);
                      },
                      value: 1),
                  RadioButtonRow(
                      text: 'Your Connections',
                      fontColor: appTextColor,
                      groupValue: groupValue,
                      onChanged: (value) {
                      
                         changeValue(ref.read(_groupValueNotifier), 2);
                         changeText(ref.read(showProfilePhotosOptionTextNotifier),showProfileRadioTextOptionTwo);
                        
                      },
                      value: 2),
                  RadioButtonRow(
                      text: 'Your network',
                      fontColor: appTextColor,
                      groupValue: groupValue,
                      onChanged: (value) {
                        changeValue(ref.read(_groupValueNotifier), 3);
                        changeText(ref.read(showProfilePhotosOptionTextNotifier),showProfileRadioTextOptionThree);
                      },
                      value: 3),
                  RadioButtonRow(
                      text: 'All app members',
                      fontColor: appTextColor,
                      groupValue: groupValue,
                      onChanged: (value) {
                        changeValue(ref.read(_groupValueNotifier), 4);
                        changeText(ref.read(showProfilePhotosOptionTextNotifier),showProfileRadioTextOptionFour);
                      },
                      value: 4),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
