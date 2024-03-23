// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adres.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Adres {
  String get title => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  int get key => throw _privateConstructorUsedError;
  String? get descrip => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdresCopyWith<Adres> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdresCopyWith<$Res> {
  factory $AdresCopyWith(Adres value, $Res Function(Adres) then) =
      _$AdresCopyWithImpl<$Res, Adres>;
  @useResult
  $Res call({String title, String id, int key, String? descrip});
}

/// @nodoc
class _$AdresCopyWithImpl<$Res, $Val extends Adres>
    implements $AdresCopyWith<$Res> {
  _$AdresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? id = null,
    Object? key = null,
    Object? descrip = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int,
      descrip: freezed == descrip
          ? _value.descrip
          : descrip // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdresImplCopyWith<$Res> implements $AdresCopyWith<$Res> {
  factory _$$AdresImplCopyWith(
          _$AdresImpl value, $Res Function(_$AdresImpl) then) =
      __$$AdresImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String id, int key, String? descrip});
}

/// @nodoc
class __$$AdresImplCopyWithImpl<$Res>
    extends _$AdresCopyWithImpl<$Res, _$AdresImpl>
    implements _$$AdresImplCopyWith<$Res> {
  __$$AdresImplCopyWithImpl(
      _$AdresImpl _value, $Res Function(_$AdresImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? id = null,
    Object? key = null,
    Object? descrip = freezed,
  }) {
    return _then(_$AdresImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int,
      descrip: freezed == descrip
          ? _value.descrip
          : descrip // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AdresImpl implements _Adres {
  const _$AdresImpl(
      {required this.title, required this.id, required this.key, this.descrip});

  @override
  final String title;
  @override
  final String id;
  @override
  final int key;
  @override
  final String? descrip;

  @override
  String toString() {
    return 'Adres(title: $title, id: $id, key: $key, descrip: $descrip)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdresImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.descrip, descrip) || other.descrip == descrip));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, id, key, descrip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdresImplCopyWith<_$AdresImpl> get copyWith =>
      __$$AdresImplCopyWithImpl<_$AdresImpl>(this, _$identity);
}

abstract class _Adres implements Adres {
  const factory _Adres(
      {required final String title,
      required final String id,
      required final int key,
      final String? descrip}) = _$AdresImpl;

  @override
  String get title;
  @override
  String get id;
  @override
  int get key;
  @override
  String? get descrip;
  @override
  @JsonKey(ignore: true)
  _$$AdresImplCopyWith<_$AdresImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
