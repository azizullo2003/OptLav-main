// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'action_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ActionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getActions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getActions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getActions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetActions value) getActions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetActions value)? getActions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetActions value)? getActions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionsEventCopyWith<$Res> {
  factory $ActionsEventCopyWith(
          ActionsEvent value, $Res Function(ActionsEvent) then) =
      _$ActionsEventCopyWithImpl<$Res, ActionsEvent>;
}

/// @nodoc
class _$ActionsEventCopyWithImpl<$Res, $Val extends ActionsEvent>
    implements $ActionsEventCopyWith<$Res> {
  _$ActionsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetActionsImplCopyWith<$Res> {
  factory _$$GetActionsImplCopyWith(
          _$GetActionsImpl value, $Res Function(_$GetActionsImpl) then) =
      __$$GetActionsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetActionsImplCopyWithImpl<$Res>
    extends _$ActionsEventCopyWithImpl<$Res, _$GetActionsImpl>
    implements _$$GetActionsImplCopyWith<$Res> {
  __$$GetActionsImplCopyWithImpl(
      _$GetActionsImpl _value, $Res Function(_$GetActionsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetActionsImpl implements _GetActions {
  const _$GetActionsImpl();

  @override
  String toString() {
    return 'ActionsEvent.getActions()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetActionsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getActions,
  }) {
    return getActions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getActions,
  }) {
    return getActions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getActions,
    required TResult orElse(),
  }) {
    if (getActions != null) {
      return getActions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetActions value) getActions,
  }) {
    return getActions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetActions value)? getActions,
  }) {
    return getActions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetActions value)? getActions,
    required TResult orElse(),
  }) {
    if (getActions != null) {
      return getActions(this);
    }
    return orElse();
  }
}

abstract class _GetActions implements ActionsEvent {
  const factory _GetActions() = _$GetActionsImpl;
}

/// @nodoc
mixin _$ActionsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError error) failure,
    required TResult Function() loading,
    required TResult Function(ActionsResponse response) actionsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioError error)? failure,
    TResult? Function()? loading,
    TResult? Function(ActionsResponse response)? actionsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError error)? failure,
    TResult Function()? loading,
    TResult Function(ActionsResponse response)? actionsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ActionsLoaded value) actionsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ActionsLoaded value)? actionsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_ActionsLoaded value)? actionsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionsStateCopyWith<$Res> {
  factory $ActionsStateCopyWith(
          ActionsState value, $Res Function(ActionsState) then) =
      _$ActionsStateCopyWithImpl<$Res, ActionsState>;
}

/// @nodoc
class _$ActionsStateCopyWithImpl<$Res, $Val extends ActionsState>
    implements $ActionsStateCopyWith<$Res> {
  _$ActionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DioError error});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$ActionsStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DioError,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl(this.error);

  @override
  final DioError error;

  @override
  String toString() {
    return 'ActionsState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError error) failure,
    required TResult Function() loading,
    required TResult Function(ActionsResponse response) actionsLoaded,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioError error)? failure,
    TResult? Function()? loading,
    TResult? Function(ActionsResponse response)? actionsLoaded,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError error)? failure,
    TResult Function()? loading,
    TResult Function(ActionsResponse response)? actionsLoaded,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ActionsLoaded value) actionsLoaded,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ActionsLoaded value)? actionsLoaded,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_ActionsLoaded value)? actionsLoaded,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements ActionsState {
  const factory _Failure(final DioError error) = _$FailureImpl;

  DioError get error;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ActionsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ActionsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError error) failure,
    required TResult Function() loading,
    required TResult Function(ActionsResponse response) actionsLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioError error)? failure,
    TResult? Function()? loading,
    TResult? Function(ActionsResponse response)? actionsLoaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError error)? failure,
    TResult Function()? loading,
    TResult Function(ActionsResponse response)? actionsLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ActionsLoaded value) actionsLoaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ActionsLoaded value)? actionsLoaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_ActionsLoaded value)? actionsLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ActionsState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ActionsLoadedImplCopyWith<$Res> {
  factory _$$ActionsLoadedImplCopyWith(
          _$ActionsLoadedImpl value, $Res Function(_$ActionsLoadedImpl) then) =
      __$$ActionsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ActionsResponse response});

  $ActionsResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$$ActionsLoadedImplCopyWithImpl<$Res>
    extends _$ActionsStateCopyWithImpl<$Res, _$ActionsLoadedImpl>
    implements _$$ActionsLoadedImplCopyWith<$Res> {
  __$$ActionsLoadedImplCopyWithImpl(
      _$ActionsLoadedImpl _value, $Res Function(_$ActionsLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$ActionsLoadedImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ActionsResponse,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ActionsResponseCopyWith<$Res> get response {
    return $ActionsResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$ActionsLoadedImpl implements _ActionsLoaded {
  const _$ActionsLoadedImpl(this.response);

  @override
  final ActionsResponse response;

  @override
  String toString() {
    return 'ActionsState.actionsLoaded(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionsLoadedImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActionsLoadedImplCopyWith<_$ActionsLoadedImpl> get copyWith =>
      __$$ActionsLoadedImplCopyWithImpl<_$ActionsLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError error) failure,
    required TResult Function() loading,
    required TResult Function(ActionsResponse response) actionsLoaded,
  }) {
    return actionsLoaded(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioError error)? failure,
    TResult? Function()? loading,
    TResult? Function(ActionsResponse response)? actionsLoaded,
  }) {
    return actionsLoaded?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError error)? failure,
    TResult Function()? loading,
    TResult Function(ActionsResponse response)? actionsLoaded,
    required TResult orElse(),
  }) {
    if (actionsLoaded != null) {
      return actionsLoaded(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ActionsLoaded value) actionsLoaded,
  }) {
    return actionsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ActionsLoaded value)? actionsLoaded,
  }) {
    return actionsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_ActionsLoaded value)? actionsLoaded,
    required TResult orElse(),
  }) {
    if (actionsLoaded != null) {
      return actionsLoaded(this);
    }
    return orElse();
  }
}

abstract class _ActionsLoaded implements ActionsState {
  const factory _ActionsLoaded(final ActionsResponse response) =
      _$ActionsLoadedImpl;

  ActionsResponse get response;
  @JsonKey(ignore: true)
  _$$ActionsLoadedImplCopyWith<_$ActionsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
