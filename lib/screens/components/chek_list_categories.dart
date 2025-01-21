import 'package:flutter/material.dart';

class CheckListCategory extends StatefulWidget {
  const CheckListCategory({super.key});

  @override
  State<CheckListCategory> createState() => _CheckListCategoryState();
}

class _CheckListCategoryState extends State<CheckListCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(0, 47, 42, 42),
      ),
      child: const Text('Vishal Saini'),
    );
  }
}
