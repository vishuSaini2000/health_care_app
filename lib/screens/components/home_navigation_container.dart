// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:health_care_app/provider/app_mode_provider.dart';
// import 'package:health_care_app/screens/components/home_navigation_button.dart';
// import 'package:health_care_app/screens/home.dart';
// import 'package:health_care_app/widgets/common/app_text_widget.dart';

// class HomeNavigationContainer extends ConsumerStatefulWidget {
//   const HomeNavigationContainer({super.key});

//   @override
//   ConsumerState<HomeNavigationContainer> createState() =>
//       _HomeNavigationContainerState();
// }

// class _HomeNavigationContainerState
//     extends ConsumerState<HomeNavigationContainer> {
//   @override
//   Widget build(BuildContext context) {
//     Color appContainerColorNotifier = ref.watch(appContainerColorProvider);
//     Color appTextColor = ref.watch(appTextColorProvider);

//     return LayoutBuilder(
//         builder: (BuildContext context, BoxConstraints constraints) {
//       final bool isSmallScreen = constraints.maxWidth < 400;

//       return Container(
//         decoration: BoxDecoration(
//           color: appContainerColorNotifier,
//           borderRadius: const BorderRadius.only(
//               topLeft: Radius.circular(50), topRight: Radius.circular(50),),
//         ),
//         child: Padding(
//           padding:  EdgeInsets.all(isSmallScreen ? 20 : 30),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               AppTextWidget(
//                 text: 'Quick and easy \naccess to \nyour health',
//                 fontColor: appTextColor,
//                 fontSize: isSmallScreen ? 28 : 40,
//                 fontWeight: FontWeight.bold,
//               ),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => const Home(),
//                     ),
//                   );
//                 },
//                 child: const HomeNavigationButton(),
//               )
//             ],
//           ),
//         ),
//       );
//     });
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_care_app/provider/app_mode_provider.dart';
import 'package:health_care_app/screens/components/home_navigation_button.dart';
import 'package:health_care_app/screens/home.dart';
import 'package:health_care_app/widgets/common/app_text_widget.dart';

class HomeNavigationContainer extends ConsumerStatefulWidget {
  const HomeNavigationContainer({super.key});

  @override
  ConsumerState<HomeNavigationContainer> createState() =>
      _HomeNavigationContainerState();
}

class _HomeNavigationContainerState
    extends ConsumerState<HomeNavigationContainer> {
  @override
  Widget build(BuildContext context) {
    final Color appContainerColor = ref.watch(appContainerColorProvider);
    final Color appTextColor = ref.watch(appTextColorProvider);

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final bool isSmallScreen = constraints.maxWidth < 400;

        return Container(
          decoration: BoxDecoration(
            color: appContainerColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(isSmallScreen ? 20 : 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: AppTextWidget(
                    text: 'Quick and easy\naccess to\nyour health',
                    fontColor: appTextColor,
                    fontSize: isSmallScreen ? 28 : 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const Home(),
                      ),
                    );
                  },
                  child: const HomeNavigationButton(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}