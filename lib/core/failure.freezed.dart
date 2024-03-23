// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectionFailure,
    required TResult Function(int statusCode) serverFailure,
    required TResult Function(T info) customFailure,
    required TResult Function(String? message) unknownFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connectionFailure,
    TResult? Function(int statusCode)? serverFailure,
    TResult? Function(T info)? customFailure,
    TResult? Function(String? message)? unknownFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectionFailure,
    TResult Function(int statusCode)? serverFailure,
    TResult Function(T info)? customFailure,
    TResult Function(String? message)? unknownFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionFailure<T> value) connectionFailure,
    required TResult Function(ServerFailure<T> value) serverFailure,
    required TResult Function(CustomFailure<T> value) customFailure,
    required TResult Function(UnknownFailure<T> value) unknownFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionFailure<T> value)? connectionFailure,
    TResult? Function(ServerFailure<T> value)? serverFailure,
    TResult? Function(CustomFailure<T> value)? customFailure,
    TResult? Function(UnknownFailure<T> value)? unknownFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionFailure<T> value)? connectionFailure,
    TResult Function(ServerFailure<T> value)? serverFailure,
    TResult Function(CustomFailure<T> value)? customFailure,
    TResult Function(UnknownFailure<T> value)? unknownFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<T, $Res> {
  factory $FailureCopyWith(Failure<T> value, $Res Function(Failure<T>) then) =
      _$FailureCopyWithImpl<T, $Res, Failure<T>>;
}

/// @nodoc
class _$FailureCopyWithImpl<T, $Res, $Val extends Failure<T>>
    implements $FailureCopyWith<T, $Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ConnectionFailureImplCopyWith<T, $Res> {
  factory _$$ConnectionFailureImplCopyWith(_$ConnectionFailureImpl<T> value,
          $Res Function(_$ConnectionFailureImpl<T>) then) =
      __$$ConnectionFailureImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ConnectionFailureImplCopyWithImpl<T, $Res>
    extends _$FailureCopyWithImpl<T, $Res, _$ConnectionFailureImpl<T>>
    implements _$$ConnectionFailureImplCopyWith<T, $Res> {
  __$$ConnectionFailureImplCopyWithImpl(_$ConnectionFailureImpl<T> _value,
      $Res Function(_$ConnectionFailureImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConnectionFailureImpl<T> implements ConnectionFailure<T> {
  const _$ConnectionFailureImpl();

  @override
  String toString() {
    return 'Failure<$T>.connectionFailure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionFailureImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectionFailure,
    required TResult Function(int statusCode) serverFailure,
    required TResult Function(T info) customFailure,
    required TResult Function(String? message) unknownFailure,
  }) {
    return connectionFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connectionFailure,
    TResult? Function(int statusCode)? serverFailure,
    TResult? Function(T info)? customFailure,
    TResult? Function(String? message)? unknownFailure,
  }) {
    return connectionFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectionFailure,
    TResult Function(int statusCode)? serverFailure,
    TResult Function(T info)? customFailure,
    TResult Function(String? message)? unknownFailure,
    required TResult orElse(),
  }) {
    if (connectionFailure != null) {
      return connectionFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionFailure<T> value) connectionFailure,
    required TResult Function(ServerFailure<T> value) serverFailure,
    required TResult Function(CustomFailure<T> value) customFailure,
    required TResult Function(UnknownFailure<T> value) unknownFailure,
  }) {
    return connectionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionFailure<T> value)? connectionFailure,
    TResult? Function(ServerFailure<T> value)? serverFailure,
    TResult? Function(CustomFailure<T> value)? customFailure,
    TResult? Function(UnknownFailure<T> value)? unknownFailure,
  }) {
    return connectionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionFailure<T> value)? connectionFailure,
    TResult Function(ServerFailure<T> value)? serverFailure,
    TResult Function(CustomFailure<T> value)? customFailure,
    TResult Function(UnknownFailure<T> value)? unknownFailure,
    required TResult orElse(),
  }) {
    if (connectionFailure != null) {
      return connectionFailure(this);
    }
    return orElse();
  }
}

