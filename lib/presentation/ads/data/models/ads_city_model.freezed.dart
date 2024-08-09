// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ads_city_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdsCity {
  String get id => throw _privateConstructorUsedError;
  String? get region_id => throw _privateConstructorUsedError;
  String? get country_id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdsCityCopyWith<AdsCity> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdsCityCopyWith<$Res> {
  factory $AdsCityCopyWith(AdsCity value, $Res Function(AdsCity) then) =
      _$AdsCityCopyWithImpl<$Res, AdsCity>;
  @useResult
  $Res call({String id, String? region_id, String? country_id, String? name});
}

/// @nodoc
class _$AdsCityCopyWithImpl<$Res, $Val extends AdsCity>
    implements $AdsCityCopyWith<$Res> {
  _$AdsCityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? region_id = freezed,
    Object? country_id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      region_id: freezed == region_id
          ? _value.region_id
          : region_id // ignore: cast_nullable_to_non_nullable
              as String?,
      country_id: freezed == country_id
          ? _value.country_id
          : country_id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdsCityImplCopyWith<$Res> implements $AdsCityCopyWith<$Res> {
  factory _$$AdsCityImplCopyWith(
          _$AdsCityImpl value, $Res Function(_$AdsCityImpl) then) =
      __$$AdsCityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String? region_id, String? country_id, String? name});
}

/// @nodoc
class __$$AdsCityImplCopyWithImpl<$Res>
    extends _$AdsCityCopyWithImpl<$Res, _$AdsCityImpl>
    implements _$$AdsCityImplCopyWith<$Res> {
  __$$AdsCityImplCopyWithImpl(
      _$AdsCityImpl _value, $Res Function(_$AdsCityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? region_id = freezed,
    Object? country_id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$AdsCityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      region_id: freezed == region_id
          ? _value.region_id
          : region_id // ignore: cast_nullable_to_non_nullable
              as String?,
      country_id: freezed == country_id
          ? _value.country_id
          : country_id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AdsCityImpl implements _AdsCity {
  const _$AdsCityImpl(
      {required this.id,
      required this.region_id,
      required this.country_id,
      required this.name});

  @override
  final String id;
  @override
  final String? region_id;
  @override
  final String? country_id;
  @override
  final String? name;

  @override
  String toString() {
    return 'AdsCity(id: $id, region_id: $region_id, country_id: $country_id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdsCityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.region_id, region_id) ||
                other.region_id == region_id) &&
            (identical(other.country_id, country_id) ||
                other.country_id == country_id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, region_id, country_id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdsCityImplCopyWith<_$AdsCityImpl> get copyWith =>
      __$$AdsCityImplCopyWithImpl<_$AdsCityImpl>(this, _$identity);
}

abstract class _AdsCity implements AdsCity {
  const factory _AdsCity(
      {required final String id,
      required final String? region_id,
      required final String? country_id,
      required final String? name}) = _$AdsCityImpl;

  @override
  String get id;
  @override
  String? get region_id;
  @override
  String? get country_id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$AdsCityImplCopyWith<_$AdsCityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
