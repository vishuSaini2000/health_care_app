import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_care_app/constants/color_constants.dart';
import 'package:health_care_app/constants/dark_color_constants.dart';
import 'package:health_care_app/constants/path_constants.dart';
import 'package:health_care_app/provider/app_mode_provider.dart';
import 'package:health_care_app/provider/image_provider.dart';
import 'package:health_care_app/provider/value_provider.dart';
import 'package:health_care_app/screens/components/app_bar.dart';
import 'package:health_care_app/screens/settings_screen.dart';
import 'package:health_care_app/widgets/common/radio_button_row.dart';
import 'package:health_care_app/widgets/common/sub_section_category_sub_heading.dart';
import 'package:health_care_app/widgets/common/sub_sections_category_container.dart';
import 'package:health_care_app/widgets/common/sub_sections_category_heading.dart';

class DarkModeScreen extends ConsumerStatefulWidget {
  const DarkModeScreen({super.key});

  @override
  ConsumerState<DarkModeScreen> createState() => _DarkModeScreenState();
}

class _DarkModeScreenState extends ConsumerState<DarkModeScreen> {
  final _groupValueNotifier = groupValueProvider.notifier;
  final _doctorContainerImageNotifier = doctorContainerImageProvider.notifier;
  final _appscaffoldColorNotifier = appScaffoldColorProvider.notifier;
  final _appTextColorNotifier = appTextColorProvider.notifier;
  final _appContainerColorNotifier = appContainerColorProvider.notifier;
  final _appIconColorNotifier = appIconColorProvider.notifier;
  final _appHeadingTextColorNotifier = appHeadingTextColorProvider.notifier;
  final _appSectionContainerColorNotifier = appSectionContainerColorProvider.notifier;
  final _appIconCircleAvatarBgColorNotifier = appIconCricleAvatarBgColorProvider.notifier;
  final _appTypeBarBgColorNotifier = appTypeBarBgColorProvider.notifier;
  final _appBoxShadowColorNotifier = appBoxShadowColorProvider.notifier;
  final _appCategoriesCircleAvatarBgColorNotifier = appCategoriesCircleAvatarBgColorProvider.notifier;
  final _appUniqueTextColorNotifier = appUniqueTextColorProvider.notifier;
  final _appListContainerColorNotifier = appListContainerColorProvider.notifier;
  final _appBottomBorderColorNotifier = appBottomBorderColorProvider.notifier;

  void changeImage(notifier,image){
    notifier.state = image;
  }

  void changeValue(notifier, groupValue) {
    notifier.state = groupValue;
  }

  void changeColor(notifier, color) {
    notifier.state = color;
  }

  void darkMode() {
    changeImage(ref.read(_doctorContainerImageNotifier),firstScreenBackgroundImageDarkMode);
    changeColor(ref.read(_appscaffoldColorNotifier), appBlack);
    changeColor(ref.read(_appTextColorNotifier),appWhite);
    changeColor(ref.read(_appContainerColorNotifier),appDarkNavyBlue);
    changeColor(ref.read(_appIconColorNotifier),appWhite);
    changeColor(ref.read(_appHeadingTextColorNotifier),appGrey);
    changeColor(ref.read(_appSectionContainerColorNotifier), appDarkNavyBlue);
    changeColor(ref.read(_appIconCircleAvatarBgColorNotifier),appGrey);
    changeColor(ref.read(_appTypeBarBgColorNotifier),appGrey);
    changeColor(ref.read(_appBoxShadowColorNotifier),appLightBlue);
    changeColor(ref.read(_appCategoriesCircleAvatarBgColorNotifier),appDarkNavyBlue);
    changeColor(ref.read(_appUniqueTextColorNotifier),appGrey);
    changeColor(ref.read(_appListContainerColorNotifier),appGrey);
    changeColor(ref.read(_appBottomBorderColorNotifier), appGrey);
    
    
    
  }

  void lightMode() {
    changeImage(ref.read(_doctorContainerImageNotifier),firstScreenBackgroundImageLightMode);
    changeColor(ref.read(_appscaffoldColorNotifier), appBeig);
    changeColor(ref.read(_appTextColorNotifier),appBlack);
    changeColor(ref.read(_appContainerColorNotifier),appLightBlue);
    changeColor(ref.read(_appIconColorNotifier),appBlack);
    changeColor(ref.read(_appHeadingTextColorNotifier),appBlack);
    changeColor(ref.read(_appSectionContainerColorNotifier), appWhite);
    changeColor(ref.read(_appIconCircleAvatarBgColorNotifier),appWhite);
    changeColor(ref.read(_appTypeBarBgColorNotifier),appWhite);
    changeColor(ref.read(_appBoxShadowColorNotifier),appBlack);
    changeColor(ref.read(_appCategoriesCircleAvatarBgColorNotifier),appLightBlue);
    changeColor(ref.read(_appUniqueTextColorNotifier),appLightBlue);
    changeColor(ref.read(_appListContainerColorNotifier),appWhite);
    changeColor(ref.read(_appBottomBorderColorNotifier), appSlateBlue);
  }

  @override
  Widget build(BuildContext context) {

    Color appScaffoldColor = ref.watch(appScaffoldColorProvider);
    Color appIconColor = ref.watch(appIconColorProvider);
    Color appContainerColor = ref.watch(appContainerColorProvider);
    Color appSectionContainerColor = ref.watch(appSectionContainerColorProvider);
    Color appHeadingTextColor = ref.watch(appHeadingTextColorProvider);
    Color appTextColor = ref.watch(appTextColorProvider);
  
    
    
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
              text: 'Dark Mode'),
          SubSectionsCategoryContainer(
            color: appSectionContainerColor,
            child: Column(
              children: [
                SubSectionsCategoryHeading(
                    text:
                        'Choose how your healthCareApp experience looks for this device.',
                    fontColor: appHeadingTextColor),
                RadioButtonRow(
                    text: 'Device settings',
                    fontColor: appTextColor,
                    groupValue: groupValue,
                    onChanged: (value) {
                      changeValue(ref.read(_groupValueNotifier), 3);
                    },
                    value: 3),
                RadioButtonRow(
                    text: 'Dark Mode',
                    fontColor: appTextColor,
                    groupValue: groupValue,
                    onChanged: (value) {
                      changeValue(ref.read(_groupValueNotifier), 2);
                      darkMode();
                    },
                    value: 2),
                RadioButtonRow(
                    text: 'Light Mode',
                    fontColor: appTextColor,
                    groupValue: groupValue,
                    onChanged: (value) {
                      changeValue(ref.read(_groupValueNotifier), 1);
                      lightMode();
                    },
                    value: 1),
                SubSectionsCategorySubHeading(
                  text:
                      'If you choose Device settings, this app will use the mode that\'s already in this device\'s settings.',
                  fontColor: appTextColor,
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
