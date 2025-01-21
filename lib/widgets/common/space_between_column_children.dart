import 'package:flutter/material.dart';

class SpaceBetweenColumnChildren extends StatelessWidget {
  final double height;

  /// Constructor with an optional height parameter. Default is 10.
  const SpaceBetweenColumnChildren({super.key, this.height = 10});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}
