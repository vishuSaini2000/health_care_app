import 'package:flutter/material.dart';
import 'package:health_care_app/screens/start_screen.dart';

class HealthCareApp extends StatelessWidget {
  const HealthCareApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StartScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}