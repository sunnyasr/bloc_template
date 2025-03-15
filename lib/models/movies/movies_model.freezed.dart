// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MoviesModel _$MoviesModelFromJson(Map<String, dynamic> json) {
  return _MoviesModel.fromJson(json);
}

/// @nodoc
mixin _$MoviesModel {
  @JsonKey(name: 'page')
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<Data> get data => throw _privateConstructorUsedError;

  /// Serializes this MoviesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MoviesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MoviesModelCopyWith<MoviesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesModelCopyWith<$Res> {
  factory $MoviesModelCopyWith(
    MoviesModel value,
    $Res Function(MoviesModel) then,
  ) = _$MoviesModelCopyWithImpl<$Res, MoviesModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'page') int page,
    @JsonKey(name: 'per_page') int perPage,
    @JsonKey(name: 'total') int total,
    @JsonKey(name: 'total_pages') int totalPages,
    @JsonKey(name: 'data') List<Data> data,
  });
}

/// @nodoc
class _$MoviesModelCopyWithImpl<$Res, $Val extends MoviesModel>
    implements $MoviesModelCopyWith<$Res> {
  _$MoviesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MoviesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? total = null,
    Object? totalPages = null,
    Object? data = null,
  }) {
    return _then(
      _value.copyWith(
            page:
                null == page
                    ? _value.page
                    : page // ignore: cast_nullable_to_non_nullable
                        as int,
            perPage:
                null == perPage
                    ? _value.perPage
                    : perPage // ignore: cast_nullable_to_non_nullable
                        as int,
            total:
                null == total
                    ? _value.total
                    : total // ignore: cast_nullable_to_non_nullable
                        as int,
            totalPages:
                null == totalPages
                    ? _value.totalPages
                    : totalPages // ignore: cast_nullable_to_non_nullable
                        as int,
            data:
                null == data
                    ? _value.data
                    : data // ignore: cast_nullable_to_non_nullable
                        as List<Data>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MoviesModelImplCopyWith<$Res>
    implements $MoviesModelCopyWith<$Res> {
  factory _$$MoviesModelImplCopyWith(
    _$MoviesModelImpl value,
    $Res Function(_$MoviesModelImpl) then,
  ) = __$$MoviesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'page') int page,
    @JsonKey(name: 'per_page') int perPage,
    @JsonKey(name: 'total') int total,
    @JsonKey(name: 'total_pages') int totalPages,
    @JsonKey(name: 'data') List<Data> data,
  });
}

