import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_care_app/provider/app_mode_provider.dart';
import 'package:health_care_app/screens/components/app_navigation_bar.dart';
import 'package:health_care_app/screens/components/check_list_text_row.dart';
import 'package:health_care_app/screens/components/client_profile_search_bar.dart';
import 'package:health_care_app/screens/components/consultation_categories.dart';
import 'package:health_care_app/screens/components/doctor_availability_text.dart';
import 'package:health_care_app/screens/components/doctor_category_list.dart';
import 'package:health_care_app/screens/components/medicine_list.dart';
import 'package:health_care_app/widgets/common/space_between_column_children.dart';

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  ConsumerState<Home> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  @override
  Widget build(BuildContext context) {
    Color appScaffoldColor = ref.watch(appScaffoldColorProvider);
   
    return  Scaffold(
      backgroundColor: appScaffoldColor,
      body:const  SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClientProfileSearchBarContainer(),
              SpaceBetweenColumnChildren(height: 40),
              ConsultationCategories(),
              CheckListTextRow(),
              MedicineList(),
              DoctorAvailabilityText(),
              DoctorCategoryList(),
              SpaceBetweenColumnChildren(height: 60),
              AppNavigationBar()
            ],
          ),
        ),
      ),
    );
  }
}
