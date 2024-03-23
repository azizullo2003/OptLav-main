// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppTheme {
  AppColorTheme get colorTheme => throw _privateConstructorUsedError;
  AppTextTheme get textTheme => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppThemeCopyWith<AppTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppThemeCopyWith<$Res> {
  factory $AppThemeCopyWith(AppTheme value, $Res Function(AppTheme) then) =
      _$AppThemeCopyWithImpl<$Res, AppTheme>;
  @useResult
  $Res call({AppColorTheme colorTheme, AppTextTheme textTheme});
}

/// @nodoc
class _$AppThemeCopyWithImpl<$Res, $Val extends AppTheme>
    implements $AppThemeCopyWith<$Res> {
  _$AppThemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorTheme = null,
    Object? textTheme = null,
  }) {
    return _then(_value.copyWith(
      colorTheme: null == colorTheme
          ? _value.colorTheme
          : colorTheme // ignore: cast_nullable_to_non_nullable
              as AppColorTheme,
      textTheme: null == textTheme
          ? _value.textTheme
          : textTheme // ignore: cast_nullable_to_non_nullable
              as AppTextTheme,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppThemeImplCopyWith<$Res>
    implements $AppThemeCopyWith<$Res> {
  factory _$$AppThemeImplCopyWith(
          _$AppThemeImpl value, $Res Function(_$AppThemeImpl) then) =
      __$$AppThemeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppColorTheme colorTheme, AppTextTheme textTheme});
}

/// @nodoc
class __$$AppThemeImplCopyWithImpl<$Res>
    extends _$AppThemeCopyWithImpl<$Res, _$AppThemeImpl>
    implements _$$AppThemeImplCopyWith<$Res> {
  __$$AppThemeImplCopyWithImpl(
      _$AppThemeImpl _value, $Res Function(_$AppThemeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorTheme = null,
    Object? textTheme = null,
  }) {
    return _then(_$AppThemeImpl(
      colorTheme: null == colorTheme
          ? _value.colorTheme
          : colorTheme // ignore: cast_nullable_to_non_nullable
              as AppColorTheme,
      textTheme: null == textTheme
          ? _value.textTheme
          : textTheme // ignore: cast_nullable_to_non_nullable
              as AppTextTheme,
    ));
  }
}

/// @nodoc

class _$AppThemeImpl extends _AppTheme {
  _$AppThemeImpl({required this.colorTheme, required this.textTheme})
      : super._();

  @override
  final AppColorTheme colorTheme;
  @override
  final AppTextTheme textTheme;

  @override
  String toString() {
    return 'AppTheme(colorTheme: $colorTheme, textTheme: $textTheme)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppThemeImpl &&
            (identical(other.colorTheme, colorTheme) ||
                other.colorTheme == colorTheme) &&
            (identical(other.textTheme, textTheme) ||
                other.textTheme == textTheme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, colorTheme, textTheme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppThemeImplCopyWith<_$AppThemeImpl> get copyWith =>
      __$$AppThemeImplCopyWithImpl<_$AppThemeImpl>(this, _$identity);
}

abstract class _AppTheme extends AppTheme {
  factory _AppTheme(
      {required final AppColorTheme colorTheme,
      required final AppTextTheme textTheme}) = _$AppThemeImpl;
  _AppTheme._() : super._();

  @override
  AppColorTheme get colorTheme;
  @override
  AppTextTheme get textTheme;
  @override
  @JsonKey(ignore: true)
  _$$AppThemeImplCopyWith<_$AppThemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
