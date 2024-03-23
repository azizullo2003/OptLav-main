// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrdersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function(String status) getOrdersByStatus,
    required TResult Function(String orderId) getOrderById,
    required TResult Function(String productId, String orderId)
        deleteProductFromOrder,
    required TResult Function(String orderId, String addressId,
            String deliveryId, String paymentId)
        cartSendOrder,
    required TResult Function() getWorkingOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function(String status)? getOrdersByStatus,
    TResult? Function(String orderId)? getOrderById,
    TResult? Function(String productId, String orderId)? deleteProductFromOrder,
    TResult? Function(String orderId, String addressId, String deliveryId,
            String paymentId)?
        cartSendOrder,
    TResult? Function()? getWorkingOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function(String status)? getOrdersByStatus,
    TResult Function(String orderId)? getOrderById,
    TResult Function(String productId, String orderId)? deleteProductFromOrder,
    TResult Function(String orderId, String addressId, String deliveryId,
            String paymentId)?
        cartSendOrder,
    TResult Function()? getWorkingOrders,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_GetOrdersByStatus value) getOrdersByStatus,
    required TResult Function(_GetOrderById value) getOrderById,
    required TResult Function(_DeleteProductFromOrder value)
        deleteProductFromOrder,
    required TResult Function(_CartSendOrder value) cartSendOrder,
    required TResult Function(_GetWorkingOrders value) getWorkingOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_GetOrdersByStatus value)? getOrdersByStatus,
    TResult? Function(_GetOrderById value)? getOrderById,
    TResult? Function(_DeleteProductFromOrder value)? deleteProductFromOrder,
    TResult? Function(_CartSendOrder value)? cartSendOrder,
    TResult? Function(_GetWorkingOrders value)? getWorkingOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_GetOrdersByStatus value)? getOrdersByStatus,
    TResult Function(_GetOrderById value)? getOrderById,
    TResult Function(_DeleteProductFromOrder value)? deleteProductFromOrder,
    TResult Function(_CartSendOrder value)? cartSendOrder,
    TResult Function(_GetWorkingOrders value)? getWorkingOrders,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersEventCopyWith<$Res> {
  factory $OrdersEventCopyWith(
          OrdersEvent value, $Res Function(OrdersEvent) then) =
      _$OrdersEventCopyWithImpl<$Res, OrdersEvent>;
}

/// @nodoc
class _$OrdersEventCopyWithImpl<$Res, $Val extends OrdersEvent>
    implements $OrdersEventCopyWith<$Res> {
  _$OrdersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetOrdersImplCopyWith<$Res> {
  factory _$$GetOrdersImplCopyWith(
          _$GetOrdersImpl value, $Res Function(_$GetOrdersImpl) then) =
      __$$GetOrdersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetOrdersImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$GetOrdersImpl>
    implements _$$GetOrdersImplCopyWith<$Res> {
  __$$GetOrdersImplCopyWithImpl(
      _$GetOrdersImpl _value, $Res Function(_$GetOrdersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetOrdersImpl implements _GetOrders {
  const _$GetOrdersImpl();

  @override
  String toString() {
    return 'OrdersEvent.getOrders()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetOrdersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function(String status) getOrdersByStatus,
    required TResult Function(String orderId) getOrderById,
    required TResult Function(String productId, String orderId)
        deleteProductFromOrder,
    required TResult Function(String orderId, String addressId,
            String deliveryId, String paymentId)
        cartSendOrder,
    required TResult Function() getWorkingOrders,
  }) {
    return getOrders();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function(String status)? getOrdersByStatus,
    TResult? Function(String orderId)? getOrderById,
    TResult? Function(String productId, String orderId)? deleteProductFromOrder,
    TResult? Function(String orderId, String addressId, String deliveryId,
            String paymentId)?
        cartSendOrder,
    TResult? Function()? getWorkingOrders,
  }) {
    return getOrders?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function(String status)? getOrdersByStatus,
    TResult Function(String orderId)? getOrderById,
    TResult Function(String productId, String orderId)? deleteProductFromOrder,
    TResult Function(String orderId, String addressId, String deliveryId,
            String paymentId)?
        cartSendOrder,
    TResult Function()? getWorkingOrders,
    required TResult orElse(),
  }) {
    if (getOrders != null) {
      return getOrders();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_GetOrdersByStatus value) getOrdersByStatus,
    required TResult Function(_GetOrderById value) getOrderById,
    required TResult Function(_DeleteProductFromOrder value)
        deleteProductFromOrder,
    required TResult Function(_CartSendOrder value) cartSendOrder,
    required TResult Function(_GetWorkingOrders value) getWorkingOrders,
  }) {
    return getOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_GetOrdersByStatus value)? getOrdersByStatus,
    TResult? Function(_GetOrderById value)? getOrderById,
    TResult? Function(_DeleteProductFromOrder value)? deleteProductFromOrder,
    TResult? Function(_CartSendOrder value)? cartSendOrder,
    TResult? Function(_GetWorkingOrders value)? getWorkingOrders,
  }) {
    return getOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_GetOrdersByStatus value)? getOrdersByStatus,
    TResult Function(_GetOrderById value)? getOrderById,
    TResult Function(_DeleteProductFromOrder value)? deleteProductFromOrder,
    TResult Function(_CartSendOrder value)? cartSendOrder,
    TResult Function(_GetWorkingOrders value)? getWorkingOrders,
    required TResult orElse(),
  }) {
    if (getOrders != null) {
      return getOrders(this);
    }
    return orElse();
  }
}

