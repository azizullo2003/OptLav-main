// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ads_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdsResponse {
  bool get result => throw _privateConstructorUsedError;
  List<AdsModel> get adsList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdsResponseCopyWith<AdsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdsResponseCopyWith<$Res> {
  factory $AdsResponseCopyWith(
          AdsResponse value, $Res Function(AdsResponse) then) =
      _$AdsResponseCopyWithImpl<$Res, AdsResponse>;
  @useResult
  $Res call({bool result, List<AdsModel> adsList});
}

/// @nodoc
class _$AdsResponseCopyWithImpl<$Res, $Val extends AdsResponse>
    implements $AdsResponseCopyWith<$Res> {
  _$AdsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? adsList = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool,
      adsList: null == adsList
          ? _value.adsList
          : adsList // ignore: cast_nullable_to_non_nullable
              as List<AdsModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdsResponseImplCopyWith<$Res>
    implements $AdsResponseCopyWith<$Res> {
  factory _$$AdsResponseImplCopyWith(
          _$AdsResponseImpl value, $Res Function(_$AdsResponseImpl) then) =
      __$$AdsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool result, List<AdsModel> adsList});
}

/// @nodoc
class __$$AdsResponseImplCopyWithImpl<$Res>
    extends _$AdsResponseCopyWithImpl<$Res, _$AdsResponseImpl>
    implements _$$AdsResponseImplCopyWith<$Res> {
  __$$AdsResponseImplCopyWithImpl(
      _$AdsResponseImpl _value, $Res Function(_$AdsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? adsList = null,
  }) {
    return _then(_$AdsResponseImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool,
      adsList: null == adsList
          ? _value._adsList
          : adsList // ignore: cast_nullable_to_non_nullable
              as List<AdsModel>,
    ));
  }
}

/// @nodoc

class _$AdsResponseImpl implements _AdsResponse {
  const _$AdsResponseImpl(
      {required this.result, required final List<AdsModel> adsList})
      : _adsList = adsList;

  @override
  final bool result;
  final List<AdsModel> _adsList;
  @override
  List<AdsModel> get adsList {
    if (_adsList is EqualUnmodifiableListView) return _adsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_adsList);
  }

  @override
  String toString() {
    return 'AdsResponse(result: $result, adsList: $adsList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdsResponseImpl &&
            (identical(other.result, result) || other.result == result) &&
            const DeepCollectionEquality().equals(other._adsList, _adsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, result, const DeepCollectionEquality().hash(_adsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdsResponseImplCopyWith<_$AdsResponseImpl> get copyWith =>
      __$$AdsResponseImplCopyWithImpl<_$AdsResponseImpl>(this, _$identity);
}

abstract class _AdsResponse implements AdsResponse {
  const factory _AdsResponse(
      {required final bool result,
      required final List<AdsModel> adsList}) = _$AdsResponseImpl;

  @override
  bool get result;
  @override
  List<AdsModel> get adsList;
  @override
  @JsonKey(ignore: true)
  _$$AdsResponseImplCopyWith<_$AdsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
