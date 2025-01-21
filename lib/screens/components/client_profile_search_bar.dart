import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_care_app/provider/app_mode_provider.dart';
import 'package:health_care_app/screens/components/client_profile_row.dart';
import 'package:health_care_app/screens/components/context_search_bar.dart';

class ClientProfileSearchBarContainer extends ConsumerStatefulWidget {
  const ClientProfileSearchBarContainer ({super.key});

  @override
  ConsumerState<ClientProfileSearchBarContainer> createState() => _ClientProfileSearchBarState();
}

class _ClientProfileSearchBarState extends ConsumerState<ClientProfileSearchBarContainer> {
  @override
  Widget build(BuildContext context) {
     Color appContainerColor = ref.watch(appContainerColorProvider);
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Container(
            height: 150,
            padding: const EdgeInsets.all(20),
            decoration:  BoxDecoration(
              color: appContainerColor,
              borderRadius:const  BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: const ClientProfileRow()),
        const Positioned(
          top: 120,
          child: ContextSearchBar(),
        )
      ],
    );
  }
}