abstract class _GetOrders implements OrdersEvent {
  const factory _GetOrders() = _$GetOrdersImpl;
}

/// @nodoc
abstract class _$$GetOrdersByStatusImplCopyWith<$Res> {
  factory _$$GetOrdersByStatusImplCopyWith(_$GetOrdersByStatusImpl value,
          $Res Function(_$GetOrdersByStatusImpl) then) =
      __$$GetOrdersByStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String status});
}

/// @nodoc
class __$$GetOrdersByStatusImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$GetOrdersByStatusImpl>
    implements _$$GetOrdersByStatusImplCopyWith<$Res> {
  __$$GetOrdersByStatusImplCopyWithImpl(_$GetOrdersByStatusImpl _value,
      $Res Function(_$GetOrdersByStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$GetOrdersByStatusImpl(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetOrdersByStatusImpl implements _GetOrdersByStatus {
  const _$GetOrdersByStatusImpl(this.status);

  @override
  final String status;

  @override
  String toString() {
    return 'OrdersEvent.getOrdersByStatus(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrdersByStatusImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOrdersByStatusImplCopyWith<_$GetOrdersByStatusImpl> get copyWith =>
      __$$GetOrdersByStatusImplCopyWithImpl<_$GetOrdersByStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function(String status) getOrdersByStatus,
    required TResult Function(String orderId) getOrderById,
    required TResult Function(String productId, String orderId)
        deleteProductFromOrder,
    required TResult Function(String orderId, String addressId,
            String deliveryId, String paymentId)
        cartSendOrder,
    required TResult Function() getWorkingOrders,
  }) {
    return getOrdersByStatus(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function(String status)? getOrdersByStatus,
    TResult? Function(String orderId)? getOrderById,
    TResult? Function(String productId, String orderId)? deleteProductFromOrder,
    TResult? Function(String orderId, String addressId, String deliveryId,
            String paymentId)?
        cartSendOrder,
    TResult? Function()? getWorkingOrders,
  }) {
    return getOrdersByStatus?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function(String status)? getOrdersByStatus,
    TResult Function(String orderId)? getOrderById,
    TResult Function(String productId, String orderId)? deleteProductFromOrder,
    TResult Function(String orderId, String addressId, String deliveryId,
            String paymentId)?
        cartSendOrder,
    TResult Function()? getWorkingOrders,
    required TResult orElse(),
  }) {
    if (getOrdersByStatus != null) {
      return getOrdersByStatus(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_GetOrdersByStatus value) getOrdersByStatus,
    required TResult Function(_GetOrderById value) getOrderById,
    required TResult Function(_DeleteProductFromOrder value)
        deleteProductFromOrder,
    required TResult Function(_CartSendOrder value) cartSendOrder,
    required TResult Function(_GetWorkingOrders value) getWorkingOrders,
  }) {
    return getOrdersByStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_GetOrdersByStatus value)? getOrdersByStatus,
    TResult? Function(_GetOrderById value)? getOrderById,
    TResult? Function(_DeleteProductFromOrder value)? deleteProductFromOrder,
    TResult? Function(_CartSendOrder value)? cartSendOrder,
    TResult? Function(_GetWorkingOrders value)? getWorkingOrders,
  }) {
    return getOrdersByStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_GetOrdersByStatus value)? getOrdersByStatus,
    TResult Function(_GetOrderById value)? getOrderById,
    TResult Function(_DeleteProductFromOrder value)? deleteProductFromOrder,
    TResult Function(_CartSendOrder value)? cartSendOrder,
    TResult Function(_GetWorkingOrders value)? getWorkingOrders,
    required TResult orElse(),
  }) {
    if (getOrdersByStatus != null) {
      return getOrdersByStatus(this);
    }
    return orElse();
  }
}

abstract class _GetOrdersByStatus implements OrdersEvent {
  const factory _GetOrdersByStatus(final String status) =
      _$GetOrdersByStatusImpl;

