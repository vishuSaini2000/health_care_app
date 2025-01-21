import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_care_app/provider/image_provider.dart';

class DoctorImageContainer extends ConsumerStatefulWidget {
  const DoctorImageContainer({super.key});

  @override
  ConsumerState<DoctorImageContainer> createState() => _DoctorImageContainerState();
}

class _DoctorImageContainerState extends ConsumerState<DoctorImageContainer> {
  @override
  Widget build(BuildContext context) {
    String doctorContainerImage = ref.watch(doctorContainerImageProvider);
    return Container(
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child:  Column(
                  mainAxisAlignment:
                      MainAxisAlignment.end, // Aligns the image to the bottom
                  children: [
                    Image(
                      image: AssetImage(doctorContainerImage),
                    ),
                  ],
                ),
              );
  }
}

