// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'active_votes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ActiveVotesEntity {
  int get rshares => throw _privateConstructorUsedError;
  String get voter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActiveVotesEntityCopyWith<ActiveVotesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveVotesEntityCopyWith<$Res> {
  factory $ActiveVotesEntityCopyWith(
          ActiveVotesEntity value, $Res Function(ActiveVotesEntity) then) =
      _$ActiveVotesEntityCopyWithImpl<$Res, ActiveVotesEntity>;
  @useResult
  $Res call({int rshares, String voter});
}

/// @nodoc
class _$ActiveVotesEntityCopyWithImpl<$Res, $Val extends ActiveVotesEntity>
    implements $ActiveVotesEntityCopyWith<$Res> {
  _$ActiveVotesEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rshares = null,
    Object? voter = null,
  }) {
    return _then(_value.copyWith(
      rshares: null == rshares
          ? _value.rshares
          : rshares // ignore: cast_nullable_to_non_nullable
              as int,
      voter: null == voter
          ? _value.voter
          : voter // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ActiveVotesEntityCopyWith<$Res>
    implements $ActiveVotesEntityCopyWith<$Res> {
  factory _$$_ActiveVotesEntityCopyWith(_$_ActiveVotesEntity value,
          $Res Function(_$_ActiveVotesEntity) then) =
      __$$_ActiveVotesEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int rshares, String voter});
}

/// @nodoc
class __$$_ActiveVotesEntityCopyWithImpl<$Res>
    extends _$ActiveVotesEntityCopyWithImpl<$Res, _$_ActiveVotesEntity>
    implements _$$_ActiveVotesEntityCopyWith<$Res> {
  __$$_ActiveVotesEntityCopyWithImpl(
      _$_ActiveVotesEntity _value, $Res Function(_$_ActiveVotesEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rshares = null,
    Object? voter = null,
  }) {
    return _then(_$_ActiveVotesEntity(
      rshares: null == rshares
          ? _value.rshares
          : rshares // ignore: cast_nullable_to_non_nullable
              as int,
      voter: null == voter
          ? _value.voter
          : voter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ActiveVotesEntity implements _ActiveVotesEntity {
  const _$_ActiveVotesEntity({required this.rshares, required this.voter});

  @override
  final int rshares;
  @override
  final String voter;

  @override
  String toString() {
    return 'ActiveVotesEntity(rshares: $rshares, voter: $voter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActiveVotesEntity &&
            (identical(other.rshares, rshares) || other.rshares == rshares) &&
            (identical(other.voter, voter) || other.voter == voter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rshares, voter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActiveVotesEntityCopyWith<_$_ActiveVotesEntity> get copyWith =>
      __$$_ActiveVotesEntityCopyWithImpl<_$_ActiveVotesEntity>(
          this, _$identity);
}

abstract class _ActiveVotesEntity implements ActiveVotesEntity {
  const factory _ActiveVotesEntity(
      {required final int rshares,
      required final String voter}) = _$_ActiveVotesEntity;

  @override
  int get rshares;
  @override
  String get voter;
  @override
  @JsonKey(ignore: true)
  _$$_ActiveVotesEntityCopyWith<_$_ActiveVotesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
