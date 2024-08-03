// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ads_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdsCategory {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get parent_id => throw _privateConstructorUsedError;
  String? get sorty => throw _privateConstructorUsedError;
  String get images_url => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdsCategoryCopyWith<AdsCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdsCategoryCopyWith<$Res> {
  factory $AdsCategoryCopyWith(
          AdsCategory value, $Res Function(AdsCategory) then) =
      _$AdsCategoryCopyWithImpl<$Res, AdsCategory>;
  @useResult
  $Res call(
      {int id,
      String name,
      String? parent_id,
      String? sorty,
      String images_url,
      int count});
}

/// @nodoc
class _$AdsCategoryCopyWithImpl<$Res, $Val extends AdsCategory>
    implements $AdsCategoryCopyWith<$Res> {
  _$AdsCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? parent_id = freezed,
    Object? sorty = freezed,
    Object? images_url = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      parent_id: freezed == parent_id
          ? _value.parent_id
          : parent_id // ignore: cast_nullable_to_non_nullable
              as String?,
      sorty: freezed == sorty
          ? _value.sorty
          : sorty // ignore: cast_nullable_to_non_nullable
              as String?,
      images_url: null == images_url
          ? _value.images_url
          : images_url // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdsCategoryImplCopyWith<$Res>
    implements $AdsCategoryCopyWith<$Res> {
  factory _$$AdsCategoryImplCopyWith(
          _$AdsCategoryImpl value, $Res Function(_$AdsCategoryImpl) then) =
      __$$AdsCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String? parent_id,
      String? sorty,
      String images_url,
      int count});
}

/// @nodoc
class __$$AdsCategoryImplCopyWithImpl<$Res>
    extends _$AdsCategoryCopyWithImpl<$Res, _$AdsCategoryImpl>
    implements _$$AdsCategoryImplCopyWith<$Res> {
  __$$AdsCategoryImplCopyWithImpl(
      _$AdsCategoryImpl _value, $Res Function(_$AdsCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? parent_id = freezed,
    Object? sorty = freezed,
    Object? images_url = null,
    Object? count = null,
  }) {
    return _then(_$AdsCategoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      parent_id: freezed == parent_id
          ? _value.parent_id
          : parent_id // ignore: cast_nullable_to_non_nullable
              as String?,
      sorty: freezed == sorty
          ? _value.sorty
          : sorty // ignore: cast_nullable_to_non_nullable
              as String?,
      images_url: null == images_url
          ? _value.images_url
          : images_url // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AdsCategoryImpl implements _AdsCategory {
  const _$AdsCategoryImpl(
      {required this.id,
      required this.name,
      required this.parent_id,
      required this.sorty,
      required this.images_url,
      required this.count});

  @override
  final int id;
  @override
  final String name;
  @override
  final String? parent_id;
  @override
  final String? sorty;
  @override
  final String images_url;
  @override
  final int count;

  @override
  String toString() {
    return 'AdsCategory(id: $id, name: $name, parent_id: $parent_id, sorty: $sorty, images_url: $images_url, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdsCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.parent_id, parent_id) ||
                other.parent_id == parent_id) &&
            (identical(other.sorty, sorty) || other.sorty == sorty) &&
            (identical(other.images_url, images_url) ||
                other.images_url == images_url) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, parent_id, sorty, images_url, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdsCategoryImplCopyWith<_$AdsCategoryImpl> get copyWith =>
      __$$AdsCategoryImplCopyWithImpl<_$AdsCategoryImpl>(this, _$identity);
}

abstract class _AdsCategory implements AdsCategory {
  const factory _AdsCategory(
      {required final int id,
      required final String name,
      required final String? parent_id,
      required final String? sorty,
      required final String images_url,
      required final int count}) = _$AdsCategoryImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get parent_id;
  @override
  String? get sorty;
  @override
  String get images_url;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$AdsCategoryImplCopyWith<_$AdsCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
