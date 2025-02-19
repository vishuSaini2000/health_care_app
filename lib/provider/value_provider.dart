import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_care_app/constants/value_constants.dart';

final groupValueProvider = StateProvider<int>((ref)=>groupValue);
final switchValueProvider = StateProvider<bool>((ref)=> isEnabled);
final checkBoxValueProvider = StateProvider<bool>((ref)=>isDisabled);
final textDecorationValueListProvider = StateProvider<List<TextDecoration>>((ref)=>textDecorationValueList);
final textDecorationValueProvider = StateProvider<TextDecoration>((ref)=>textDecorationValueTwo);
