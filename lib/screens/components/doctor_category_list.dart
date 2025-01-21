import 'package:flutter/material.dart';
import 'package:health_care_app/widgets/common/doctor_category_list_item.dart';
import 'package:health_care_app/widgets/common/space_between_row_childre.dart';

class DoctorCategoryList extends StatefulWidget {
  const DoctorCategoryList({super.key});

  @override
  State<DoctorCategoryList> createState() => _DoctorCategoryListState();
}

class _DoctorCategoryListState extends State<DoctorCategoryList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 100,
      width: double.infinity,
      decoration: const BoxDecoration(color: Colors.transparent),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          DoctorCategoryListItem(
              nameText: 'Dr. Praveen Kumar',
              designation: 'Oncology',
              opdTime: '8:00-14:00'),
          SpaceBetweenRowChildren(width: 10),
          DoctorCategoryListItem(
              nameText: 'Dr. Nityasa Bansal',
              designation: 'Dermatology',
              opdTime: '10:00-16:00'),
          SpaceBetweenRowChildren(width: 10),
          DoctorCategoryListItem(
              nameText: 'Dr. Rahil Choudhary',
              designation: 'Anesthesiologist',
              opdTime: '9:00-12:00'),
          SpaceBetweenRowChildren(width: 10),
          DoctorCategoryListItem(
              nameText: 'Dr. Ashok Gangwar',
              designation: 'Neurologist',
              opdTime: '15:00-18:00'),
        ],
      ),
    );
  }
}
