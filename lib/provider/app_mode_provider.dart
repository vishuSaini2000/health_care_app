import 'dart:ui';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_care_app/constants/color_constants.dart';

final appScaffoldColorProvider = StateProvider<Color>((ref) => appBeig);
final appTextColorProvider = StateProvider<Color>((ref)=>appBlack);
final navBarIconColorProvider = StateProvider<Color>((ref)=>appWhite);
final appContainerColorProvider = StateProvider<Color>((ref)=>appLightBlue);
final appIconColorProvider = StateProvider<Color>((ref)=>appBlack);
final appHeadingTextColorProvider = StateProvider<Color>((ref)=>appBlack);
final appSectionContainerColorProvider = StateProvider<Color>((ref)=>appWhite);
final appIconCricleAvatarBgColorProvider = StateProvider<Color>((ref)=>appWhite);
final appTypeBarBgColorProvider = StateProvider<Color>((ref)=>appWhite);
final appBoxShadowColorProvider = StateProvider<Color>((ref)=>appBlack);
final appCategoriesCircleAvatarBgColorProvider = StateProvider<Color>((ref)=>appLightBlue);
final appUniqueTextColorProvider = StateProvider<Color>((ref)=>appLightBlue);
final appListContainerColorProvider = StateProvider<Color>((ref)=>appWhite);
final appBottomBorderColorProvider = StateProvider<Color>((ref)=>appSlateBlue);
