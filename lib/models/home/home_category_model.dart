import 'package:freezed_annotation/freezed_annotation.dart';


part 'home_category_model.freezed.dart';
part 'home_category_model.g.dart';

@freezed
class HomeCategoryModel with _$HomeCategoryModel {
  const factory HomeCategoryModel({
    required String name,
    required String id,
  }) = _HomeCategoryModel;

  factory HomeCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$HomeCategoryModelFromJson(json);
}