  String get status;
  @JsonKey(ignore: true)
  _$$GetOrdersByStatusImplCopyWith<_$GetOrdersByStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetOrderByIdImplCopyWith<$Res> {
  factory _$$GetOrderByIdImplCopyWith(
          _$GetOrderByIdImpl value, $Res Function(_$GetOrderByIdImpl) then) =
      __$$GetOrderByIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class __$$GetOrderByIdImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$GetOrderByIdImpl>
    implements _$$GetOrderByIdImplCopyWith<$Res> {
  __$$GetOrderByIdImplCopyWithImpl(
      _$GetOrderByIdImpl _value, $Res Function(_$GetOrderByIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$GetOrderByIdImpl(
      null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetOrderByIdImpl implements _GetOrderById {
  const _$GetOrderByIdImpl(this.orderId);

  @override
  final String orderId;

  @override
  String toString() {
    return 'OrdersEvent.getOrderById(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrderByIdImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOrderByIdImplCopyWith<_$GetOrderByIdImpl> get copyWith =>
      __$$GetOrderByIdImplCopyWithImpl<_$GetOrderByIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function(String status) getOrdersByStatus,
    required TResult Function(String orderId) getOrderById,
    required TResult Function(String productId, String orderId)
        deleteProductFromOrder,
    required TResult Function(String orderId, String addressId,
            String deliveryId, String paymentId)
        cartSendOrder,
    required TResult Function() getWorkingOrders,
  }) {
    return getOrderById(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function(String status)? getOrdersByStatus,
    TResult? Function(String orderId)? getOrderById,
    TResult? Function(String productId, String orderId)? deleteProductFromOrder,
    TResult? Function(String orderId, String addressId, String deliveryId,
            String paymentId)?
        cartSendOrder,
    TResult? Function()? getWorkingOrders,
  }) {
    return getOrderById?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function(String status)? getOrdersByStatus,
    TResult Function(String orderId)? getOrderById,
    TResult Function(String productId, String orderId)? deleteProductFromOrder,
    TResult Function(String orderId, String addressId, String deliveryId,
            String paymentId)?
        cartSendOrder,
    TResult Function()? getWorkingOrders,
    required TResult orElse(),
  }) {
    if (getOrderById != null) {
      return getOrderById(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_GetOrdersByStatus value) getOrdersByStatus,
    required TResult Function(_GetOrderById value) getOrderById,
    required TResult Function(_DeleteProductFromOrder value)
        deleteProductFromOrder,
    required TResult Function(_CartSendOrder value) cartSendOrder,
    required TResult Function(_GetWorkingOrders value) getWorkingOrders,
  }) {
    return getOrderById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_GetOrdersByStatus value)? getOrdersByStatus,
    TResult? Function(_GetOrderById value)? getOrderById,
    TResult? Function(_DeleteProductFromOrder value)? deleteProductFromOrder,
    TResult? Function(_CartSendOrder value)? cartSendOrder,
    TResult? Function(_GetWorkingOrders value)? getWorkingOrders,
  }) {
    return getOrderById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_GetOrdersByStatus value)? getOrdersByStatus,
    TResult Function(_GetOrderById value)? getOrderById,
    TResult Function(_DeleteProductFromOrder value)? deleteProductFromOrder,
    TResult Function(_CartSendOrder value)? cartSendOrder,
    TResult Function(_GetWorkingOrders value)? getWorkingOrders,
    required TResult orElse(),
  }) {
    if (getOrderById != null) {
      return getOrderById(this);
    }
    return orElse();
  }
}

abstract class _GetOrderById implements OrdersEvent {
  const factory _GetOrderById(final String orderId) = _$GetOrderByIdImpl;

  String get orderId;
  @JsonKey(ignore: true)
  _$$GetOrderByIdImplCopyWith<_$GetOrderByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteProductFromOrderImplCopyWith<$Res> {
  factory _$$DeleteProductFromOrderImplCopyWith(
          _$DeleteProductFromOrderImpl value,
          $Res Function(_$DeleteProductFromOrderImpl) then) =
      __$$DeleteProductFromOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String productId, String orderId});
}

/// @nodoc
class __$$DeleteProductFromOrderImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$DeleteProductFromOrderImpl>
    implements _$$DeleteProductFromOrderImplCopyWith<$Res> {
  __$$DeleteProductFromOrderImplCopyWithImpl(
      _$DeleteProductFromOrderImpl _value,
      $Res Function(_$DeleteProductFromOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? orderId = null,
  }) {
    return _then(_$DeleteProductFromOrderImpl(
      null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteProductFromOrderImpl implements _DeleteProductFromOrder {
  const _$DeleteProductFromOrderImpl(this.productId, this.orderId);

  @override
  final String productId;
  @override
  final String orderId;

  @override
  String toString() {
    return 'OrdersEvent.deleteProductFromOrder(productId: $productId, orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProductFromOrderImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteProductFromOrderImplCopyWith<_$DeleteProductFromOrderImpl>
      get copyWith => __$$DeleteProductFromOrderImplCopyWithImpl<
          _$DeleteProductFromOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function(String status) getOrdersByStatus,
    required TResult Function(String orderId) getOrderById,
    required TResult Function(String productId, String orderId)
        deleteProductFromOrder,
    required TResult Function(String orderId, String addressId,
            String deliveryId, String paymentId)
        cartSendOrder,
    required TResult Function() getWorkingOrders,
  }) {
    return deleteProductFromOrder(productId, orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function(String status)? getOrdersByStatus,
    TResult? Function(String orderId)? getOrderById,
    TResult? Function(String productId, String orderId)? deleteProductFromOrder,
    TResult? Function(String orderId, String addressId, String deliveryId,
            String paymentId)?
        cartSendOrder,
    TResult? Function()? getWorkingOrders,
  }) {
    return deleteProductFromOrder?.call(productId, orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function(String status)? getOrdersByStatus,
    TResult Function(String orderId)? getOrderById,
    TResult Function(String productId, String orderId)? deleteProductFromOrder,
    TResult Function(String orderId, String addressId, String deliveryId,
            String paymentId)?
        cartSendOrder,
    TResult Function()? getWorkingOrders,
    required TResult orElse(),
  }) {
    if (deleteProductFromOrder != null) {
      return deleteProductFromOrder(productId, orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_GetOrdersByStatus value) getOrdersByStatus,
    required TResult Function(_GetOrderById value) getOrderById,
    required TResult Function(_DeleteProductFromOrder value)
        deleteProductFromOrder,
    required TResult Function(_CartSendOrder value) cartSendOrder,
    required TResult Function(_GetWorkingOrders value) getWorkingOrders,
  }) {
    return deleteProductFromOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_GetOrdersByStatus value)? getOrdersByStatus,
    TResult? Function(_GetOrderById value)? getOrderById,
    TResult? Function(_DeleteProductFromOrder value)? deleteProductFromOrder,
    TResult? Function(_CartSendOrder value)? cartSendOrder,
    TResult? Function(_GetWorkingOrders value)? getWorkingOrders,
  }) {
    return deleteProductFromOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_GetOrdersByStatus value)? getOrdersByStatus,
    TResult Function(_GetOrderById value)? getOrderById,
    TResult Function(_DeleteProductFromOrder value)? deleteProductFromOrder,
    TResult Function(_CartSendOrder value)? cartSendOrder,
    TResult Function(_GetWorkingOrders value)? getWorkingOrders,
    required TResult orElse(),
  }) {
    if (deleteProductFromOrder != null) {
      return deleteProductFromOrder(this);
    }
    return orElse();
  }
}

