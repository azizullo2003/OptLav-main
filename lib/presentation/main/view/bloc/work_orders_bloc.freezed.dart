// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_orders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WorkOrdersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWorkingOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWorkingOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWorkingOrders,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWorkingOrders value) getWorkingOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWorkingOrders value)? getWorkingOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWorkingOrders value)? getWorkingOrders,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkOrdersEventCopyWith<$Res> {
  factory $WorkOrdersEventCopyWith(
          WorkOrdersEvent value, $Res Function(WorkOrdersEvent) then) =
      _$WorkOrdersEventCopyWithImpl<$Res, WorkOrdersEvent>;
}

/// @nodoc
class _$WorkOrdersEventCopyWithImpl<$Res, $Val extends WorkOrdersEvent>
    implements $WorkOrdersEventCopyWith<$Res> {
  _$WorkOrdersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetWorkingOrdersImplCopyWith<$Res> {
  factory _$$GetWorkingOrdersImplCopyWith(_$GetWorkingOrdersImpl value,
          $Res Function(_$GetWorkingOrdersImpl) then) =
      __$$GetWorkingOrdersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetWorkingOrdersImplCopyWithImpl<$Res>
    extends _$WorkOrdersEventCopyWithImpl<$Res, _$GetWorkingOrdersImpl>
    implements _$$GetWorkingOrdersImplCopyWith<$Res> {
  __$$GetWorkingOrdersImplCopyWithImpl(_$GetWorkingOrdersImpl _value,
      $Res Function(_$GetWorkingOrdersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetWorkingOrdersImpl implements _GetWorkingOrders {
  const _$GetWorkingOrdersImpl();

  @override
  String toString() {
    return 'WorkOrdersEvent.getWorkingOrders()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetWorkingOrdersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWorkingOrders,
  }) {
    return getWorkingOrders();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWorkingOrders,
  }) {
    return getWorkingOrders?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWorkingOrders,
    required TResult orElse(),
  }) {
    if (getWorkingOrders != null) {
      return getWorkingOrders();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWorkingOrders value) getWorkingOrders,
  }) {
    return getWorkingOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWorkingOrders value)? getWorkingOrders,
  }) {
    return getWorkingOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWorkingOrders value)? getWorkingOrders,
    required TResult orElse(),
  }) {
    if (getWorkingOrders != null) {
      return getWorkingOrders(this);
    }
    return orElse();
  }
}

abstract class _GetWorkingOrders implements WorkOrdersEvent {
  const factory _GetWorkingOrders() = _$GetWorkingOrdersImpl;
}

/// @nodoc
mixin _$WorkOrdersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError error) failure,
    required TResult Function() loading,
    required TResult Function(OrdersResponse response) workingOrdersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioError error)? failure,
    TResult? Function()? loading,
    TResult? Function(OrdersResponse response)? workingOrdersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError error)? failure,
    TResult Function()? loading,
    TResult Function(OrdersResponse response)? workingOrdersLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
    required TResult Function(_WorkingOrdersLoaded value) workingOrdersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_WorkingOrdersLoaded value)? workingOrdersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_WorkingOrdersLoaded value)? workingOrdersLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkOrdersStateCopyWith<$Res> {
  factory $WorkOrdersStateCopyWith(
          WorkOrdersState value, $Res Function(WorkOrdersState) then) =
      _$WorkOrdersStateCopyWithImpl<$Res, WorkOrdersState>;
}

