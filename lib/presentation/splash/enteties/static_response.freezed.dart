// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'static_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StaticResponse {
  bool get result => throw _privateConstructorUsedError;
  Static get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StaticResponseCopyWith<StaticResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaticResponseCopyWith<$Res> {
  factory $StaticResponseCopyWith(
          StaticResponse value, $Res Function(StaticResponse) then) =
      _$StaticResponseCopyWithImpl<$Res, StaticResponse>;
  @useResult
  $Res call({bool result, Static data});

  $StaticCopyWith<$Res> get data;
}

/// @nodoc
class _$StaticResponseCopyWithImpl<$Res, $Val extends StaticResponse>
    implements $StaticResponseCopyWith<$Res> {
  _$StaticResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Static,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StaticCopyWith<$Res> get data {
    return $StaticCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StaticResponseImplCopyWith<$Res>
    implements $StaticResponseCopyWith<$Res> {
  factory _$$StaticResponseImplCopyWith(_$StaticResponseImpl value,
          $Res Function(_$StaticResponseImpl) then) =
      __$$StaticResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool result, Static data});

  @override
  $StaticCopyWith<$Res> get data;
}

/// @nodoc
class __$$StaticResponseImplCopyWithImpl<$Res>
    extends _$StaticResponseCopyWithImpl<$Res, _$StaticResponseImpl>
    implements _$$StaticResponseImplCopyWith<$Res> {
  __$$StaticResponseImplCopyWithImpl(
      _$StaticResponseImpl _value, $Res Function(_$StaticResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? data = null,
  }) {
    return _then(_$StaticResponseImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Static,
    ));
  }
}

/// @nodoc

class _$StaticResponseImpl implements _StaticResponse {
  const _$StaticResponseImpl({required this.result, required this.data});

  @override
  final bool result;
  @override
  final Static data;

  @override
  String toString() {
    return 'StaticResponse(result: $result, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaticResponseImpl &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StaticResponseImplCopyWith<_$StaticResponseImpl> get copyWith =>
      __$$StaticResponseImplCopyWithImpl<_$StaticResponseImpl>(
          this, _$identity);
}

abstract class _StaticResponse implements StaticResponse {
  const factory _StaticResponse(
      {required final bool result,
      required final Static data}) = _$StaticResponseImpl;

  @override
  bool get result;
  @override
  Static get data;
  @override
  @JsonKey(ignore: true)
  _$$StaticResponseImplCopyWith<_$StaticResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
