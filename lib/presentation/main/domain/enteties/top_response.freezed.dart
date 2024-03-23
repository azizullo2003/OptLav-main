// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TopResponse {
  bool get result => throw _privateConstructorUsedError;
  List<Product> get prod_top => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopResponseCopyWith<TopResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopResponseCopyWith<$Res> {
  factory $TopResponseCopyWith(
          TopResponse value, $Res Function(TopResponse) then) =
      _$TopResponseCopyWithImpl<$Res, TopResponse>;
  @useResult
  $Res call({bool result, List<Product> prod_top});
}

/// @nodoc
class _$TopResponseCopyWithImpl<$Res, $Val extends TopResponse>
    implements $TopResponseCopyWith<$Res> {
  _$TopResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? prod_top = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool,
      prod_top: null == prod_top
          ? _value.prod_top
          : prod_top // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopResponseImplCopyWith<$Res>
    implements $TopResponseCopyWith<$Res> {
  factory _$$TopResponseImplCopyWith(
          _$TopResponseImpl value, $Res Function(_$TopResponseImpl) then) =
      __$$TopResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool result, List<Product> prod_top});
}

/// @nodoc
class __$$TopResponseImplCopyWithImpl<$Res>
    extends _$TopResponseCopyWithImpl<$Res, _$TopResponseImpl>
    implements _$$TopResponseImplCopyWith<$Res> {
  __$$TopResponseImplCopyWithImpl(
      _$TopResponseImpl _value, $Res Function(_$TopResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? prod_top = null,
  }) {
    return _then(_$TopResponseImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool,
      prod_top: null == prod_top
          ? _value._prod_top
          : prod_top // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$TopResponseImpl implements _TopResponse {
  const _$TopResponseImpl(
      {required this.result, required final List<Product> prod_top})
      : _prod_top = prod_top;

  @override
  final bool result;
  final List<Product> _prod_top;
  @override
  List<Product> get prod_top {
    if (_prod_top is EqualUnmodifiableListView) return _prod_top;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prod_top);
  }

  @override
  String toString() {
    return 'TopResponse(result: $result, prod_top: $prod_top)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopResponseImpl &&
            (identical(other.result, result) || other.result == result) &&
            const DeepCollectionEquality().equals(other._prod_top, _prod_top));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, result, const DeepCollectionEquality().hash(_prod_top));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopResponseImplCopyWith<_$TopResponseImpl> get copyWith =>
      __$$TopResponseImplCopyWithImpl<_$TopResponseImpl>(this, _$identity);
}

abstract class _TopResponse implements TopResponse {
  const factory _TopResponse(
      {required final bool result,
      required final List<Product> prod_top}) = _$TopResponseImpl;

  @override
  bool get result;
  @override
  List<Product> get prod_top;
  @override
  @JsonKey(ignore: true)
  _$$TopResponseImplCopyWith<_$TopResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
