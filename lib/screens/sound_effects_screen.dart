import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_care_app/constants/text_constants.dart';
import 'package:health_care_app/constants/value_constants.dart';
import 'package:health_care_app/provider/app_mode_provider.dart';
import 'package:health_care_app/provider/option_text_provider.dart';
import 'package:health_care_app/provider/value_provider.dart';
import 'package:health_care_app/screens/components/app_bar.dart';
import 'package:health_care_app/screens/settings_screen.dart';
import 'package:health_care_app/widgets/common/sub_section_category_sub_heading.dart';
import 'package:health_care_app/widgets/common/sub_sections_category_container.dart';
import 'package:health_care_app/widgets/common/sub_sections_category_heading.dart';
import 'package:health_care_app/widgets/common/toogle_switch_row.dart';

class SoundEffectsScreen extends ConsumerStatefulWidget {
  const SoundEffectsScreen({super.key});

  @override
  ConsumerState<SoundEffectsScreen> createState() => _DarkModeScreenState();
}

class _DarkModeScreenState extends ConsumerState<SoundEffectsScreen> {
  final soundEffectsToggleSwitchValueNotifier =
      switchValueProvider.notifier;
  final toogleSwitchTextNotifier = toogleSwitchTextProvider.notifier;
  final playSoundeffectTextOptionTextNotifier =
      playSoundeffectTextOptionTextProvider.notifier;


  void changeValue(notifier, value) {
    notifier.state = value;
  }

  void changeText(notifier, text) {
    notifier.state = text;
  }

  @override
  Widget build(BuildContext context) {
    Color appScaffoldColor = ref.watch(appScaffoldColorProvider);
   Color appContainerColor = ref.watch(appContainerColorProvider);
   Color appIconColor = ref.watch(appIconColorProvider);
    Color appSectionContainerColor = ref.watch(appSectionContainerColorProvider);
    Color appHeadingTextColor = ref.watch(appHeadingTextColorProvider);
    Color appTextColor = ref.watch(appTextColorProvider);

    


    
    bool soundEffectsToggleSwitchValue =
        ref.watch(switchValueProvider);
    String toogleSwitchText = ref.watch(toogleSwitchTextProvider);
    String playSoundeffectTextOptionText =
        ref.watch(playSoundeffectTextOptionTextProvider);

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
                text: 'Sound effects'),
            Expanded(
              child: SubSectionsCategoryContainer(
                color: appSectionContainerColor,
                child: Column(
                  children: [
                    SubSectionsCategoryHeading(
                        text:
                            'Do you want sound effects to play for certain actions while using healthCareApp on your Android devices?',
                        fontColor: appHeadingTextColor),
                    ToogleSwitchRow(
                        text: 'Play sound effects',
                        fontColor: appTextColor,
                        value: soundEffectsToggleSwitchValue,
                        switchTextColor: appTextColor,
                        switchText: toogleSwitchText,
                        onChanged: (value) {
                          changeValue(
                            ref.read(soundEffectsToggleSwitchValueNotifier),
                            (soundEffectsToggleSwitchValue ==
                                    isDisabled
                                ? isEnabled
                                : isDisabled),
                          );
                          changeText(
                            ref.read(toogleSwitchTextNotifier),
                            (toogleSwitchText == toogleSwitchTextOptionOne
                                ? toogleSwitchTextOptionTwo
                                : toogleSwitchTextOptionOne),
                          );
                          changeText(
                            ref.read(playSoundeffectTextOptionTextNotifier),
                            (playSoundeffectTextOptionText ==
                                    playSoundeffectTextOptionOne
                                ? playSoundeffectTextOptionTwo
                                : playSoundeffectTextOptionOne),
                          );
                        }),
                    SubSectionsCategorySubHeading(
                      text:
                          'If you choose Device settings, this app will use the mode that\'s already in this device\'s settings.',
                      fontColor: appTextColor,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
