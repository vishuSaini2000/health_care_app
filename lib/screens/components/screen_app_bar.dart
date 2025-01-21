import 'package:flutter/material.dart';
import 'package:health_care_app/constants/color_constants.dart';
import 'package:health_care_app/screens/home.dart';
import 'package:health_care_app/widgets/common/app_text_widget.dart';
import 'package:health_care_app/widgets/common/space_between_row_childre.dart';

class SettingsScreenAppBar extends StatefulWidget {
  const SettingsScreenAppBar({super.key});

  @override
  State<SettingsScreenAppBar> createState() => _SettingsAppBarState();
}

class _SettingsAppBarState extends State<SettingsScreenAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: appLightBlue,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Home(),
                  ),
                );
              },
              child: const Icon(
                Icons.arrow_back,
                color: appWhite,
              ),
            ),
            const SpaceBetweenRowChildren(width: 30),
            const AppTextWidget(
              text: 'Settings',
              fontColor: appWhite,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )
          ],
        ),
      ),
    );
  }
}
