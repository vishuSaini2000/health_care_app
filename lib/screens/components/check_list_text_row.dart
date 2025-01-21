import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_care_app/provider/app_mode_provider.dart';
import 'package:health_care_app/screens/components/bottom_input_container.dart';
import 'package:health_care_app/widgets/common/app_text_widget.dart';

class CheckListTextRow extends ConsumerStatefulWidget {
  const CheckListTextRow({super.key});

  @override
  ConsumerState<CheckListTextRow> createState() => _CheckListTextRowState();
}

class _CheckListTextRowState extends ConsumerState<CheckListTextRow> {
  @override
  Widget build(BuildContext context) {
    
   Color appTextColor = ref.watch(appTextColorProvider);
   Color appIconColor = ref.watch(appIconColorProvider);

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           AppTextWidget(
            text: 'Checklist Today',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontColor: appTextColor,
          ),
          GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) => const BottomInputContainer());
              },
              child:  Icon(
                Icons.add,
                color: appIconColor,
              ),
            ),
          
        ],
      ),
    );
  }
}