abstract class _DeleteProductFromOrder implements OrdersEvent {
  const factory _DeleteProductFromOrder(
          final String productId, final String orderId) =
      _$DeleteProductFromOrderImpl;

  String get productId;
  String get orderId;
  @JsonKey(ignore: true)
  _$$DeleteProductFromOrderImplCopyWith<_$DeleteProductFromOrderImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartSendOrderImplCopyWith<$Res> {
  factory _$$CartSendOrderImplCopyWith(
          _$CartSendOrderImpl value, $Res Function(_$CartSendOrderImpl) then) =
      __$$CartSendOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String orderId, String addressId, String deliveryId, String paymentId});
}

/// @nodoc
class __$$CartSendOrderImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$CartSendOrderImpl>
    implements _$$CartSendOrderImplCopyWith<$Res> {
  __$$CartSendOrderImplCopyWithImpl(
      _$CartSendOrderImpl _value, $Res Function(_$CartSendOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? addressId = null,
    Object? deliveryId = null,
    Object? paymentId = null,
  }) {
    return _then(_$CartSendOrderImpl(
      null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String,
      null == deliveryId
          ? _value.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as String,
      null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CartSendOrderImpl implements _CartSendOrder {
  const _$CartSendOrderImpl(
      this.orderId, this.addressId, this.deliveryId, this.paymentId);

  @override
  final String orderId;
  @override
  final String addressId;
  @override
  final String deliveryId;
  @override
  final String paymentId;

  @override
  String toString() {
    return 'OrdersEvent.cartSendOrder(orderId: $orderId, addressId: $addressId, deliveryId: $deliveryId, paymentId: $paymentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartSendOrderImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId) &&
            (identical(other.deliveryId, deliveryId) ||
                other.deliveryId == deliveryId) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, orderId, addressId, deliveryId, paymentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartSendOrderImplCopyWith<_$CartSendOrderImpl> get copyWith =>
      __$$CartSendOrderImplCopyWithImpl<_$CartSendOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function(String status) getOrdersByStatus,
    required TResult Function(String orderId) getOrderById,
    required TResult Function(String productId, String orderId)
        deleteProductFromOrder,
    required TResult Function(String orderId, String addressId,
            String deliveryId, String paymentId)
        cartSendOrder,
    required TResult Function() getWorkingOrders,
  }) {
    return cartSendOrder(orderId, addressId, deliveryId, paymentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function(String status)? getOrdersByStatus,
    TResult? Function(String orderId)? getOrderById,
    TResult? Function(String productId, String orderId)? deleteProductFromOrder,
    TResult? Function(String orderId, String addressId, String deliveryId,
            String paymentId)?
        cartSendOrder,
    TResult? Function()? getWorkingOrders,
  }) {
    return cartSendOrder?.call(orderId, addressId, deliveryId, paymentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function(String status)? getOrdersByStatus,
    TResult Function(String orderId)? getOrderById,
    TResult Function(String productId, String orderId)? deleteProductFromOrder,
    TResult Function(String orderId, String addressId, String deliveryId,
            String paymentId)?
        cartSendOrder,
    TResult Function()? getWorkingOrders,
    required TResult orElse(),
  }) {
    if (cartSendOrder != null) {
      return cartSendOrder(orderId, addressId, deliveryId, paymentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_GetOrdersByStatus value) getOrdersByStatus,
    required TResult Function(_GetOrderById value) getOrderById,
    required TResult Function(_DeleteProductFromOrder value)
        deleteProductFromOrder,
    required TResult Function(_CartSendOrder value) cartSendOrder,
    required TResult Function(_GetWorkingOrders value) getWorkingOrders,
  }) {
    return cartSendOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_GetOrdersByStatus value)? getOrdersByStatus,
    TResult? Function(_GetOrderById value)? getOrderById,
    TResult? Function(_DeleteProductFromOrder value)? deleteProductFromOrder,
    TResult? Function(_CartSendOrder value)? cartSendOrder,
    TResult? Function(_GetWorkingOrders value)? getWorkingOrders,
  }) {
    return cartSendOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_GetOrdersByStatus value)? getOrdersByStatus,
    TResult Function(_GetOrderById value)? getOrderById,
    TResult Function(_DeleteProductFromOrder value)? deleteProductFromOrder,
    TResult Function(_CartSendOrder value)? cartSendOrder,
    TResult Function(_GetWorkingOrders value)? getWorkingOrders,
    required TResult orElse(),
  }) {
    if (cartSendOrder != null) {
      return cartSendOrder(this);
    }
    return orElse();
  }
}

abstract class _CartSendOrder implements OrdersEvent {
  const factory _CartSendOrder(final String orderId, final String addressId,
      final String deliveryId, final String paymentId) = _$CartSendOrderImpl;

