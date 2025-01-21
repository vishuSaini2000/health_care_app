import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_care_app/constants/value_constants.dart';
import 'package:health_care_app/provider/text_list_provider.dart';
import 'package:health_care_app/provider/value_provider.dart';
import 'package:health_care_app/widgets/common/list_item_delete_button.dart';
import 'package:health_care_app/widgets/common/medicine_list_items.dart';
import 'package:health_care_app/widgets/common/space_between_column_children.dart';

class MedicineList extends ConsumerStatefulWidget {
  const MedicineList({super.key});

  @override
  ConsumerState<MedicineList> createState() => _MedicineListState();
}

class _MedicineListState extends ConsumerState<MedicineList> {
  final checkBoxValueListNotifier =
      checkBoxValueListProvider.notifier;
  final checkBoxTextDecorationValueListNotifier =
      textDecorationValueListProvider.notifier;
  final checkBoxTextDecorationValueNotifier = textDecorationValueProvider.notifier;

  void changeValue(notifier, value) {
    notifier.state = value;
  }

  @override
  Widget build(BuildContext context) {
    List medicineList = ref.watch(medicineListProvider);
    List<bool> medicineCheckBoxValueList =
        ref.watch(checkBoxValueListProvider);
    List<TextDecoration> checkBoxTextDecorationValueList =
        ref.watch(textDecorationValueListProvider);
    return Container(
        padding: const EdgeInsets.all(10),
        height: 200,
        width: double.infinity,
        decoration: const BoxDecoration(color: Colors.transparent),
        child: ListView.builder(
          itemCount: medicineList.length,
          itemBuilder: (context, index) => Dismissible(
             key: Key(medicineList[index].toString()), // Unique key for Dismissible
            onDismissed: (direction) {
              // Handling item removal
              setState(() {
                medicineList.removeAt(index);
              });
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Medicine Deleted"),
                ),
              );
            },
            background:const  ListItemDeleteButton(),
            child: Column(
              children: [
                MedicineListItems(
                    textDecoration: checkBoxTextDecorationValueList[index],
                    value: medicineCheckBoxValueList[index],
                    onChanged: (dynamic value) {
                      ref.read(checkBoxValueListNotifier).update((state) {
                        List<bool> newState = List.from(state);
                        newState[index] = value;
                        return newState;
                      });
                      ref.read(textDecorationValueListProvider.notifier).update((state) {
                      List<TextDecoration> newState = List.from(state);
                      newState[index] = state[index] == textDecorationValueTwo
                          ? textDecorationValueOne
                          : textDecorationValueTwo;
                      return newState;
                    });
                    },
                    text: medicineList[index]),
                const SpaceBetweenColumnChildren(height: 10)
              ],
            ),
          ),
        ));
  }
}