/// @nodoc
class __$$MoviesModelImplCopyWithImpl<$Res>
    extends _$MoviesModelCopyWithImpl<$Res, _$MoviesModelImpl>
    implements _$$MoviesModelImplCopyWith<$Res> {
  __$$MoviesModelImplCopyWithImpl(
    _$MoviesModelImpl _value,
    $Res Function(_$MoviesModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MoviesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? total = null,
    Object? totalPages = null,
    Object? data = null,
  }) {
    return _then(
      _$MoviesModelImpl(
        page:
            null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                    as int,
        perPage:
            null == perPage
                ? _value.perPage
                : perPage // ignore: cast_nullable_to_non_nullable
                    as int,
        total:
            null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                    as int,
        totalPages:
            null == totalPages
                ? _value.totalPages
                : totalPages // ignore: cast_nullable_to_non_nullable
                    as int,
        data:
            null == data
                ? _value._data
                : data // ignore: cast_nullable_to_non_nullable
                    as List<Data>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MoviesModelImpl implements _MoviesModel {
  _$MoviesModelImpl({
    @JsonKey(name: 'page') this.page = 0,
    @JsonKey(name: 'per_page') this.perPage = 0,
    @JsonKey(name: 'total') this.total = 0,
    @JsonKey(name: 'total_pages') this.totalPages = 0,
    @JsonKey(name: 'data') final List<Data> data = const [],
  }) : _data = data;

  factory _$MoviesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoviesModelImplFromJson(json);

  @override
  @JsonKey(name: 'page')
  final int page;
  @override
  @JsonKey(name: 'per_page')
  final int perPage;
  @override
  @JsonKey(name: 'total')
  final int total;
  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  final List<Data> _data;
  @override
  @JsonKey(name: 'data')
  List<Data> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'MoviesModel(page: $page, perPage: $perPage, total: $total, totalPages: $totalPages, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesModelImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    page,
    perPage,
    total,
    totalPages,
    const DeepCollectionEquality().hash(_data),
  );

  /// Create a copy of MoviesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviesModelImplCopyWith<_$MoviesModelImpl> get copyWith =>
      __$$MoviesModelImplCopyWithImpl<_$MoviesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoviesModelImplToJson(this);
  }
}

abstract class _MoviesModel implements MoviesModel {
  factory _MoviesModel({
    @JsonKey(name: 'page') final int page,
    @JsonKey(name: 'per_page') final int perPage,
    @JsonKey(name: 'total') final int total,
    @JsonKey(name: 'total_pages') final int totalPages,
    @JsonKey(name: 'data') final List<Data> data,
  }) = _$MoviesModelImpl;

  factory _MoviesModel.fromJson(Map<String, dynamic> json) =
      _$MoviesModelImpl.fromJson;

  @override
  @JsonKey(name: 'page')
  int get page;
  @override
  @JsonKey(name: 'per_page')
  int get perPage;
  @override
  @JsonKey(name: 'total')
  int get total;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @override
  @JsonKey(name: 'data')
  List<Data> get data;

  /// Create a copy of MoviesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoviesModelImplCopyWith<_$MoviesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar')
  String get avatar => throw _privateConstructorUsedError;

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'email') String email,
    @JsonKey(name: 'first_name') String firstName,
    @JsonKey(name: 'last_name') String lastName,
    @JsonKey(name: 'avatar') String avatar,
  });
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? avatar = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            email:
                null == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
                        as String,
            firstName:
                null == firstName
                    ? _value.firstName
                    : firstName // ignore: cast_nullable_to_non_nullable
                        as String,
            lastName:
                null == lastName
                    ? _value.lastName
                    : lastName // ignore: cast_nullable_to_non_nullable
                        as String,
            avatar:
                null == avatar
                    ? _value.avatar
                    : avatar // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
    _$DataImpl value,
    $Res Function(_$DataImpl) then,
  ) = __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'email') String email,
    @JsonKey(name: 'first_name') String firstName,
    @JsonKey(name: 'last_name') String lastName,
    @JsonKey(name: 'avatar') String avatar,
  });
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
    : super(_value, _then);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? avatar = null,
  }) {
    return _then(
      _$DataImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        email:
            null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String,
        firstName:
            null == firstName
                ? _value.firstName
                : firstName // ignore: cast_nullable_to_non_nullable
                    as String,
        lastName:
            null == lastName
                ? _value.lastName
                : lastName // ignore: cast_nullable_to_non_nullable
                    as String,
        avatar:
            null == avatar
                ? _value.avatar
                : avatar // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  _$DataImpl({
    @JsonKey(name: 'id') this.id = 0,
    @JsonKey(name: 'email') this.email = '',
    @JsonKey(name: 'first_name') this.firstName = '',
    @JsonKey(name: 'last_name') this.lastName = '',
    @JsonKey(name: 'avatar') this.avatar = '',
  });

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  @JsonKey(name: 'avatar')
  final String avatar;

  @override
  String toString() {
    return 'Data(id: $id, email: $email, firstName: $firstName, lastName: $lastName, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, email, firstName, lastName, avatar);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(this);
  }
}

abstract class _Data implements Data {
  factory _Data({
    @JsonKey(name: 'id') final int id,
    @JsonKey(name: 'email') final String email,
    @JsonKey(name: 'first_name') final String firstName,
    @JsonKey(name: 'last_name') final String lastName,
    @JsonKey(name: 'avatar') final String avatar,
  }) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  @JsonKey(name: 'avatar')
  String get avatar;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
