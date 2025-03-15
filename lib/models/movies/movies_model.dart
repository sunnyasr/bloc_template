import 'package:freezed_annotation/freezed_annotation.dart';

part 'movies_model.freezed.dart';

part 'movies_model.g.dart';

@freezed
class MoviesModel with _$MoviesModel {
  factory MoviesModel({
    @Default(0) @JsonKey(name: 'page') int page,
    @Default(0) @JsonKey(name: 'per_page') int perPage,
    @Default(0) @JsonKey(name: 'total') int total,
    @Default(0) @JsonKey(name: 'total_pages') int totalPages,
    @Default([]) @JsonKey(name: 'data') List<Data> data,
  }) = _MoviesModel;

  factory MoviesModel.fromJson(Map<String, dynamic> json) =>
      _$MoviesModelFromJson(json);
}

@freezed
class Data with _$Data {
  factory Data({
    @Default(0) @JsonKey(name: 'id') int id,
    @Default('') @JsonKey(name: 'email') String email,
    @Default('') @JsonKey(name: 'first_name') String firstName,
    @Default('') @JsonKey(name: 'last_name') String lastName,
    @Default('') @JsonKey(name: 'avatar') String avatar,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
