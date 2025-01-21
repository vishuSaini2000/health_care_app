import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_care_app/constants/text_constants.dart';


final autoPlayVideosOptionTextProvider = StateProvider<String>((ref)=>autoPlayRadioTextOptionOne);
final showProfilePhotosOptionTextProvider = StateProvider<String>((ref)=>showProfileRadioTextOptionOne);
final preferredFeedViewOptionTextProvider = StateProvider<String>((ref)=>preferredFeedViewTextOptionOne);

final playSoundeffectTextOptionTextProvider = StateProvider<String>((ref)=>playSoundeffectTextOptionOne);
final toogleSwitchTextProvider = StateProvider<String>((ref)=>playSoundeffectTextOptionOne);