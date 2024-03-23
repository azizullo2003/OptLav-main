// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_inn_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserInnInfo {
  String get inn => throw _privateConstructorUsedError;
  String get ogrn => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserInnInfoCopyWith<UserInnInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInnInfoCopyWith<$Res> {
  factory $UserInnInfoCopyWith(
          UserInnInfo value, $Res Function(UserInnInfo) then) =
      _$UserInnInfoCopyWithImpl<$Res, UserInnInfo>;
  @useResult
  $Res call({String inn, String ogrn, String name});
}

/// @nodoc
class _$UserInnInfoCopyWithImpl<$Res, $Val extends UserInnInfo>
    implements $UserInnInfoCopyWith<$Res> {
  _$UserInnInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inn = null,
    Object? ogrn = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      inn: null == inn
          ? _value.inn
          : inn // ignore: cast_nullable_to_non_nullable
              as String,
      ogrn: null == ogrn
          ? _value.ogrn
          : ogrn // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserInnInfoImplCopyWith<$Res>
    implements $UserInnInfoCopyWith<$Res> {
  factory _$$UserInnInfoImplCopyWith(
          _$UserInnInfoImpl value, $Res Function(_$UserInnInfoImpl) then) =
      __$$UserInnInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String inn, String ogrn, String name});
}

/// @nodoc
class __$$UserInnInfoImplCopyWithImpl<$Res>
    extends _$UserInnInfoCopyWithImpl<$Res, _$UserInnInfoImpl>
    implements _$$UserInnInfoImplCopyWith<$Res> {
  __$$UserInnInfoImplCopyWithImpl(
      _$UserInnInfoImpl _value, $Res Function(_$UserInnInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inn = null,
    Object? ogrn = null,
    Object? name = null,
  }) {
    return _then(_$UserInnInfoImpl(
      inn: null == inn
          ? _value.inn
          : inn // ignore: cast_nullable_to_non_nullable
              as String,
      ogrn: null == ogrn
          ? _value.ogrn
          : ogrn // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserInnInfoImpl implements _UserInnInfo {
  const _$UserInnInfoImpl(
      {required this.inn, required this.ogrn, required this.name});

  @override
  final String inn;
  @override
  final String ogrn;
  @override
  final String name;

  @override
  String toString() {
    return 'UserInnInfo(inn: $inn, ogrn: $ogrn, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInnInfoImpl &&
            (identical(other.inn, inn) || other.inn == inn) &&
            (identical(other.ogrn, ogrn) || other.ogrn == ogrn) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inn, ogrn, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInnInfoImplCopyWith<_$UserInnInfoImpl> get copyWith =>
      __$$UserInnInfoImplCopyWithImpl<_$UserInnInfoImpl>(this, _$identity);
}

abstract class _UserInnInfo implements UserInnInfo {
  const factory _UserInnInfo(
      {required final String inn,
      required final String ogrn,
      required final String name}) = _$UserInnInfoImpl;

  @override
  String get inn;
  @override
  String get ogrn;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$UserInnInfoImplCopyWith<_$UserInnInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
