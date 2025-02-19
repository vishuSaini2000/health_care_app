import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_care_app/widgets/common/medicine_list_items.dart';

final medicineListProvider = StateProvider<List<MedicineListItems>>((ref)=>[]);
final textControllerProvider = StateProvider<TextEditingController>((ref)=>TextEditingController());