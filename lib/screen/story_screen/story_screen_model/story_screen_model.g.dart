// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_screen_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$StroyScreenModel on _StoryScreenModelBase, Store {
  late final _$postUrlIndexAtom =
      Atom(name: '_StoryScreenModelBase.postUrlIndex', context: context);

  @override
  int get postUrlIndex {
    _$postUrlIndexAtom.reportRead();
    return super.postUrlIndex;
  }

  @override
  set postUrlIndex(int value) {
    _$postUrlIndexAtom.reportWrite(value, super.postUrlIndex, () {
      super.postUrlIndex = value;
    });
  }

  @override
  String toString() {
    return '''
postUrlIndex: ${postUrlIndex}
    ''';
  }
}
