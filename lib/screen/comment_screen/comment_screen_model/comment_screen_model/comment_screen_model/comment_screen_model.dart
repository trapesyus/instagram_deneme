import 'package:flutter/material.dart';
import 'package:instagram_deneme/data/data.dart';
import 'package:instagram_deneme/data/data_model/data_model.dart';
import 'package:instagram_deneme/screen/home_screen/home_screen_model/home_screen_model.dart';
import 'package:mobx/mobx.dart';
part 'comment_screen_model.g.dart';

class CommentScreenModel = _CommentScreenModelBase with _$CommentScreenModel;

abstract class _CommentScreenModelBase with Store {
  @observable
  ObservableList<DataModel> commentList = ObservableList<DataModel>.of([
    DataModel(
        userName: 'Bestami	Ağırağaç',
        comment:
            'In such cases, the reason for not including the agency comments will be stated in the report.',
        postUrl: ['https://picsum.photos/id/237/200/300']),
    DataModel(
        userName: 'Bestami	Ağırağaç',
        comment:
            'Conversely, the auditors should modify their report as necessary if they find the comments valid.',
        postUrl: [
          'https://picsum.photos/200/300/?blur',
        ]),
    DataModel(
        userName: 'Aykanat	Ağıroğlu',
        comment:
            'Users could search for comments either overall, for particular rules, or within particular sections of the rules.',
        postUrl: [
          'https://fastly.picsum.photos/id/17/2500/1667.jpg?hmac=HD-JrnNUZjFiP2UZQvWcKrgLoC_pc_ouUSWv8kHsJJY',
        ]),
    DataModel(
        userName: 'Şennur	Ağnar',
        comment:
            'Users could search for comments either overall, for particular rules, or within particular sections of the rules.',
        postUrl: ['https://picsum.photos/id/237/200/300']),
    DataModel(
        userName: 'Tutkum	Ahmadı',
        comment: 'The analysis invited comments on these potential impacts.',
        postUrl: ['https://picsum.photos/id/237/200/300']),
    DataModel(
        userName: 'Fatma Özlem',
        comment:
            'At that time, written comments on the proposal were requested.',
        postUrl: ['https://picsum.photos/200/300?grayscale']),
    DataModel(
        userName: 'Bestami	Ağırağaç',
        comment:
            'The preamble to the final rule evaluated and responded to the comments received.',
        postUrl: ['https://picsum.photos/200/300/?blur']),
    DataModel(
        userName: 'Şennur	Ağnar',
        comment: 'In that system, users could file electronic comments.',
        postUrl: [
          'https://fastly.picsum.photos/id/17/2500/1667.jpg?hmac=HD-JrnNUZjFiP2UZQvWcKrgLoC_pc_ouUSWv8kHsJJY'
        ])
  ]);
  @observable
  TextEditingController commentController = TextEditingController();

  @action
  void commentEmoji({required String charCode}) {
    commentController.text += charCode;
  }
}
