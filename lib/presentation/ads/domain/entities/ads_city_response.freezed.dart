// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ads_city_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdsCityResponse {
  bool get result => throw _privateConstructorUsedError;
  List<AdsCity> get city => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdsCityResponseCopyWith<AdsCityResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdsCityResponseCopyWith<$Res> {
  factory $AdsCityResponseCopyWith(
          AdsCityResponse value, $Res Function(AdsCityResponse) then) =
      _$AdsCityResponseCopyWithImpl<$Res, AdsCityResponse>;
  @useResult
  $Res call({bool result, List<AdsCity> city});
}

/// @nodoc
class _$AdsCityResponseCopyWithImpl<$Res, $Val extends AdsCityResponse>
    implements $AdsCityResponseCopyWith<$Res> {
  _$AdsCityResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? city = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as List<AdsCity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdsCityResponseImplCopyWith<$Res>
    implements $AdsCityResponseCopyWith<$Res> {
  factory _$$AdsCityResponseImplCopyWith(_$AdsCityResponseImpl value,
          $Res Function(_$AdsCityResponseImpl) then) =
      __$$AdsCityResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool result, List<AdsCity> city});
}

/// @nodoc
class __$$AdsCityResponseImplCopyWithImpl<$Res>
    extends _$AdsCityResponseCopyWithImpl<$Res, _$AdsCityResponseImpl>
    implements _$$AdsCityResponseImplCopyWith<$Res> {
  __$$AdsCityResponseImplCopyWithImpl(
      _$AdsCityResponseImpl _value, $Res Function(_$AdsCityResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? city = null,
  }) {
    return _then(_$AdsCityResponseImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool,
      city: null == city
          ? _value._city
          : city // ignore: cast_nullable_to_non_nullable
              as List<AdsCity>,
    ));
  }
}

/// @nodoc

class _$AdsCityResponseImpl implements _AdsCityResponse {
  const _$AdsCityResponseImpl(
      {required this.result, required final List<AdsCity> city})
      : _city = city;

  @override
  final bool result;
  final List<AdsCity> _city;
  @override
  List<AdsCity> get city {
    if (_city is EqualUnmodifiableListView) return _city;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_city);
  }

  @override
  String toString() {
    return 'AdsCityResponse(result: $result, city: $city)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdsCityResponseImpl &&
            (identical(other.result, result) || other.result == result) &&
            const DeepCollectionEquality().equals(other._city, _city));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, result, const DeepCollectionEquality().hash(_city));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdsCityResponseImplCopyWith<_$AdsCityResponseImpl> get copyWith =>
      __$$AdsCityResponseImplCopyWithImpl<_$AdsCityResponseImpl>(
          this, _$identity);
}

abstract class _AdsCityResponse implements AdsCityResponse {
  const factory _AdsCityResponse(
      {required final bool result,
      required final List<AdsCity> city}) = _$AdsCityResponseImpl;

  @override
  bool get result;
  @override
  List<AdsCity> get city;
  @override
  @JsonKey(ignore: true)
  _$$AdsCityResponseImplCopyWith<_$AdsCityResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
