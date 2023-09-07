// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StatsEntity {
  bool get hide => throw _privateConstructorUsedError;
  bool get gray => throw _privateConstructorUsedError;
  double get totalVotes => throw _privateConstructorUsedError;
  double get flagWeight => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StatsEntityCopyWith<StatsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsEntityCopyWith<$Res> {
  factory $StatsEntityCopyWith(
          StatsEntity value, $Res Function(StatsEntity) then) =
      _$StatsEntityCopyWithImpl<$Res, StatsEntity>;
  @useResult
  $Res call({bool hide, bool gray, double totalVotes, double flagWeight});
}

/// @nodoc
class _$StatsEntityCopyWithImpl<$Res, $Val extends StatsEntity>
    implements $StatsEntityCopyWith<$Res> {
  _$StatsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hide = null,
    Object? gray = null,
    Object? totalVotes = null,
    Object? flagWeight = null,
  }) {
    return _then(_value.copyWith(
      hide: null == hide
          ? _value.hide
          : hide // ignore: cast_nullable_to_non_nullable
              as bool,
      gray: null == gray
          ? _value.gray
          : gray // ignore: cast_nullable_to_non_nullable
              as bool,
      totalVotes: null == totalVotes
          ? _value.totalVotes
          : totalVotes // ignore: cast_nullable_to_non_nullable
              as double,
      flagWeight: null == flagWeight
          ? _value.flagWeight
          : flagWeight // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StatsEntityCopyWith<$Res>
    implements $StatsEntityCopyWith<$Res> {
  factory _$$_StatsEntityCopyWith(
          _$_StatsEntity value, $Res Function(_$_StatsEntity) then) =
      __$$_StatsEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool hide, bool gray, double totalVotes, double flagWeight});
}

/// @nodoc
class __$$_StatsEntityCopyWithImpl<$Res>
    extends _$StatsEntityCopyWithImpl<$Res, _$_StatsEntity>
    implements _$$_StatsEntityCopyWith<$Res> {
  __$$_StatsEntityCopyWithImpl(
      _$_StatsEntity _value, $Res Function(_$_StatsEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hide = null,
    Object? gray = null,
    Object? totalVotes = null,
    Object? flagWeight = null,
  }) {
    return _then(_$_StatsEntity(
      hide: null == hide
          ? _value.hide
          : hide // ignore: cast_nullable_to_non_nullable
              as bool,
      gray: null == gray
          ? _value.gray
          : gray // ignore: cast_nullable_to_non_nullable
              as bool,
      totalVotes: null == totalVotes
          ? _value.totalVotes
          : totalVotes // ignore: cast_nullable_to_non_nullable
              as double,
      flagWeight: null == flagWeight
          ? _value.flagWeight
          : flagWeight // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_StatsEntity implements _StatsEntity {
  const _$_StatsEntity(
      {required this.hide,
      required this.gray,
      required this.totalVotes,
      required this.flagWeight});

  @override
  final bool hide;
  @override
  final bool gray;
  @override
  final double totalVotes;
  @override
  final double flagWeight;

  @override
  String toString() {
    return 'StatsEntity(hide: $hide, gray: $gray, totalVotes: $totalVotes, flagWeight: $flagWeight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatsEntity &&
            (identical(other.hide, hide) || other.hide == hide) &&
            (identical(other.gray, gray) || other.gray == gray) &&
            (identical(other.totalVotes, totalVotes) ||
                other.totalVotes == totalVotes) &&
            (identical(other.flagWeight, flagWeight) ||
                other.flagWeight == flagWeight));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, hide, gray, totalVotes, flagWeight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatsEntityCopyWith<_$_StatsEntity> get copyWith =>
      __$$_StatsEntityCopyWithImpl<_$_StatsEntity>(this, _$identity);
}

abstract class _StatsEntity implements StatsEntity {
  const factory _StatsEntity(
      {required final bool hide,
      required final bool gray,
      required final double totalVotes,
      required final double flagWeight}) = _$_StatsEntity;

  @override
  bool get hide;
  @override
  bool get gray;
  @override
  double get totalVotes;
  @override
  double get flagWeight;
  @override
  @JsonKey(ignore: true)
  _$$_StatsEntityCopyWith<_$_StatsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