abstract class ConnectionFailure<T> implements Failure<T> {
  const factory ConnectionFailure() = _$ConnectionFailureImpl<T>;
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<T, $Res> {
  factory _$$ServerFailureImplCopyWith(_$ServerFailureImpl<T> value,
          $Res Function(_$ServerFailureImpl<T>) then) =
      __$$ServerFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({int statusCode});
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<T, $Res>
    extends _$FailureCopyWithImpl<T, $Res, _$ServerFailureImpl<T>>
    implements _$$ServerFailureImplCopyWith<T, $Res> {
  __$$ServerFailureImplCopyWithImpl(_$ServerFailureImpl<T> _value,
      $Res Function(_$ServerFailureImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
  }) {
    return _then(_$ServerFailureImpl<T>(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ServerFailureImpl<T> implements ServerFailure<T> {
  const _$ServerFailureImpl({required this.statusCode});

  @override
  final int statusCode;

  @override
  String toString() {
    return 'Failure<$T>.serverFailure(statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailureImpl<T> &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureImplCopyWith<T, _$ServerFailureImpl<T>> get copyWith =>
      __$$ServerFailureImplCopyWithImpl<T, _$ServerFailureImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectionFailure,
    required TResult Function(int statusCode) serverFailure,
    required TResult Function(T info) customFailure,
    required TResult Function(String? message) unknownFailure,
  }) {
    return serverFailure(statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connectionFailure,
    TResult? Function(int statusCode)? serverFailure,
    TResult? Function(T info)? customFailure,
    TResult? Function(String? message)? unknownFailure,
  }) {
    return serverFailure?.call(statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectionFailure,
    TResult Function(int statusCode)? serverFailure,
    TResult Function(T info)? customFailure,
    TResult Function(String? message)? unknownFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionFailure<T> value) connectionFailure,
    required TResult Function(ServerFailure<T> value) serverFailure,
    required TResult Function(CustomFailure<T> value) customFailure,
    required TResult Function(UnknownFailure<T> value) unknownFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionFailure<T> value)? connectionFailure,
    TResult? Function(ServerFailure<T> value)? serverFailure,
    TResult? Function(CustomFailure<T> value)? customFailure,
    TResult? Function(UnknownFailure<T> value)? unknownFailure,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionFailure<T> value)? connectionFailure,
    TResult Function(ServerFailure<T> value)? serverFailure,
    TResult Function(CustomFailure<T> value)? customFailure,
    TResult Function(UnknownFailure<T> value)? unknownFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure<T> implements Failure<T> {
  const factory ServerFailure({required final int statusCode}) =
      _$ServerFailureImpl<T>;

  int get statusCode;
  @JsonKey(ignore: true)
  _$$ServerFailureImplCopyWith<T, _$ServerFailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomFailureImplCopyWith<T, $Res> {
  factory _$$CustomFailureImplCopyWith(_$CustomFailureImpl<T> value,
          $Res Function(_$CustomFailureImpl<T>) then) =
      __$$CustomFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T info});
}

/// @nodoc
class __$$CustomFailureImplCopyWithImpl<T, $Res>
    extends _$FailureCopyWithImpl<T, $Res, _$CustomFailureImpl<T>>
    implements _$$CustomFailureImplCopyWith<T, $Res> {
  __$$CustomFailureImplCopyWithImpl(_$CustomFailureImpl<T> _value,
      $Res Function(_$CustomFailureImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(_$CustomFailureImpl<T>(
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$CustomFailureImpl<T> implements CustomFailure<T> {
  const _$CustomFailureImpl({required this.info});

  @override
  final T info;

  @override
  String toString() {
    return 'Failure<$T>.customFailure(info: $info)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomFailureImpl<T> &&
            const DeepCollectionEquality().equals(other.info, info));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(info));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomFailureImplCopyWith<T, _$CustomFailureImpl<T>> get copyWith =>
      __$$CustomFailureImplCopyWithImpl<T, _$CustomFailureImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectionFailure,
    required TResult Function(int statusCode) serverFailure,
    required TResult Function(T info) customFailure,
    required TResult Function(String? message) unknownFailure,
  }) {
    return customFailure(info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connectionFailure,
    TResult? Function(int statusCode)? serverFailure,
    TResult? Function(T info)? customFailure,
    TResult? Function(String? message)? unknownFailure,
  }) {
    return customFailure?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectionFailure,
    TResult Function(int statusCode)? serverFailure,
    TResult Function(T info)? customFailure,
    TResult Function(String? message)? unknownFailure,
    required TResult orElse(),
  }) {
    if (customFailure != null) {
      return customFailure(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionFailure<T> value) connectionFailure,
    required TResult Function(ServerFailure<T> value) serverFailure,
    required TResult Function(CustomFailure<T> value) customFailure,
    required TResult Function(UnknownFailure<T> value) unknownFailure,
  }) {
    return customFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionFailure<T> value)? connectionFailure,
    TResult? Function(ServerFailure<T> value)? serverFailure,
    TResult? Function(CustomFailure<T> value)? customFailure,
    TResult? Function(UnknownFailure<T> value)? unknownFailure,
  }) {
    return customFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionFailure<T> value)? connectionFailure,
    TResult Function(ServerFailure<T> value)? serverFailure,
    TResult Function(CustomFailure<T> value)? customFailure,
    TResult Function(UnknownFailure<T> value)? unknownFailure,
    required TResult orElse(),
  }) {
    if (customFailure != null) {
      return customFailure(this);
    }
    return orElse();
  }
}

abstract class CustomFailure<T> implements Failure<T> {
  const factory CustomFailure({required final T info}) = _$CustomFailureImpl<T>;

