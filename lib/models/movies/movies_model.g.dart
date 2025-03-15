// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoviesModelImpl _$$MoviesModelImplFromJson(Map<String, dynamic> json) =>
    _$MoviesModelImpl(
      page: (json['page'] as num?)?.toInt() ?? 0,
      perPage: (json['per_page'] as num?)?.toInt() ?? 0,
      total: (json['total'] as num?)?.toInt() ?? 0,
      totalPages: (json['total_pages'] as num?)?.toInt() ?? 0,
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MoviesModelImplToJson(_$MoviesModelImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
      'total': instance.total,
      'total_pages': instance.totalPages,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
  id: (json['id'] as num?)?.toInt() ?? 0,
  email: json['email'] as String? ?? '',
  firstName: json['first_name'] as String? ?? '',
  lastName: json['last_name'] as String? ?? '',
  avatar: json['avatar'] as String? ?? '',
);

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'avatar': instance.avatar,
    };
