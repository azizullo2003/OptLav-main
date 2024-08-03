// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ads_category_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdsCategoryResponse {
  bool get result => throw _privateConstructorUsedError;
  List<AdsCategory> get categories => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdsCategoryResponseCopyWith<AdsCategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdsCategoryResponseCopyWith<$Res> {
  factory $AdsCategoryResponseCopyWith(
          AdsCategoryResponse value, $Res Function(AdsCategoryResponse) then) =
      _$AdsCategoryResponseCopyWithImpl<$Res, AdsCategoryResponse>;
  @useResult
  $Res call({bool result, List<AdsCategory> categories});
}

/// @nodoc
class _$AdsCategoryResponseCopyWithImpl<$Res, $Val extends AdsCategoryResponse>
    implements $AdsCategoryResponseCopyWith<$Res> {
  _$AdsCategoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<AdsCategory>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdsCategoryResponseImplCopyWith<$Res>
    implements $AdsCategoryResponseCopyWith<$Res> {
  factory _$$AdsCategoryResponseImplCopyWith(_$AdsCategoryResponseImpl value,
          $Res Function(_$AdsCategoryResponseImpl) then) =
      __$$AdsCategoryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool result, List<AdsCategory> categories});
}

/// @nodoc
class __$$AdsCategoryResponseImplCopyWithImpl<$Res>
    extends _$AdsCategoryResponseCopyWithImpl<$Res, _$AdsCategoryResponseImpl>
    implements _$$AdsCategoryResponseImplCopyWith<$Res> {
  __$$AdsCategoryResponseImplCopyWithImpl(_$AdsCategoryResponseImpl _value,
      $Res Function(_$AdsCategoryResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? categories = null,
  }) {
    return _then(_$AdsCategoryResponseImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<AdsCategory>,
    ));
  }
}

/// @nodoc

class _$AdsCategoryResponseImpl implements _AdsCategoryResponse {
  const _$AdsCategoryResponseImpl(
      {required this.result, required final List<AdsCategory> categories})
      : _categories = categories;

  @override
  final bool result;
  final List<AdsCategory> _categories;
  @override
  List<AdsCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'AdsCategoryResponse(result: $result, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdsCategoryResponseImpl &&
            (identical(other.result, result) || other.result == result) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, result, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdsCategoryResponseImplCopyWith<_$AdsCategoryResponseImpl> get copyWith =>
      __$$AdsCategoryResponseImplCopyWithImpl<_$AdsCategoryResponseImpl>(
          this, _$identity);
}

abstract class _AdsCategoryResponse implements AdsCategoryResponse {
  const factory _AdsCategoryResponse(
      {required final bool result,
      required final List<AdsCategory> categories}) = _$AdsCategoryResponseImpl;

  @override
  bool get result;
  @override
  List<AdsCategory> get categories;
  @override
  @JsonKey(ignore: true)
  _$$AdsCategoryResponseImplCopyWith<_$AdsCategoryResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