  String get orderId;
  String get addressId;
  String get deliveryId;
  String get paymentId;
  @JsonKey(ignore: true)
  _$$CartSendOrderImplCopyWith<_$CartSendOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetWorkingOrdersImplCopyWith<$Res> {
  factory _$$GetWorkingOrdersImplCopyWith(_$GetWorkingOrdersImpl value,
          $Res Function(_$GetWorkingOrdersImpl) then) =
      __$$GetWorkingOrdersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetWorkingOrdersImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$GetWorkingOrdersImpl>
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
    return 'OrdersEvent.getWorkingOrders()';
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
    required TResult Function() getOrders,
    required TResult Function(String status) getOrdersByStatus,
    required TResult Function(String orderId) getOrderById,
    required TResult Function(String productId, String orderId)
        deleteProductFromOrder,
    required TResult Function(String orderId, String addressId,
            String deliveryId, String paymentId)
        cartSendOrder,
    required TResult Function() getWorkingOrders,
  }) {
    return getWorkingOrders();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function(String status)? getOrdersByStatus,
    TResult? Function(String orderId)? getOrderById,
    TResult? Function(String productId, String orderId)? deleteProductFromOrder,
    TResult? Function(String orderId, String addressId, String deliveryId,
            String paymentId)?
        cartSendOrder,
    TResult? Function()? getWorkingOrders,
  }) {
    return getWorkingOrders?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function(String status)? getOrdersByStatus,
    TResult Function(String orderId)? getOrderById,
    TResult Function(String productId, String orderId)? deleteProductFromOrder,
    TResult Function(String orderId, String addressId, String deliveryId,
            String paymentId)?
        cartSendOrder,
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
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_GetOrdersByStatus value) getOrdersByStatus,
    required TResult Function(_GetOrderById value) getOrderById,
    required TResult Function(_DeleteProductFromOrder value)
        deleteProductFromOrder,
    required TResult Function(_CartSendOrder value) cartSendOrder,
    required TResult Function(_GetWorkingOrders value) getWorkingOrders,
  }) {
    return getWorkingOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_GetOrdersByStatus value)? getOrdersByStatus,
    TResult? Function(_GetOrderById value)? getOrderById,
    TResult? Function(_DeleteProductFromOrder value)? deleteProductFromOrder,
    TResult? Function(_CartSendOrder value)? cartSendOrder,
    TResult? Function(_GetWorkingOrders value)? getWorkingOrders,
  }) {
    return getWorkingOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_GetOrdersByStatus value)? getOrdersByStatus,
    TResult Function(_GetOrderById value)? getOrderById,
    TResult Function(_DeleteProductFromOrder value)? deleteProductFromOrder,
    TResult Function(_CartSendOrder value)? cartSendOrder,
    TResult Function(_GetWorkingOrders value)? getWorkingOrders,
    required TResult orElse(),
  }) {
    if (getWorkingOrders != null) {
      return getWorkingOrders(this);
    }
    return orElse();
  }
}

abstract class _GetWorkingOrders implements OrdersEvent {
  const factory _GetWorkingOrders() = _$GetWorkingOrdersImpl;
}

/// @nodoc
mixin _$OrdersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError error) failure,
    required TResult Function() loading,
    required TResult Function(OrdersResponse response) loaded,
    required TResult Function(OrdersResponse response) orderLoaded,
    required TResult Function(StandartResponse response) deleted,
    required TResult Function(StandartResponse response) orderSent,
    required TResult Function(OrdersResponse response) workingOrdersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioError error)? failure,
    TResult? Function()? loading,
    TResult? Function(OrdersResponse response)? loaded,
    TResult? Function(OrdersResponse response)? orderLoaded,
    TResult? Function(StandartResponse response)? deleted,
    TResult? Function(StandartResponse response)? orderSent,
    TResult? Function(OrdersResponse response)? workingOrdersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError error)? failure,
    TResult Function()? loading,
    TResult Function(OrdersResponse response)? loaded,
    TResult Function(OrdersResponse response)? orderLoaded,
    TResult Function(StandartResponse response)? deleted,
    TResult Function(StandartResponse response)? orderSent,
    TResult Function(OrdersResponse response)? workingOrdersLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_OrderLoaded value) orderLoaded,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_OrderSent value) orderSent,
    required TResult Function(_WorkingOrdersLoaded value) workingOrdersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_OrderLoaded value)? orderLoaded,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_OrderSent value)? orderSent,
    TResult? Function(_WorkingOrdersLoaded value)? workingOrdersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_OrderLoaded value)? orderLoaded,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_OrderSent value)? orderSent,
    TResult Function(_WorkingOrdersLoaded value)? workingOrdersLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersStateCopyWith<$Res> {
  factory $OrdersStateCopyWith(
          OrdersState value, $Res Function(OrdersState) then) =
      _$OrdersStateCopyWithImpl<$Res, OrdersState>;
}

