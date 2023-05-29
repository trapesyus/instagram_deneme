import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:instagram_deneme/core/extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:instagram_deneme/screen/comment_screen/comment_screen_model/comment_screen_model/comment_screen.dart';
import 'package:instagram_deneme/screen/home_screen/home_screen_model/home_screen_model.dart';
import 'package:instagram_deneme/screen/story_screen/story_screen.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final TextEditingController textEditingController = TextEditingController();

  HomeScreenModel homeScreenModel = HomeScreenModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _homeScreenAppBar(context: context),
        body: Column(
          children: [
            Expanded(child: Observer(builder: (_) {
              return _storyArea();
            })),
            Expanded(
                flex: 6,
                child: Observer(builder: (_) {
                  return _posts();
                })),
          ],
        ));
  }

  ListView _posts() {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: homeScreenModel.instagramList.length,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _postTop(index: index, context: context)
                .getPaddingWidthHorizontal(responsive: 0.004, context: context),
            _post(context: context, index: index),
            _postBottom(index: index, context: context),
            _postLikeCount(context, index)
                .getPaddingWidthHorizontal(responsive: 0.01, context: context),
            _postDescription(index: index, context: context)
                .getPaddingWidthHorizontal(responsive: 0.01, context: context),
            _textButton(
                    userName:
                        '${homeScreenModel.instagramList[index].postTime?.length.toString()} Yorumun Tümünü Gör',
                    onPressed: () {
                      CommentScreen(
                        userPostComment: homeScreenModel
                            .instagramList[index].postDescription!,
                        userName:
                            homeScreenModel.instagramList[index].userName!,
                        userUrl:
                            homeScreenModel.instagramList[index].postUrl![0],
                      ).navigatorPush(context: context);
                    },
                    context: context)
                .getPaddingWidthLeft(responsive: 0.01, context: context),
            _postAddComment(index, context),
            _postTimeTranslate(context: context, index: index)
                .getPaddingWidthHorizontal(responsive: 0.01, context: context)
          ],
        );
      },
    );
  }

  Row _postTimeTranslate({required BuildContext context, required int index}) {
    return Row(
      children: [
        Text('${homeScreenModel.instagramList[index].postTime} Dakika Önce'),
        _textButton(
                userName: 'Çevirisine Bak', onPressed: () {}, context: context)
            .getPaddingWidthLeft(responsive: 0.01, context: context)
      ],
    );
  }

  Row _postAddComment(int index, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _circleAvatar(index: index, context: context, responsive: 0.016),
        Expanded(
            child: TextField(
          controller: textEditingController,
          decoration: const InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide.none),
              label:
                  Text('Yorum Ekle...', style: TextStyle(color: Colors.black))),
        )),
        Row(
          children: [
            _iconButton(
                context: context,
                onPressed: () {},
                icon: const Icon(Icons.favorite, color: Colors.red)),
            _iconButton(
                context: context,
                onPressed: () {},
                icon: const Icon(Icons.emoji_emotions, color: Colors.yellow)),
            _iconButton(
                context: context,
                onPressed: () {},
                icon:
                    const Icon(Icons.add_circle_outline, color: Colors.black)),
          ],
        )
      ],
    );
  }

  Observer _postDescription(
      {required int index, required BuildContext context}) {
    return Observer(builder: (_) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _textButton(
              userName: homeScreenModel.instagramList[index].userName!,
              onPressed: () {},
              context: context),
          Expanded(
              child: Text(homeScreenModel.instagramList[index].postDescription!,
                  overflow: homeScreenModel.instagramList[index].isTextShowing
                      ? TextOverflow.ellipsis
                      : null)),
          homeScreenModel.instagramList[index].isTextShowing
              ? _textButton(
                  userName: 'devamı',
                  context: context,
                  onPressed: () {
                    homeScreenModel.isTextShowing(index: index);
                  })
              : _textButton(
                  userName: 'küçült',
                  context: context,
                  onPressed: () {
                    homeScreenModel.isTextShowing(index: index);
                  }),
        ],
      );
    });
  }

  Row _postLikeCount(BuildContext context, int index) {
    return Row(
      children: [
        _circleAvatar(index: index, context: context, responsive: 0.01),
        Observer(builder: (context) {
          return _textButton(
                  userName:
                      '${homeScreenModel.instagramList[index].userName} ve  ${5800 + homeScreenModel.instagramList[index].like} diğer kişi beğendi',
                  onPressed: () {},
                  context: context)
              .getPaddingWidthLeft(responsive: 0.01, context: context);
        })
      ],
    );
  }

  Row _postTop({required int index, required BuildContext context}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            _circleAvatar(index: index, context: context, responsive: 0.02),
            _textButton(
                    userName: homeScreenModel.instagramList[index].userName!,
                    onPressed: () {},
                    context: context)
                .getPaddingWidthLeft(responsive: 0.01, context: context)
          ],
        ),
        _iconButton(
            context: context,
            onPressed: () {},
            icon: const Icon(Icons.more_vert))
      ],
    );
  }

  SizedBox _post({required BuildContext context, required int index}) {
    return SizedBox(
        height: context.getSizeHeight(responsive: 0.3),
        width: context.getSizeWidth(responsive: 1),
        child: Image(
            image:
                NetworkImage(homeScreenModel.instagramList[index].postUrl![0]),
            fit: BoxFit.contain));
  }

  Row _postBottom({required int index, required BuildContext context}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Observer(builder: (context) {
              return _iconButton(
                  context: context,
                  icon: Icon(
                      homeScreenModel.instagramList[index].isLike
                          ? Icons.favorite
                          : Icons.favorite_border_outlined,
                      color: homeScreenModel.instagramList[index].isLike
                          ? Colors.red
                          : Colors.white),
                  onPressed: () {
                    homeScreenModel.likeCheck(index: index);
                  });
            }),
            _iconButton(
                context: context,
                icon: const Icon(Icons.messenger_outline),
                onPressed: () {}),
            _iconButton(
                context: context,
                icon: const Icon(Icons.send_outlined,
                    textDirection: TextDirection.rtl),
                onPressed: () {}),
          ],
        ),
        _iconButton(
            context: context,
            onPressed: () {},
            icon: const Icon(Icons.archive_outlined))
      ],
    );
  }

  ListView _storyArea() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: homeScreenModel.instagramList.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            _circleAvatar(index: index, context: context, responsive: 0.05),
            Text(
              homeScreenModel.instagramList[index].userName!,
              style: Theme.of(context)
                  .textTheme
                  .labelSmall!
                  .copyWith(fontWeight: FontWeight.normal),
            ),
            SizedBox(width: context.getSizeWidth(responsive: 0.1))
          ],
        );
      },
    );
  }

  Container _circleAvatar(
          {required int index,
          required BuildContext context,
          required double responsive,
          int mainUser = 0}) =>
      Container(
        decoration: BoxDecoration(
            border: Border.all(
                color: homeScreenModel.instagramList[index].looked
                    ? Colors.grey
                    : Colors.deepPurple,
                width: 2),
            borderRadius: BorderRadius.circular(
              context.getSizeWidth(responsive: responsive),
            )),
        child: CircleAvatar(
          backgroundImage:
              NetworkImage(homeScreenModel.instagramList[index].postUrl![0]),
          radius: context.getSizeWidth(responsive: responsive),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent, elevation: 0),
                      child: const SizedBox(),
                      onPressed: () {
                        homeScreenModel.lookedCheck(index: index);

                        StoryScreen(index: index)
                            .navigatorPush(context: context);
                      })),
              mainUser == index
                  ? Align(
                      alignment: Alignment.bottomRight,
                      child: Icon(
                        Icons.add_circle_outline,
                        size: context.getSizeWidth(responsive: 0.02),
                        color: Colors.black,
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      );

  AppBar _homeScreenAppBar({required BuildContext context}) {
    return AppBar(
      title: const Text('Instagram',
          style: TextStyle(fontStyle: FontStyle.italic)),
      actions: [
        _iconButton(
            context: context,
            onPressed: () {},
            icon: const Icon(Icons.favorite_border_outlined)),
        _iconButton(
            context: context,
            onPressed: () {},
            icon: const Icon(Icons.messenger_outline)),
      ],
    );
  }

  IconButton _iconButton({
    required Function onPressed,
    required Icon icon,
    required BuildContext context,
  }) {
    return IconButton(
      onPressed: () => onPressed(),
      icon: icon,
      style: IconButton.styleFrom(
        iconSize: context.getSizeWidth(responsive: 0.028),
        foregroundColor: Colors.white,
      ),
      padding: EdgeInsets.zero,
    );
  }

  SizedBox _textButton(
          {required String userName,
          required Function onPressed,
          required BuildContext context}) =>
      SizedBox(
          height: context.getSizeHeight(responsive: 0.024),
          child: TextButton(
              style: TextButton.styleFrom(
                  foregroundColor: Colors.black, padding: EdgeInsets.zero),
              onPressed: () => onPressed(),
              child: Text(userName)));
}
