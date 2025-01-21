import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_care_app/constants/color_constants.dart';
import 'package:health_care_app/provider/app_mode_provider.dart';
import 'package:health_care_app/provider/text_list_provider.dart';
import 'package:health_care_app/widgets/common/app_circle_avatar.dart';

class InputTextContainer extends ConsumerStatefulWidget {
  const InputTextContainer({super.key});

  @override
  ConsumerState<InputTextContainer> createState() => _InputTextContainerState();
}

class _InputTextContainerState extends ConsumerState<InputTextContainer> {
  @override
  Widget build(BuildContext context) {
    Color appTypeBarBgColor = ref.watch(appTypeBarBgColorProvider);
    Color appTextColor = ref.watch(appTextColorProvider);
    Color appIconColor = ref.watch(appIconColorProvider);
    Color appIconCricleAvatarBgColor = ref.watch(appIconCricleAvatarBgColorProvider);

    TextEditingController textController = ref.watch(textControllerProvider);

    return Container(
      padding: const EdgeInsets.all(15),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: appTypeBarBgColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 9,
            fit: FlexFit.tight,
            child: TextField(
              controller: textController,
              autofocus: true,
              cursorColor: appBlack,
              decoration: InputDecoration.collapsed(
                hintText: 'Add Medicines',
                hintStyle:
                    TextStyle(color: appTextColor, fontSize: 15),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: GestureDetector(
              onTap: () {
                textController.clear();
              },
              child: AppCircleAvatar(
                radius: 15,
                backgroundColor:appIconCricleAvatarBgColor,
                child: Icon(Icons.clear,
                    color: appIconColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}
