import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:instagram_deneme/core/extension/extension.dart';
import 'package:instagram_deneme/screen/home_screen/home_screen_model/home_screen_model.dart';
import 'package:instagram_deneme/screen/story_screen/story_screen_model/story_screen_model.dart';

// ignore: must_be_immutable
class StoryScreen extends StatelessWidget {
  final int index;
  StoryScreen({super.key, required this.index});

  HomeScreenModel homeScreenModel = HomeScreenModel();
  StroyScreenModel storyScreenModel = StroyScreenModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _homeScreenAppBar(),
        body: Column(children: [
          Observer(builder: (_) {
            return Expanded(
              child: _storyImage(context),
            );
          }),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    constraints: BoxConstraints.loose(Size.fromHeight(
                        context.getSizeHeight(responsive: 0.05))),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    label: const Text('Mesaj Gönder'),
                  ),
                ),
              ),
              _storyIconButton(
                  icon: const Icon(Icons.favorite_outline), onPressed: () {}),
              _storyIconButton(
                  icon: const Icon(Icons.send_outlined), onPressed: () {})
            ],
          )
              .getPaddingWidthLeft(responsive: 0.01, context: context)
              .getPaddingHeigthBottom(responsive: 0.01, context: context)
        ]));
  }

  IconButton _storyIconButton(
      {required Icon icon, required Function onPressed}) {
    return IconButton(
        padding: EdgeInsets.zero, onPressed: () => onPressed(), icon: icon);
  }

  Container _storyImage(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: NetworkImage(homeScreenModel
            .instagramList[index].postUrl![storyScreenModel.postUrlIndex]
            .toString()),
      )),
      child: _stroyBackForward(context),
    );
  }

  Row _stroyBackForward(BuildContext context) {
    return Row(children: [
      Expanded(child: GestureDetector(
        onTap: () {
          storyScreenModel.backArrow(index: index, context: context);
        },
      )),
      Expanded(child: GestureDetector(
        onTap: () {
          storyScreenModel.forwardArrow(index: index, context: context);
        },
      )),
    ]);
  }

  AppBar _homeScreenAppBar() {
    return AppBar(
      leading: CircleAvatar(
          backgroundImage: NetworkImage(
              homeScreenModel.instagramList[index].postUrl![0].toString())),
      title: Text(homeScreenModel.instagramList[index].userName.toString()),
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
      ],
    );
  }
}
