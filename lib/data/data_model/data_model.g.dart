// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DataModel on _DataModelBase, Store {
  late final _$isTextShowingAtom =
      Atom(name: '_DataModelBase.isTextShowing', context: context);

  @override
  bool get isTextShowing {
    _$isTextShowingAtom.reportRead();
    return super.isTextShowing;
  }

  @override
  set isTextShowing(bool value) {
    _$isTextShowingAtom.reportWrite(value, super.isTextShowing, () {
      super.isTextShowing = value;
    });
  }

  late final _$isLikeAtom =
      Atom(name: '_DataModelBase.isLike', context: context);

  @override
  bool get isLike {
    _$isLikeAtom.reportRead();
    return super.isLike;
  }

  @override
  set isLike(bool value) {
    _$isLikeAtom.reportWrite(value, super.isLike, () {
      super.isLike = value;
    });
  }

  late final _$likeAtom = Atom(name: '_DataModelBase.like', context: context);

  @override
  int get like {
    _$likeAtom.reportRead();
    return super.like;
  }

  @override
  set like(int value) {
    _$likeAtom.reportWrite(value, super.like, () {
      super.like = value;
    });
  }

  late final _$lookedAtom =
      Atom(name: '_DataModelBase.looked', context: context);

  @override
  bool get looked {
    _$lookedAtom.reportRead();
    return super.looked;
  }

  @override
  set looked(bool value) {
    _$lookedAtom.reportWrite(value, super.looked, () {
      super.looked = value;
    });
  }

  late final _$commentAtom =
      Atom(name: '_DataModelBase.comment', context: context);

  @override
  String? get comment {
    _$commentAtom.reportRead();
    return super.comment;
  }

  @override
  set comment(String? value) {
    _$commentAtom.reportWrite(value, super.comment, () {
      super.comment = value;
    });
  }

  @override
  String toString() {
    return '''
isTextShowing: ${isTextShowing},
isLike: ${isLike},
like: ${like},
looked: ${looked},
comment: ${comment}
    ''';
  }
}