  T get info;
  @JsonKey(ignore: true)
  _$$CustomFailureImplCopyWith<T, _$CustomFailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownFailureImplCopyWith<T, $Res> {
  factory _$$UnknownFailureImplCopyWith(_$UnknownFailureImpl<T> value,
          $Res Function(_$UnknownFailureImpl<T>) then) =
      __$$UnknownFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$UnknownFailureImplCopyWithImpl<T, $Res>
    extends _$FailureCopyWithImpl<T, $Res, _$UnknownFailureImpl<T>>
    implements _$$UnknownFailureImplCopyWith<T, $Res> {
  __$$UnknownFailureImplCopyWithImpl(_$UnknownFailureImpl<T> _value,
      $Res Function(_$UnknownFailureImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UnknownFailureImpl<T>(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UnknownFailureImpl<T> implements UnknownFailure<T> {
  const _$UnknownFailureImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure<$T>.unknownFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownFailureImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownFailureImplCopyWith<T, _$UnknownFailureImpl<T>> get copyWith =>
      __$$UnknownFailureImplCopyWithImpl<T, _$UnknownFailureImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectionFailure,
    required TResult Function(int statusCode) serverFailure,
    required TResult Function(T info) customFailure,
    required TResult Function(String? message) unknownFailure,
  }) {
    return unknownFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connectionFailure,
    TResult? Function(int statusCode)? serverFailure,
    TResult? Function(T info)? customFailure,
    TResult? Function(String? message)? unknownFailure,
  }) {
    return unknownFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectionFailure,
    TResult Function(int statusCode)? serverFailure,
    TResult Function(T info)? customFailure,
    TResult Function(String? message)? unknownFailure,
    required TResult orElse(),
  }) {
    if (unknownFailure != null) {
      return unknownFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionFailure<T> value) connectionFailure,
    required TResult Function(ServerFailure<T> value) serverFailure,
    required TResult Function(CustomFailure<T> value) customFailure,
    required TResult Function(UnknownFailure<T> value) unknownFailure,
  }) {
    return unknownFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionFailure<T> value)? connectionFailure,
    TResult? Function(ServerFailure<T> value)? serverFailure,
    TResult? Function(CustomFailure<T> value)? customFailure,
    TResult? Function(UnknownFailure<T> value)? unknownFailure,
  }) {
    return unknownFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionFailure<T> value)? connectionFailure,
    TResult Function(ServerFailure<T> value)? serverFailure,
    TResult Function(CustomFailure<T> value)? customFailure,
    TResult Function(UnknownFailure<T> value)? unknownFailure,
    required TResult orElse(),
  }) {
    if (unknownFailure != null) {
      return unknownFailure(this);
    }
    return orElse();
  }
}

abstract class UnknownFailure<T> implements Failure<T> {
  const factory UnknownFailure([final String? message]) =
      _$UnknownFailureImpl<T>;

  String? get message;
  @JsonKey(ignore: true)
  _$$UnknownFailureImplCopyWith<T, _$UnknownFailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
