// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_screen_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CommentScreenModel on _CommentScreenModelBase, Store {
  late final _$commentListAtom =
      Atom(name: '_CommentScreenModelBase.commentList', context: context);

  @override
  ObservableList<DataModel> get commentList {
    _$commentListAtom.reportRead();
    return super.commentList;
  }

  @override
  set commentList(ObservableList<DataModel> value) {
    _$commentListAtom.reportWrite(value, super.commentList, () {
      super.commentList = value;
    });
  }

  late final _$commentControllerAtom =
      Atom(name: '_CommentScreenModelBase.commentController', context: context);

  @override
  TextEditingController get commentController {
    _$commentControllerAtom.reportRead();
    return super.commentController;
  }

  @override
  set commentController(TextEditingController value) {
    _$commentControllerAtom.reportWrite(value, super.commentController, () {
      super.commentController = value;
    });
  }

  late final _$_CommentScreenModelBaseActionController =
      ActionController(name: '_CommentScreenModelBase', context: context);

  @override
  void commentEmoji({required String charCode}) {
    final _$actionInfo = _$_CommentScreenModelBaseActionController.startAction(
        name: '_CommentScreenModelBase.commentEmoji');
    try {
      return super.commentEmoji(charCode: charCode);
    } finally {
      _$_CommentScreenModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
commentList: ${commentList},
commentController: ${commentController}
    ''';
  }
}
