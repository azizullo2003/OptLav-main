// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ads_function_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdsFunctionResponse {
  bool get result => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdsFunctionResponseCopyWith<AdsFunctionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdsFunctionResponseCopyWith<$Res> {
  factory $AdsFunctionResponseCopyWith(
          AdsFunctionResponse value, $Res Function(AdsFunctionResponse) then) =
      _$AdsFunctionResponseCopyWithImpl<$Res, AdsFunctionResponse>;
  @useResult
  $Res call({bool result, bool success});
}

/// @nodoc
class _$AdsFunctionResponseCopyWithImpl<$Res, $Val extends AdsFunctionResponse>
    implements $AdsFunctionResponseCopyWith<$Res> {
  _$AdsFunctionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? success = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdsFunctionResponseImplCopyWith<$Res>
    implements $AdsFunctionResponseCopyWith<$Res> {
  factory _$$AdsFunctionResponseImplCopyWith(_$AdsFunctionResponseImpl value,
          $Res Function(_$AdsFunctionResponseImpl) then) =
      __$$AdsFunctionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool result, bool success});
}

/// @nodoc
class __$$AdsFunctionResponseImplCopyWithImpl<$Res>
    extends _$AdsFunctionResponseCopyWithImpl<$Res, _$AdsFunctionResponseImpl>
    implements _$$AdsFunctionResponseImplCopyWith<$Res> {
  __$$AdsFunctionResponseImplCopyWithImpl(_$AdsFunctionResponseImpl _value,
      $Res Function(_$AdsFunctionResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? success = null,
  }) {
    return _then(_$AdsFunctionResponseImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AdsFunctionResponseImpl implements _AdsFunctionResponse {
  const _$AdsFunctionResponseImpl(
      {required this.result, required this.success});

  @override
  final bool result;
  @override
  final bool success;

  @override
  String toString() {
    return 'AdsFunctionResponse(result: $result, success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdsFunctionResponseImpl &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdsFunctionResponseImplCopyWith<_$AdsFunctionResponseImpl> get copyWith =>
      __$$AdsFunctionResponseImplCopyWithImpl<_$AdsFunctionResponseImpl>(
          this, _$identity);
}

abstract class _AdsFunctionResponse implements AdsFunctionResponse {
  const factory _AdsFunctionResponse(
      {required final bool result,
      required final bool success}) = _$AdsFunctionResponseImpl;

  @override
  bool get result;
  @override
  bool get success;
  @override
  @JsonKey(ignore: true)
  _$$AdsFunctionResponseImplCopyWith<_$AdsFunctionResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
