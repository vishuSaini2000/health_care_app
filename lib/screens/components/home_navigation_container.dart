import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_care_app/provider/app_mode_provider.dart';
import 'package:health_care_app/screens/components/home_navigation_button.dart';
import 'package:health_care_app/screens/home.dart';
import 'package:health_care_app/widgets/common/app_text_widget.dart';

class HomeNavigationContainer extends ConsumerStatefulWidget {
  const HomeNavigationContainer({super.key});

  @override
  ConsumerState<HomeNavigationContainer> createState() => _HomeNavigationContainerState();
}

class _HomeNavigationContainerState extends ConsumerState<HomeNavigationContainer> {
  @override
  Widget build(BuildContext context) {
    Color appContainerColorNotifier = ref.watch(appContainerColorProvider);
    Color appTextColor = ref.watch(appTextColorProvider);
   
    return Container(
      decoration:  BoxDecoration(
        color: appContainerColorNotifier,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50)
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
             AppTextWidget(
              text: 'Quick and easy \naccess to \nyour health',
              fontColor: appTextColor,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Home(),
                  ),
                );
              },
              child: const HomeNavigationButton(),
            )
          ],
        ),
      ),
    );
  }
}