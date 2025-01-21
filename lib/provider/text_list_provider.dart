import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final medicineListProvider = StateProvider<List<String>>((ref)=>[]);
final textControllerProvider = StateProvider<TextEditingController>((ref)=>TextEditingController());