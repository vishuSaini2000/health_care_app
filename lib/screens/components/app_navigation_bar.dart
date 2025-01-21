import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:health_care_app/constants/color_constants.dart';
import 'package:health_care_app/provider/app_mode_provider.dart';
import 'package:health_care_app/screens/start_screen.dart';

class AppNavigationBar extends ConsumerStatefulWidget {
  const AppNavigationBar({super.key});

  @override
  ConsumerState<AppNavigationBar> createState() => _AppNavigationBarState();
}

class _AppNavigationBarState extends ConsumerState<AppNavigationBar> {
  // final _navBarIconColorNotifier = navBarIconColorProvider.notifier;

  changeColor(notifier,color){
    notifier.state = color;
  }

  @override
  Widget build(BuildContext context) {
    Color appContainerColor = ref.watch(appContainerColorProvider);
    Color navBarIconColor = ref.watch(navBarIconColorProvider);
    return Container(
      height: 55,
      width: 300,
      decoration: BoxDecoration(
        color: appContainerColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            
            onTap: () {
              
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const StartScreen(),
                ),
              );
            },
            child:  Icon(Icons.home, size: 20, color: navBarIconColor),
          ),
          GestureDetector(
            child:  Icon(Icons.calendar_month, size: 20, color: navBarIconColor),
          ),
          GestureDetector(
            child:  Icon(Icons.message, size: 20, color: navBarIconColor),
          ),
          GestureDetector(
            child:  Icon(Icons.person, size: 20, color: navBarIconColor),
          )
        ],
      ),
    );
  }
}
