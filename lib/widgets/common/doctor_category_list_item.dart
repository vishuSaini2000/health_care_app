import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_care_app/constants/path_constants.dart';
import 'package:health_care_app/provider/app_mode_provider.dart';
import 'package:health_care_app/widgets/common/app_circle_avatar.dart';
import 'package:health_care_app/widgets/common/app_text_widget.dart';

class DoctorCategoryListItem extends ConsumerStatefulWidget {
  final ImageProvider backgroundImage;
  final String nameText;
  final String designation;
  final String opdTime;
  final FontWeight nameFontWeight;
  final FontWeight opdTimeFontWeight;
  final FontWeight designationFontWeight;

  const DoctorCategoryListItem(
      {super.key,
      this.backgroundImage = const AssetImage(doctorCategoryListItemCircleAvatarBg),
      required this.nameText,
      required this.designation,
      this.designationFontWeight = FontWeight.normal,
      this.nameFontWeight = FontWeight.bold,
      required this.opdTime,
      this.opdTimeFontWeight = FontWeight.bold});

  @override
  ConsumerState<DoctorCategoryListItem> createState() =>
      _DoctorCategoryListItemState();
}

class _DoctorCategoryListItemState
    extends ConsumerState<DoctorCategoryListItem> {
  @override
  Widget build(BuildContext context) {
    Color appTextColor = ref.watch(appTextColorProvider);
    Color appListContainerColor = ref.watch(appListContainerColorProvider);
    Color appCategoriesCircleAvatarBgColor = ref.watch(appCategoriesCircleAvatarBgColorProvider);
    
    return Container(
      padding: const EdgeInsets.all(10),
      width: 230,
      decoration: BoxDecoration(
        color: appListContainerColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppCircleAvatar(
            radius: 30,
            backgroundColor: appCategoriesCircleAvatarBgColor,
            backgroundImage: widget.backgroundImage,
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            AppTextWidget(
                text: widget.nameText,
                fontWeight: widget.nameFontWeight,
                fontColor: appTextColor,
                fontSize: 15),
            AppTextWidget(
              text: widget.designation,
              fontSize: 10,
              fontWeight: widget.designationFontWeight,
              fontColor: appTextColor,
            ),
            AppTextWidget(
                text: widget.opdTime,
                fontSize: 15,
                fontWeight: widget.opdTimeFontWeight,
                fontColor: appTextColor),
          ]),
        ],
      ),
    );
  }
}
