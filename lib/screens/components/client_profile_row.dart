import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_care_app/constants/path_constants.dart';
import 'package:health_care_app/provider/app_mode_provider.dart';
import 'package:health_care_app/screens/settings_screen.dart';
import 'package:health_care_app/widgets/common/app_circle_avatar.dart';
import 'package:health_care_app/widgets/common/app_text_widget.dart';
import 'package:health_care_app/widgets/common/space_between_row_childre.dart';

class ClientProfileRow extends ConsumerStatefulWidget {
  const ClientProfileRow({super.key});

  @override
  ConsumerState<ClientProfileRow> createState() => _ClientProfileRowState();
}

class _ClientProfileRowState extends ConsumerState<ClientProfileRow> {
  @override
  Widget build(BuildContext context) {
    Color appIconCircleAvatarBgColor = ref.watch(appIconCricleAvatarBgColorProvider);
    Color appIconColor = ref.watch(appIconColorProvider);
    Color appTextColor = ref.watch(appTextColorProvider);
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Row(
            children: [
             const  AppCircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(clientProfileCircleAvatarBg),
              ),
              const SpaceBetweenRowChildren(
                width: 25,
              ),
              AppTextWidget(
                text: 'Hi, Ashley Appoloader',
                fontColor: appTextColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsScreen(),
                ),
              );
            },
            child: AppCircleAvatar(
              radius: 20,
              backgroundColor: appIconCircleAvatarBgColor,
              child: Icon(Icons.settings_outlined, color: appIconColor),
            ),
          )
        ],
      ),
    );
  }
}
