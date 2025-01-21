import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
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

class AutoPlayVideosScreen extends ConsumerStatefulWidget {
  const AutoPlayVideosScreen({super.key});

  @override
  ConsumerState<AutoPlayVideosScreen> createState() => _DarkModeScreenState();
}

class _DarkModeScreenState extends ConsumerState<AutoPlayVideosScreen> {
  // int _autoPlayVideosGroupValue = 1;
  final _groupValueNotifier = groupValueProvider.notifier;
  final _autoPlayVideosOptionTextNotifier =autoPlayVideosOptionTextProvider.notifier; 

  void changeValue(notifier,value){
    notifier.state = value;
  }
  void changeText(notifier, text) {
    notifier.state = text;
  }



  @override
  Widget build(BuildContext context) {
    Color appScaffoldColor = ref.watch(appScaffoldColorProvider);
   
    Color appSectionContainerColor = ref.watch(appSectionContainerColorProvider);
    Color appHeadingTextColor = ref.watch(appHeadingTextColorProvider);
    Color appTextColor = ref.watch(appTextColorProvider);
   Color appContainerColor = ref.watch(appContainerColorProvider);
   Color appIconColor = ref.watch(appIconColorProvider);
    
    // Color radioButtonRowTextColor = ref.watch(radioButtonRowTextColorProvider);
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
              text: 'Autoplay videos'),
          Expanded(
            child: SubSectionsCategoryContainer(
              color: appSectionContainerColor,
              child: Column(
                children: [
                  SubSectionsCategoryHeading(
                      text:
                          'When do we autoplay videos that appear in your viewing experience on this app',
                      fontColor: appHeadingTextColor),
                  RadioButtonRow(
                      text: 'Never Autoplay Videos',
                      fontColor: appTextColor,
                      groupValue: groupValue,
                      onChanged: (value) {
                        changeValue(ref.read(_groupValueNotifier), 1);
                        changeText(ref.read(_autoPlayVideosOptionTextNotifier), autoPlayRadioTextOptionOne);
                      },
                      value: 1),
                  RadioButtonRow(
                      text: 'Wi-fi Connections Only',
                      fontColor: appTextColor,
                      groupValue: groupValue,
                      onChanged: (value) {
                        
                           changeValue(ref.read(_groupValueNotifier), 2);
                           changeText(ref.read(_autoPlayVideosOptionTextNotifier), autoPlayRadioTextOptionTwo);
                        
                      },
                      value: 2),
                  RadioButtonRow(
                      text: 'On Mobile Data and Wi-Fi Connections',
                      fontColor: appTextColor,
                      groupValue: groupValue,
                      onChanged: (value) {
                          changeValue(ref.read(_groupValueNotifier), 3);
                         changeText(ref.read(_autoPlayVideosOptionTextNotifier), autoPlayRadioTextOptionThree);
                      },
                      value: 3),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
