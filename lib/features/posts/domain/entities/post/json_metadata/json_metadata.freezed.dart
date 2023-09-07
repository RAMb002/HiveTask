// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'json_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JsonMetaDataEntity {
  String get app => throw _privateConstructorUsedError;
  String? get format => throw _privateConstructorUsedError;
  List<dynamic>? get tags => throw _privateConstructorUsedError;
  List<dynamic>? get users => throw _privateConstructorUsedError;
  List<dynamic> get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JsonMetaDataEntityCopyWith<JsonMetaDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonMetaDataEntityCopyWith<$Res> {
  factory $JsonMetaDataEntityCopyWith(
          JsonMetaDataEntity value, $Res Function(JsonMetaDataEntity) then) =
      _$JsonMetaDataEntityCopyWithImpl<$Res, JsonMetaDataEntity>;
  @useResult
  $Res call(
      {String app,
      String? format,
      List<dynamic>? tags,
      List<dynamic>? users,
      List<dynamic> image});
}

/// @nodoc
class _$JsonMetaDataEntityCopyWithImpl<$Res, $Val extends JsonMetaDataEntity>
    implements $JsonMetaDataEntityCopyWith<$Res> {
  _$JsonMetaDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? app = null,
    Object? format = freezed,
    Object? tags = freezed,
    Object? users = freezed,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      app: null == app
          ? _value.app
          : app // ignore: cast_nullable_to_non_nullable
              as String,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JsonMetaDataEntityCopyWith<$Res>
    implements $JsonMetaDataEntityCopyWith<$Res> {
  factory _$$_JsonMetaDataEntityCopyWith(_$_JsonMetaDataEntity value,
          $Res Function(_$_JsonMetaDataEntity) then) =
      __$$_JsonMetaDataEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String app,
      String? format,
      List<dynamic>? tags,
      List<dynamic>? users,
      List<dynamic> image});
}

/// @nodoc
class __$$_JsonMetaDataEntityCopyWithImpl<$Res>
    extends _$JsonMetaDataEntityCopyWithImpl<$Res, _$_JsonMetaDataEntity>
    implements _$$_JsonMetaDataEntityCopyWith<$Res> {
  __$$_JsonMetaDataEntityCopyWithImpl(
      _$_JsonMetaDataEntity _value, $Res Function(_$_JsonMetaDataEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? app = null,
    Object? format = freezed,
    Object? tags = freezed,
    Object? users = freezed,
    Object? image = null,
  }) {
    return _then(_$_JsonMetaDataEntity(
      app: null == app
          ? _value.app
          : app // ignore: cast_nullable_to_non_nullable
              as String,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      users: freezed == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      image: null == image
          ? _value._image
          : image // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$_JsonMetaDataEntity implements _JsonMetaDataEntity {
  const _$_JsonMetaDataEntity(
      {required this.app,
      required this.format,
      required final List<dynamic>? tags,
      required final List<dynamic>? users,
      required final List<dynamic> image})
      : _tags = tags,
        _users = users,
        _image = image;

  @override
  final String app;
  @override
  final String? format;
  final List<dynamic>? _tags;
  @override
  List<dynamic>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _users;
  @override
  List<dynamic>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic> _image;
  @override
  List<dynamic> get image {
    if (_image is EqualUnmodifiableListView) return _image;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_image);
  }

  @override
  String toString() {
    return 'JsonMetaDataEntity(app: $app, format: $format, tags: $tags, users: $users, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JsonMetaDataEntity &&
            (identical(other.app, app) || other.app == app) &&
            (identical(other.format, format) || other.format == format) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality().equals(other._image, _image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      app,
      format,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(_image));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JsonMetaDataEntityCopyWith<_$_JsonMetaDataEntity> get copyWith =>
      __$$_JsonMetaDataEntityCopyWithImpl<_$_JsonMetaDataEntity>(
          this, _$identity);
}

abstract class _JsonMetaDataEntity implements JsonMetaDataEntity {
  const factory _JsonMetaDataEntity(
      {required final String app,
      required final String? format,
      required final List<dynamic>? tags,
      required final List<dynamic>? users,
      required final List<dynamic> image}) = _$_JsonMetaDataEntity;

  @override
  String get app;
  @override
  String? get format;
  @override
  List<dynamic>? get tags;
  @override
  List<dynamic>? get users;
  @override
  List<dynamic> get image;
  @override
  @JsonKey(ignore: true)
  _$$_JsonMetaDataEntityCopyWith<_$_JsonMetaDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
