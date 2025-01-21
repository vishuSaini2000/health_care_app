import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_care_app/constants/font_size_constants.dart';
import 'package:health_care_app/provider/app_mode_provider.dart';
import 'package:health_care_app/screens/components/app_bar.dart';
import 'package:health_care_app/screens/components/setting_sections/display_section.dart';
import 'package:health_care_app/screens/components/setting_sections/general_preferences_section.dart';
import 'package:health_care_app/screens/components/profile_section.dart';
import 'package:health_care_app/screens/components/setting_sections/subscription_payments_section.dart';
import 'package:health_care_app/screens/components/setting_sections/syncing_option_section.dart';
import 'package:health_care_app/screens/home.dart';
import 'package:health_care_app/widgets/common/space_between_column_children.dart';

class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({super.key});

  @override
  ConsumerState<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends ConsumerState<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    Color appScaffoldColor = ref.watch(appScaffoldColorProvider);
    Color appContainerColor = ref.watch(appContainerColorProvider);
    Color appTextColor = ref.watch(appTextColorProvider);
    return  Scaffold(
      backgroundColor: appScaffoldColor,
      body: SafeArea(
        child: Column(children: [
          ScreenAppBar(

            color: appContainerColor,
            fontColor: appTextColor,
            iconColor: appTextColor,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Home(),
                  ),
                );
          } , text: 'Settings'),
         const  Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ProfileSection(),
                  SpaceBetweenColumnChildren(
                    height: spaceBetweenSections,
                  ),
                  DisplaySection(),
                   SpaceBetweenColumnChildren(
                    height: spaceBetweenSections,
                  ),
                  GeneralPreferencesSection(),
                  SpaceBetweenColumnChildren(
                    height: spaceBetweenSections,
                  ),
                  SyncinngOptionSection(),
                  SpaceBetweenColumnChildren(
                    height: spaceBetweenSections,
                  ),
                  SubscriptionsPaymentsSection(),
                  SpaceBetweenColumnChildren(
                    height: spaceBetweenSections,
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