/// @nodoc
class _$OrdersStateCopyWithImpl<$Res, $Val extends OrdersState>
    implements $OrdersStateCopyWith<$Res> {
  _$OrdersStateCopyWithImpl(this._value, this._then);

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
    extends _$OrdersStateCopyWithImpl<$Res, _$FailureImpl>
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
    return 'OrdersState.failure(error: $error)';
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
    required TResult Function(OrdersResponse response) loaded,
    required TResult Function(OrdersResponse response) orderLoaded,
    required TResult Function(StandartResponse response) deleted,
    required TResult Function(StandartResponse response) orderSent,
    required TResult Function(OrdersResponse response) workingOrdersLoaded,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioError error)? failure,
    TResult? Function()? loading,
    TResult? Function(OrdersResponse response)? loaded,
    TResult? Function(OrdersResponse response)? orderLoaded,
    TResult? Function(StandartResponse response)? deleted,
    TResult? Function(StandartResponse response)? orderSent,
    TResult? Function(OrdersResponse response)? workingOrdersLoaded,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError error)? failure,
    TResult Function()? loading,
    TResult Function(OrdersResponse response)? loaded,
    TResult Function(OrdersResponse response)? orderLoaded,
    TResult Function(StandartResponse response)? deleted,
    TResult Function(StandartResponse response)? orderSent,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_OrderLoaded value) orderLoaded,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_OrderSent value) orderSent,
    required TResult Function(_WorkingOrdersLoaded value) workingOrdersLoaded,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_OrderLoaded value)? orderLoaded,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_OrderSent value)? orderSent,
    TResult? Function(_WorkingOrdersLoaded value)? workingOrdersLoaded,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_OrderLoaded value)? orderLoaded,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_OrderSent value)? orderSent,
    TResult Function(_WorkingOrdersLoaded value)? workingOrdersLoaded,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements OrdersState {
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
    extends _$OrdersStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'OrdersState.loading()';
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
    required TResult Function(OrdersResponse response) loaded,
    required TResult Function(OrdersResponse response) orderLoaded,
    required TResult Function(StandartResponse response) deleted,
    required TResult Function(StandartResponse response) orderSent,
    required TResult Function(OrdersResponse response) workingOrdersLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioError error)? failure,
    TResult? Function()? loading,
    TResult? Function(OrdersResponse response)? loaded,
    TResult? Function(OrdersResponse response)? orderLoaded,
    TResult? Function(StandartResponse response)? deleted,
    TResult? Function(StandartResponse response)? orderSent,
    TResult? Function(OrdersResponse response)? workingOrdersLoaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError error)? failure,
    TResult Function()? loading,
    TResult Function(OrdersResponse response)? loaded,
    TResult Function(OrdersResponse response)? orderLoaded,
    TResult Function(StandartResponse response)? deleted,
    TResult Function(StandartResponse response)? orderSent,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_OrderLoaded value) orderLoaded,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_OrderSent value) orderSent,
    required TResult Function(_WorkingOrdersLoaded value) workingOrdersLoaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_OrderLoaded value)? orderLoaded,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_OrderSent value)? orderSent,
    TResult? Function(_WorkingOrdersLoaded value)? workingOrdersLoaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_OrderLoaded value)? orderLoaded,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_OrderSent value)? orderSent,
    TResult Function(_WorkingOrdersLoaded value)? workingOrdersLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements OrdersState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrdersResponse response});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$LoadedImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as OrdersResponse,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(this.response);

  @override
  final OrdersResponse response;

  @override
  String toString() {
    return 'OrdersState.loaded(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError error) failure,
    required TResult Function() loading,
    required TResult Function(OrdersResponse response) loaded,
    required TResult Function(OrdersResponse response) orderLoaded,
    required TResult Function(StandartResponse response) deleted,
    required TResult Function(StandartResponse response) orderSent,
    required TResult Function(OrdersResponse response) workingOrdersLoaded,
  }) {
    return loaded(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioError error)? failure,
    TResult? Function()? loading,
    TResult? Function(OrdersResponse response)? loaded,
    TResult? Function(OrdersResponse response)? orderLoaded,
    TResult? Function(StandartResponse response)? deleted,
    TResult? Function(StandartResponse response)? orderSent,
    TResult? Function(OrdersResponse response)? workingOrdersLoaded,
  }) {
    return loaded?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError error)? failure,
    TResult Function()? loading,
    TResult Function(OrdersResponse response)? loaded,
    TResult Function(OrdersResponse response)? orderLoaded,
    TResult Function(StandartResponse response)? deleted,
    TResult Function(StandartResponse response)? orderSent,
    TResult Function(OrdersResponse response)? workingOrdersLoaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_OrderLoaded value) orderLoaded,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_OrderSent value) orderSent,
    required TResult Function(_WorkingOrdersLoaded value) workingOrdersLoaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_OrderLoaded value)? orderLoaded,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_OrderSent value)? orderSent,
    TResult? Function(_WorkingOrdersLoaded value)? workingOrdersLoaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_OrderLoaded value)? orderLoaded,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_OrderSent value)? orderSent,
    TResult Function(_WorkingOrdersLoaded value)? workingOrdersLoaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements OrdersState {
  const factory _Loaded(final OrdersResponse response) = _$LoadedImpl;

  OrdersResponse get response;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderLoadedImplCopyWith<$Res> {
  factory _$$OrderLoadedImplCopyWith(
          _$OrderLoadedImpl value, $Res Function(_$OrderLoadedImpl) then) =
      __$$OrderLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrdersResponse response});
}

/// @nodoc
class __$$OrderLoadedImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$OrderLoadedImpl>
    implements _$$OrderLoadedImplCopyWith<$Res> {
  __$$OrderLoadedImplCopyWithImpl(
      _$OrderLoadedImpl _value, $Res Function(_$OrderLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$OrderLoadedImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as OrdersResponse,
    ));
  }
}

