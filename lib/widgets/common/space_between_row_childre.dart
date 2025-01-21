import 'package:flutter/material.dart';

class SpaceBetweenRowChildren extends StatelessWidget {
  final double width;

  /// Constructor with an optional width parameter. Default is 10.
  const SpaceBetweenRowChildren({super.key, this.width = 10});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width);
  }
}
