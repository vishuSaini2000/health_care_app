import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:health_care_app/constants/color_constants.dart';

import 'package:health_care_app/provider/text_list_provider.dart';

// import 'package:health_care_app/widgets/common/list_item_delete_button.dart';
import 'package:health_care_app/widgets/common/medicine_list_items.dart';
import 'package:health_care_app/widgets/common/space_between_column_children.dart';

class MedicineList extends ConsumerStatefulWidget {
  const MedicineList({super.key});

  @override
  ConsumerState<MedicineList> createState() => _MedicineListState();
}

class _MedicineListState extends ConsumerState<MedicineList> {
  void changeValue(notifier, value) {
    notifier.state = value;
  }

  @override
  Widget build(BuildContext context) {
    List medicineList = ref.watch(medicineListProvider);
    // final SlidableController slidableController = SlidableController();

    return Container(
      padding: const EdgeInsets.all(10),
      height: 200,
      width: double.infinity,
      decoration: const BoxDecoration(color: Colors.transparent),
      child: ListView.builder(
        itemCount: medicineList.length,
        itemBuilder: (context, index) => Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Slidable(
              // key: Key(medicineList[index].toString()),
              // controller: slidableController,
              endActionPane:
                  ActionPane(motion: const BehindMotion(), children: [
                SlidableAction(
                  onPressed: (context) {
                    ref.read(medicineListProvider.notifier).update((state) {
                      final newList = List.of(
                          state); // Create a new list to trigger state update
                      newList.removeAt(index);
                      return newList;
                    });
                  },
                  backgroundColor: appRed,
                  icon: Icons.delete,
                  label: 'Delete',
                ),
                SlidableAction(
                  foregroundColor: appWhite,
                  onPressed: (context){
                    Slidable.of(context)?.close();
                  },
                  backgroundColor: appGrey,
                  icon: Icons.close,
                  label: 'Close',
                )
              ]),
              child: MedicineListItems(
                text: medicineList[index].text,
              ),
            ),
            const SpaceBetweenColumnChildren(height: 10)
          ],
        ),
      ),
    );
  }
}