/// @nodoc

class _$OrderLoadedImpl implements _OrderLoaded {
  const _$OrderLoadedImpl(this.response);

  @override
  final OrdersResponse response;

  @override
  String toString() {
    return 'OrdersState.orderLoaded(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderLoadedImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderLoadedImplCopyWith<_$OrderLoadedImpl> get copyWith =>
      __$$OrderLoadedImplCopyWithImpl<_$OrderLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError error) failure,
    required TResult Function() loading,
    required TResult Function(OrdersResponse response) loaded,
    required TResult Function(OrdersResponse response) orderLoaded,
    required TResult Function(StandartResponse response) deleted,
    required TResult Function(StandartResponse response) orderSent,
    required TResult Function(OrdersResponse response) workingOrdersLoaded,
  }) {
    return orderLoaded(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioError error)? failure,
    TResult? Function()? loading,
    TResult? Function(OrdersResponse response)? loaded,
    TResult? Function(OrdersResponse response)? orderLoaded,
    TResult? Function(StandartResponse response)? deleted,
    TResult? Function(StandartResponse response)? orderSent,
    TResult? Function(OrdersResponse response)? workingOrdersLoaded,
  }) {
    return orderLoaded?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError error)? failure,
    TResult Function()? loading,
    TResult Function(OrdersResponse response)? loaded,
    TResult Function(OrdersResponse response)? orderLoaded,
    TResult Function(StandartResponse response)? deleted,
    TResult Function(StandartResponse response)? orderSent,
    TResult Function(OrdersResponse response)? workingOrdersLoaded,
    required TResult orElse(),
  }) {
    if (orderLoaded != null) {
      return orderLoaded(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_OrderLoaded value) orderLoaded,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_OrderSent value) orderSent,
    required TResult Function(_WorkingOrdersLoaded value) workingOrdersLoaded,
  }) {
    return orderLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_OrderLoaded value)? orderLoaded,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_OrderSent value)? orderSent,
    TResult? Function(_WorkingOrdersLoaded value)? workingOrdersLoaded,
  }) {
    return orderLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_OrderLoaded value)? orderLoaded,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_OrderSent value)? orderSent,
    TResult Function(_WorkingOrdersLoaded value)? workingOrdersLoaded,
    required TResult orElse(),
  }) {
    if (orderLoaded != null) {
      return orderLoaded(this);
    }
    return orElse();
  }
}

abstract class _OrderLoaded implements OrdersState {
  const factory _OrderLoaded(final OrdersResponse response) = _$OrderLoadedImpl;

  OrdersResponse get response;
  @JsonKey(ignore: true)
  _$$OrderLoadedImplCopyWith<_$OrderLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletedImplCopyWith<$Res> {
  factory _$$DeletedImplCopyWith(
          _$DeletedImpl value, $Res Function(_$DeletedImpl) then) =
      __$$DeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StandartResponse response});
}

/// @nodoc
class __$$DeletedImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$DeletedImpl>
    implements _$$DeletedImplCopyWith<$Res> {
  __$$DeletedImplCopyWithImpl(
      _$DeletedImpl _value, $Res Function(_$DeletedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$DeletedImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as StandartResponse,
    ));
  }
}

/// @nodoc

class _$DeletedImpl implements _Deleted {
  const _$DeletedImpl(this.response);

  @override
  final StandartResponse response;

  @override
  String toString() {
    return 'OrdersState.deleted(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletedImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletedImplCopyWith<_$DeletedImpl> get copyWith =>
      __$$DeletedImplCopyWithImpl<_$DeletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError error) failure,
    required TResult Function() loading,
    required TResult Function(OrdersResponse response) loaded,
    required TResult Function(OrdersResponse response) orderLoaded,
    required TResult Function(StandartResponse response) deleted,
    required TResult Function(StandartResponse response) orderSent,
    required TResult Function(OrdersResponse response) workingOrdersLoaded,
  }) {
    return deleted(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioError error)? failure,
    TResult? Function()? loading,
    TResult? Function(OrdersResponse response)? loaded,
    TResult? Function(OrdersResponse response)? orderLoaded,
    TResult? Function(StandartResponse response)? deleted,
    TResult? Function(StandartResponse response)? orderSent,
    TResult? Function(OrdersResponse response)? workingOrdersLoaded,
  }) {
    return deleted?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError error)? failure,
    TResult Function()? loading,
    TResult Function(OrdersResponse response)? loaded,
    TResult Function(OrdersResponse response)? orderLoaded,
    TResult Function(StandartResponse response)? deleted,
    TResult Function(StandartResponse response)? orderSent,
    TResult Function(OrdersResponse response)? workingOrdersLoaded,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_OrderLoaded value) orderLoaded,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_OrderSent value) orderSent,
    required TResult Function(_WorkingOrdersLoaded value) workingOrdersLoaded,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_OrderLoaded value)? orderLoaded,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_OrderSent value)? orderSent,
    TResult? Function(_WorkingOrdersLoaded value)? workingOrdersLoaded,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_OrderLoaded value)? orderLoaded,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_OrderSent value)? orderSent,
    TResult Function(_WorkingOrdersLoaded value)? workingOrdersLoaded,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements OrdersState {
  const factory _Deleted(final StandartResponse response) = _$DeletedImpl;

  StandartResponse get response;
  @JsonKey(ignore: true)
  _$$DeletedImplCopyWith<_$DeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderSentImplCopyWith<$Res> {
  factory _$$OrderSentImplCopyWith(
          _$OrderSentImpl value, $Res Function(_$OrderSentImpl) then) =
      __$$OrderSentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StandartResponse response});
}

