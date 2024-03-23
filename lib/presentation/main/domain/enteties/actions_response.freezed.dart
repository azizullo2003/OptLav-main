// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'actions_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ActionsResponse {
  bool get result => throw _privateConstructorUsedError;
  List<Product> get actions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActionsResponseCopyWith<ActionsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionsResponseCopyWith<$Res> {
  factory $ActionsResponseCopyWith(
          ActionsResponse value, $Res Function(ActionsResponse) then) =
      _$ActionsResponseCopyWithImpl<$Res, ActionsResponse>;
  @useResult
  $Res call({bool result, List<Product> actions});
}

/// @nodoc
class _$ActionsResponseCopyWithImpl<$Res, $Val extends ActionsResponse>
    implements $ActionsResponseCopyWith<$Res> {
  _$ActionsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? actions = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool,
      actions: null == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActionsResponseImplCopyWith<$Res>
    implements $ActionsResponseCopyWith<$Res> {
  factory _$$ActionsResponseImplCopyWith(_$ActionsResponseImpl value,
          $Res Function(_$ActionsResponseImpl) then) =
      __$$ActionsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool result, List<Product> actions});
}

/// @nodoc
class __$$ActionsResponseImplCopyWithImpl<$Res>
    extends _$ActionsResponseCopyWithImpl<$Res, _$ActionsResponseImpl>
    implements _$$ActionsResponseImplCopyWith<$Res> {
  __$$ActionsResponseImplCopyWithImpl(
      _$ActionsResponseImpl _value, $Res Function(_$ActionsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? actions = null,
  }) {
    return _then(_$ActionsResponseImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool,
      actions: null == actions
          ? _value._actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$ActionsResponseImpl implements _ActionsResponse {
  const _$ActionsResponseImpl(
      {required this.result, required final List<Product> actions})
      : _actions = actions;

  @override
  final bool result;
  final List<Product> _actions;
  @override
  List<Product> get actions {
    if (_actions is EqualUnmodifiableListView) return _actions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_actions);
  }

  @override
  String toString() {
    return 'ActionsResponse(result: $result, actions: $actions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionsResponseImpl &&
            (identical(other.result, result) || other.result == result) &&
            const DeepCollectionEquality().equals(other._actions, _actions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, result, const DeepCollectionEquality().hash(_actions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActionsResponseImplCopyWith<_$ActionsResponseImpl> get copyWith =>
      __$$ActionsResponseImplCopyWithImpl<_$ActionsResponseImpl>(
          this, _$identity);
}

abstract class _ActionsResponse implements ActionsResponse {
  const factory _ActionsResponse(
      {required final bool result,
      required final List<Product> actions}) = _$ActionsResponseImpl;

  @override
  bool get result;
  @override
  List<Product> get actions;
  @override
  @JsonKey(ignore: true)
  _$$ActionsResponseImplCopyWith<_$ActionsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
