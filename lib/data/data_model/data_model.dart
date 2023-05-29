import 'package:mobx/mobx.dart';
part 'data_model.g.dart';

// ignore: library_private_types_in_public_api
class DataModel = _DataModelBase with _$DataModel;

abstract class _DataModelBase with Store {
  String? userName;
  List<String>? postUrl;
  String? postTime;
  String? postDescription;
  @observable
  bool isTextShowing;
  @observable
  bool isLike;
  @observable
  int like;
  @observable
  bool looked;
  @observable
  String? comment;

  _DataModelBase(
      {this.isTextShowing = true,
      this.like = 0,
      this.postDescription,
      this.postUrl,
      this.postTime,
      this.userName,
      this.comment,
      this.looked = false,
      this.isLike = false});
}
