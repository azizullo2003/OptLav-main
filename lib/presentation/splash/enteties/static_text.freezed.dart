// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'static_text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Static {
  String get address_empty => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StaticCopyWith<Static> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaticCopyWith<$Res> {
  factory $StaticCopyWith(Static value, $Res Function(Static) then) =
      _$StaticCopyWithImpl<$Res, Static>;
  @useResult
  $Res call({String address_empty});
}

/// @nodoc
class _$StaticCopyWithImpl<$Res, $Val extends Static>
    implements $StaticCopyWith<$Res> {
  _$StaticCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address_empty = null,
  }) {
    return _then(_value.copyWith(
      address_empty: null == address_empty
          ? _value.address_empty
          : address_empty // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StaticImplCopyWith<$Res> implements $StaticCopyWith<$Res> {
  factory _$$StaticImplCopyWith(
          _$StaticImpl value, $Res Function(_$StaticImpl) then) =
      __$$StaticImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String address_empty});
}

/// @nodoc
class __$$StaticImplCopyWithImpl<$Res>
    extends _$StaticCopyWithImpl<$Res, _$StaticImpl>
    implements _$$StaticImplCopyWith<$Res> {
  __$$StaticImplCopyWithImpl(
      _$StaticImpl _value, $Res Function(_$StaticImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address_empty = null,
  }) {
    return _then(_$StaticImpl(
      address_empty: null == address_empty
          ? _value.address_empty
          : address_empty // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StaticImpl implements _Static {
  const _$StaticImpl({required this.address_empty});

  @override
  final String address_empty;

  @override
  String toString() {
    return 'Static(address_empty: $address_empty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaticImpl &&
            (identical(other.address_empty, address_empty) ||
                other.address_empty == address_empty));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address_empty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StaticImplCopyWith<_$StaticImpl> get copyWith =>
      __$$StaticImplCopyWithImpl<_$StaticImpl>(this, _$identity);
}

abstract class _Static implements Static {
  const factory _Static({required final String address_empty}) = _$StaticImpl;

  @override
  String get address_empty;
  @override
  @JsonKey(ignore: true)
  _$$StaticImplCopyWith<_$StaticImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
