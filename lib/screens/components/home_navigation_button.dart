import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_care_app/provider/app_mode_provider.dart';
import 'package:health_care_app/widgets/common/app_circle_avatar.dart';

class HomeNavigationButton extends ConsumerStatefulWidget {
  const HomeNavigationButton({super.key});

  @override
  ConsumerState<HomeNavigationButton> createState() =>
      _HomeNavigationButtonState();
}

class _HomeNavigationButtonState extends ConsumerState<HomeNavigationButton> {
  @override
  Widget build(BuildContext context) {
     Color appIconCricleAvatarBgColor = ref.watch(appIconCricleAvatarBgColorProvider);
     Color appIconColor = ref.watch(appIconColorProvider);
    return AppCircleAvatar(
      radius: 25,
      backgroundColor: appIconCricleAvatarBgColor,
      child: Icon(
        Icons.arrow_forward,
        color: appIconColor),
    );
  }
}
