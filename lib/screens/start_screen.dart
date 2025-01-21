import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_care_app/constants/color_constants.dart';
import 'package:health_care_app/provider/app_mode_provider.dart';
import 'package:health_care_app/screens/components/doctor_image_container.dart';
import 'package:health_care_app/screens/components/home_navigation_container.dart';

class StartScreen extends ConsumerStatefulWidget {
  const StartScreen({super.key});

  @override
  ConsumerState<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends ConsumerState<StartScreen> {
  @override
  Widget build(BuildContext context) {
    Color appScaffoldColor = ref.watch(appScaffoldColorProvider);
    return const   Scaffold(
      // appScaffoldColor
      backgroundColor:appBlack ,
        body:  SafeArea(
          child: Column(
            children: [
              Flexible(
                fit: FlexFit.tight,
                flex: 7,
                child: DoctorImageContainer(),
              ),
              Flexible(
                fit: FlexFit.tight,
                flex: 3,
                child:  HomeNavigationContainer()
              )
            ],
          ),
        ),
      );
  }
}