import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:instagram_deneme/screen/comment_screen/comment_screen_model/comment_screen_model/comment_screen_model/comment_screen_model.dart';

class CommentScreen extends StatelessWidget {
  final String userUrl;
  final String userName;
  final String userPostComment;
  CommentScreen(
      {super.key,
      required this.userName,
      required this.userPostComment,
      required this.userUrl});
  CommentScreenModel commentScreenModel = CommentScreenModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _commentScreenAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              _commentScreenCirclerAvatar(url: userUrl),
              _commentScreenTextButton(user: userName),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _commentScreenComment(comment: userPostComment),
                  const Text('6s')
                ],
              )),
            ],
          ),
          const Divider(thickness: 1, color: Colors.grey),
          Expanded(child: Observer(builder: (_) {
            return ListView.builder(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                itemCount: commentScreenModel.commentList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      _comments(index),
                    ],
                  );
                });
          })),
          Container(
            color: Colors.black12,
            child: Column(
              children: [
                Row(
                  children: [
                    _commentScreenIconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite, color: Colors.red)),
                    _commentScreenIconButton(
                        onPressed: () {},
                        icon:
                            const Icon(Icons.handshake, color: Colors.yellow)),
                    _commentScreenIconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.fireplace_outlined,
                            color: Colors.yellow)),
                    _commentScreenIconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.emoji_emotions,
                            color: Colors.yellow)),
                    _commentScreenIconButton(
                        onPressed: () {
                          commentScreenModel.commentEmoji(
                              charCode: String.fromCharCode(0xe22d));
                        },
                        icon:
                            const Icon(Icons.emoji_events, color: Colors.grey)),
                    _commentScreenIconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.emoji_flags, color: Colors.red)),
                    _commentScreenIconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.emoji_people_outlined,
                            color: Colors.yellow)),
                    _commentScreenIconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.emoji_food_beverage_rounded,
                            color: Colors.brown)),
                  ],
                ),
                Row(
                  children: [
                    _commentScreenCirclerAvatar(url: userUrl),
                    Expanded(
                      child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(20)),
                              label: const Text('Yorum Ekle...'))),
                    ),
                    _commentScreenTextButton(user: 'Paylaş')
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Row _comments(int index) {
    return Row(
      children: [
        _commentScreenCirclerAvatar(
            index: index,
            url: commentScreenModel.commentList[index].postUrl![0].toString()),
        _commentScreenTextButton(
            index: index,
            user: commentScreenModel.commentList[index].userName.toString()),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _commentScreenComment(
                index: index,
                comment:
                    commentScreenModel.commentList[index].comment.toString()),
            const Text('6s')
          ],
        )),
      ],
    );
  }

  Text _commentScreenComment({int? index, required String comment}) =>
      Text(comment);

  TextButton _commentScreenTextButton({int? index, required String user}) {
    return TextButton(
        style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            padding: EdgeInsets.zero,
            alignment: Alignment.center),
        onPressed: () {},
        child: Text(user));
  }

  CircleAvatar _commentScreenCirclerAvatar({int? index, required String url}) {
    return CircleAvatar(
        backgroundImage: NetworkImage(url), child: const SizedBox());
  }

  AppBar _commentScreenAppBar() {
    return AppBar(
      title: const Text('Yorumlar'),
      actions: [
        _commentScreenIconButton(
            icon: const Icon(Icons.send_outlined), onPressed: () {})
      ],
    );
  }

  IconButton _commentScreenIconButton(
          {required Icon icon, required Function onPressed}) =>
      IconButton(onPressed: () => onPressed(), icon: icon);
}
