import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:instagram_deneme/core/extension/extension.dart';
import 'package:instagram_deneme/screen/home_screen/home_screen.dart';
import 'package:instagram_deneme/screen/home_screen/home_screen_model/home_screen_model.dart';
import 'package:instagram_deneme/screen/story_screen/story_screen.dart';
import 'package:mobx/mobx.dart';
part 'story_screen_model.g.dart';

// ignore: library_private_types_in_public_api
class StroyScreenModel = _StoryScreenModelBase with _$StroyScreenModel;

abstract class _StoryScreenModelBase with Store {
  HomeScreenModel homeScreenModel = HomeScreenModel();
  @observable
  int postUrlIndex = 0;

  backArrow({required int index, required BuildContext context}) {
    if (homeScreenModel.instagramList[index].postUrl?.length != null) {
      postUrlIndex > 0
          ? postUrlIndex--
          : index > 0
              ? StoryScreen(index: index - 1)
                  .navigatorPushReplacement(context: context)
              : HomeScreen().navigatorPushReplacement(context: context);
    }
  }

  forwardArrow({required int index, required BuildContext context}) {
    if (homeScreenModel.instagramList[index].postUrl?.length != null) {
      homeScreenModel.instagramList[index].postUrl!.length - 1 > postUrlIndex
          ? postUrlIndex++
          : homeScreenModel.instagramList.length > index + 1
              ? StoryScreen(index: index + 1)
                  .navigatorPushReplacement(context: context)
              : HomeScreen().navigatorPushReplacement(context: context);
      log('Liste index uzunluğu ${homeScreenModel.instagramList.length}\n index + 1 = ${index + 1}');
    }
  }
}
