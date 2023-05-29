// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_screen_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeScreenModel on _HomeScreenModelBase, Store {
  late final _$instagramListAtom =
      Atom(name: '_HomeScreenModelBase.instagramList', context: context);

  @override
  ObservableList<DataModel> get instagramList {
    _$instagramListAtom.reportRead();
    return super.instagramList;
  }

  @override
  set instagramList(ObservableList<DataModel> value) {
    _$instagramListAtom.reportWrite(value, super.instagramList, () {
      super.instagramList = value;
    });
  }

  @override
  String toString() {
    return '''
instagramList: ${instagramList}
    ''';
  }
}
