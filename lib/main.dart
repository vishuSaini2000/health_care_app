import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_care_app/health_care_app.dart';

void main() {
  runApp(
    const ProviderScope(
      child: HealthCareApp(),
    ),
  );
}