/// @nodoc
class __$$OrderSentImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$OrderSentImpl>
    implements _$$OrderSentImplCopyWith<$Res> {
  __$$OrderSentImplCopyWithImpl(
      _$OrderSentImpl _value, $Res Function(_$OrderSentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$OrderSentImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as StandartResponse,
    ));
  }
}

/// @nodoc

class _$OrderSentImpl implements _OrderSent {
  const _$OrderSentImpl(this.response);

  @override
  final StandartResponse response;

  @override
  String toString() {
    return 'OrdersState.orderSent(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderSentImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderSentImplCopyWith<_$OrderSentImpl> get copyWith =>
      __$$OrderSentImplCopyWithImpl<_$OrderSentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError error) failure,
    required TResult Function() loading,
    required TResult Function(OrdersResponse response) loaded,
    required TResult Function(OrdersResponse response) orderLoaded,
    required TResult Function(StandartResponse response) deleted,
    required TResult Function(StandartResponse response) orderSent,
    required TResult Function(OrdersResponse response) workingOrdersLoaded,
  }) {
    return orderSent(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioError error)? failure,
    TResult? Function()? loading,
    TResult? Function(OrdersResponse response)? loaded,
    TResult? Function(OrdersResponse response)? orderLoaded,
    TResult? Function(StandartResponse response)? deleted,
    TResult? Function(StandartResponse response)? orderSent,
    TResult? Function(OrdersResponse response)? workingOrdersLoaded,
  }) {
    return orderSent?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError error)? failure,
    TResult Function()? loading,
    TResult Function(OrdersResponse response)? loaded,
    TResult Function(OrdersResponse response)? orderLoaded,
    TResult Function(StandartResponse response)? deleted,
    TResult Function(StandartResponse response)? orderSent,
    TResult Function(OrdersResponse response)? workingOrdersLoaded,
    required TResult orElse(),
  }) {
    if (orderSent != null) {
      return orderSent(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_OrderLoaded value) orderLoaded,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_OrderSent value) orderSent,
    required TResult Function(_WorkingOrdersLoaded value) workingOrdersLoaded,
  }) {
    return orderSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_OrderLoaded value)? orderLoaded,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_OrderSent value)? orderSent,
    TResult? Function(_WorkingOrdersLoaded value)? workingOrdersLoaded,
  }) {
    return orderSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_OrderLoaded value)? orderLoaded,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_OrderSent value)? orderSent,
    TResult Function(_WorkingOrdersLoaded value)? workingOrdersLoaded,
    required TResult orElse(),
  }) {
    if (orderSent != null) {
      return orderSent(this);
    }
    return orElse();
  }
}

abstract class _OrderSent implements OrdersState {
  const factory _OrderSent(final StandartResponse response) = _$OrderSentImpl;

  StandartResponse get response;
  @JsonKey(ignore: true)
  _$$OrderSentImplCopyWith<_$OrderSentImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$OrdersStateCopyWithImpl<$Res, _$WorkingOrdersLoadedImpl>
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
    return 'OrdersState.workingOrdersLoaded(response: $response)';
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
    required TResult Function(OrdersResponse response) loaded,
    required TResult Function(OrdersResponse response) orderLoaded,
    required TResult Function(StandartResponse response) deleted,
    required TResult Function(StandartResponse response) orderSent,
    required TResult Function(OrdersResponse response) workingOrdersLoaded,
  }) {
    return workingOrdersLoaded(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioError error)? failure,
    TResult? Function()? loading,
    TResult? Function(OrdersResponse response)? loaded,
    TResult? Function(OrdersResponse response)? orderLoaded,
    TResult? Function(StandartResponse response)? deleted,
    TResult? Function(StandartResponse response)? orderSent,
    TResult? Function(OrdersResponse response)? workingOrdersLoaded,
  }) {
    return workingOrdersLoaded?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError error)? failure,
    TResult Function()? loading,
    TResult Function(OrdersResponse response)? loaded,
    TResult Function(OrdersResponse response)? orderLoaded,
    TResult Function(StandartResponse response)? deleted,
    TResult Function(StandartResponse response)? orderSent,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_OrderLoaded value) orderLoaded,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_OrderSent value) orderSent,
    required TResult Function(_WorkingOrdersLoaded value) workingOrdersLoaded,
  }) {
    return workingOrdersLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_OrderLoaded value)? orderLoaded,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_OrderSent value)? orderSent,
    TResult? Function(_WorkingOrdersLoaded value)? workingOrdersLoaded,
  }) {
    return workingOrdersLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_OrderLoaded value)? orderLoaded,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_OrderSent value)? orderSent,
    TResult Function(_WorkingOrdersLoaded value)? workingOrdersLoaded,
    required TResult orElse(),
  }) {
    if (workingOrdersLoaded != null) {
      return workingOrdersLoaded(this);
    }
    return orElse();
  }
}

abstract class _WorkingOrdersLoaded implements OrdersState {
  const factory _WorkingOrdersLoaded(final OrdersResponse response) =
      _$WorkingOrdersLoadedImpl;

  OrdersResponse get response;
  @JsonKey(ignore: true)
  _$$WorkingOrdersLoadedImplCopyWith<_$WorkingOrdersLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