/// @nodoc
class _$WorkOrdersStateCopyWithImpl<$Res, $Val extends WorkOrdersState>
    implements $WorkOrdersStateCopyWith<$Res> {
  _$WorkOrdersStateCopyWithImpl(this._value, this._then);

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
    extends _$WorkOrdersStateCopyWithImpl<$Res, _$FailureImpl>
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
    return 'WorkOrdersState.failure(error: $error)';
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
    required TResult Function(OrdersResponse response) workingOrdersLoaded,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioError error)? failure,
    TResult? Function()? loading,
    TResult? Function(OrdersResponse response)? workingOrdersLoaded,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError error)? failure,
    TResult Function()? loading,
    TResult Function(OrdersResponse response)? workingOrdersLoaded,
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
    required TResult Function(_WorkingOrdersLoaded value) workingOrdersLoaded,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_WorkingOrdersLoaded value)? workingOrdersLoaded,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_WorkingOrdersLoaded value)? workingOrdersLoaded,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements WorkOrdersState {
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
    extends _$WorkOrdersStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'WorkOrdersState.loading()';
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
    required TResult Function(OrdersResponse response) workingOrdersLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioError error)? failure,
    TResult? Function()? loading,
    TResult? Function(OrdersResponse response)? workingOrdersLoaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError error)? failure,
    TResult Function()? loading,
    TResult Function(OrdersResponse response)? workingOrdersLoaded,
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
    required TResult Function(_WorkingOrdersLoaded value) workingOrdersLoaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_WorkingOrdersLoaded value)? workingOrdersLoaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_WorkingOrdersLoaded value)? workingOrdersLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements WorkOrdersState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$WorkingOrdersLoadedImplCopyWith<$Res> {
  factory _$$WorkingOrdersLoadedImplCopyWith(_$WorkingOrdersLoadedImpl value,
          $Res Function(_$WorkingOrdersLoadedImpl) then) =
      __$$WorkingOrdersLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrdersResponse response});
}

/// @nodoc
class __$$WorkingOrdersLoadedImplCopyWithImpl<$Res>
    extends _$WorkOrdersStateCopyWithImpl<$Res, _$WorkingOrdersLoadedImpl>
    implements _$$WorkingOrdersLoadedImplCopyWith<$Res> {
  __$$WorkingOrdersLoadedImplCopyWithImpl(_$WorkingOrdersLoadedImpl _value,
      $Res Function(_$WorkingOrdersLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$WorkingOrdersLoadedImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as OrdersResponse,
    ));
  }
}

/// @nodoc

class _$WorkingOrdersLoadedImpl implements _WorkingOrdersLoaded {
  const _$WorkingOrdersLoadedImpl(this.response);

  @override
  final OrdersResponse response;

  @override
  String toString() {
    return 'WorkOrdersState.workingOrdersLoaded(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkingOrdersLoadedImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkingOrdersLoadedImplCopyWith<_$WorkingOrdersLoadedImpl> get copyWith =>
      __$$WorkingOrdersLoadedImplCopyWithImpl<_$WorkingOrdersLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError error) failure,
    required TResult Function() loading,
    required TResult Function(OrdersResponse response) workingOrdersLoaded,
  }) {
    return workingOrdersLoaded(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioError error)? failure,
    TResult? Function()? loading,
    TResult? Function(OrdersResponse response)? workingOrdersLoaded,
  }) {
    return workingOrdersLoaded?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError error)? failure,
    TResult Function()? loading,
    TResult Function(OrdersResponse response)? workingOrdersLoaded,
    required TResult orElse(),
  }) {
    if (workingOrdersLoaded != null) {
      return workingOrdersLoaded(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
    required TResult Function(_WorkingOrdersLoaded value) workingOrdersLoaded,
  }) {
    return workingOrdersLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_WorkingOrdersLoaded value)? workingOrdersLoaded,
  }) {
    return workingOrdersLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_WorkingOrdersLoaded value)? workingOrdersLoaded,
    required TResult orElse(),
  }) {
    if (workingOrdersLoaded != null) {
      return workingOrdersLoaded(this);
    }
    return orElse();
  }
}

abstract class _WorkingOrdersLoaded implements WorkOrdersState {
  const factory _WorkingOrdersLoaded(final OrdersResponse response) =
      _$WorkingOrdersLoadedImpl;

  OrdersResponse get response;
  @JsonKey(ignore: true)
  _$$WorkingOrdersLoadedImplCopyWith<_$WorkingOrdersLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
