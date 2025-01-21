import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_care_app/constants/value_constants.dart';
import 'package:health_care_app/provider/app_mode_provider.dart';
import 'package:health_care_app/provider/text_list_provider.dart';
import 'package:health_care_app/provider/value_provider.dart';
import 'package:health_care_app/screens/components/add_medicine_button.dart';
import 'package:health_care_app/screens/components/input_text_container.dart';
import 'package:health_care_app/widgets/common/space_between_column_children.dart';

class BottomInputContainer extends ConsumerStatefulWidget {
  const BottomInputContainer({super.key});

  @override
  ConsumerState<BottomInputContainer> createState() =>
      _InputTextContainerState();
}

class _InputTextContainerState extends ConsumerState<BottomInputContainer> {


  void addCheckbox(state) {
    state = [...state, false];
  }

  @override
  Widget build(BuildContext context) {
    Color appContainerColor = ref.watch(appContainerColorProvider);
    
    TextEditingController textController = ref.watch(textControllerProvider);
    return Container(
      height: 400,
      decoration: BoxDecoration(
        color: appContainerColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const InputTextContainer(),
            const SpaceBetweenColumnChildren(height: 7),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      final text = textController.text;
                      textController.clear();
                      ref
                          .read(medicineListProvider.notifier)
                          .update((state) => [...state, text]);
                      ref
                          .read(checkBoxValueListProvider.notifier)
                          .update(
                              (state) => [...state, isDisabled]);
                      ref
                          .read(
                              textDecorationValueListProvider.notifier)
                          .update((state) =>
                              [...state, textDecorationValueTwo]);
                    },
                    child: const AddMedicineButton())
              ],
            )
          ],
        ),
      ),
    );
  }
}
