import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_care_app/provider/app_mode_provider.dart';
import 'package:health_care_app/widgets/common/space_between_row_childre.dart';

class ContextSearchBar extends ConsumerStatefulWidget {
  const ContextSearchBar({super.key});

  @override
  ConsumerState<ContextSearchBar> createState() => _ContextSearchBarState();
}

class _ContextSearchBarState extends ConsumerState<ContextSearchBar> {
  @override
  Widget build(BuildContext context) {
    Color appTypeBarBgColor = ref.watch(appTypeBarBgColorProvider);
    Color appTextColor = ref.watch(appTextColorProvider);
    Color appIconColor = ref.watch(appIconColorProvider);
    Color appBoxShadowColor = ref.watch(appBoxShadowColorProvider);
    return Container(
      height: 50,
      width: 300,
      decoration:  BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: appBoxShadowColor.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            // blurStyle: BlurStyle.solid
            offset: const Offset(0,5)
          )
        ],
        color: appTypeBarBgColor,
        borderRadius:const  BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child:  Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SpaceBetweenRowChildren(
            width: 15,
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: Icon(
              size: 30,
              Icons.search,
              color: appIconColor,
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 9,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Find doctor, Clinic Medicine',
                hintStyle: TextStyle(
                    color: appTextColor, fontSize: 13, fontWeight: FontWeight.bold),
                border: InputBorder.none, // Remove default border
                contentPadding:const  EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
