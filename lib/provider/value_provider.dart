import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_care_app/constants/value_constants.dart';

final groupValueProvider = StateProvider<int>((ref)=>groupValue);
final switchValueProvider = StateProvider<bool>((ref)=> isEnabled);
final checkBoxValueListProvider = StateProvider<List<bool>>((ref)=>medicineCheckValueList);
final textDecorationValueListProvider = StateProvider<List<TextDecoration>>((ref)=>textDecorationValueList);
final textDecorationValueProvider = StateProvider<TextDecoration>((ref)=>textDecorationValueOne);
