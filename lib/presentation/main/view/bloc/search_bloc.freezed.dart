// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCategories,
    required TResult Function(String categoryId) getAllSubcategories,
    required TResult Function() getAllCompanies,
    required TResult Function(String companyId) getCompanyCatalog,
    required TResult Function(String companySearch) searchCompany,
    required TResult Function(String firmId) searchCompanyById,
    required TResult Function(String categoryId, String companyId)
        getCompanyProductsByCategory,
    required TResult Function(String categoryId) getProductsByCategory,
    required TResult Function(String request) searchProducts,
    required TResult Function(String request, String companyId)
        searchProductsByCompany,
    required TResult Function(String request, String categoryId)
        searchProductsByCategory,
    required TResult Function(
            String request, String companyId, String categoryId)
        searchProductsByCompanyAndCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCategories,
    TResult? Function(String categoryId)? getAllSubcategories,
    TResult? Function()? getAllCompanies,
    TResult? Function(String companyId)? getCompanyCatalog,
    TResult? Function(String companySearch)? searchCompany,
    TResult? Function(String firmId)? searchCompanyById,
    TResult? Function(String categoryId, String companyId)?
        getCompanyProductsByCategory,
    TResult? Function(String categoryId)? getProductsByCategory,
    TResult? Function(String request)? searchProducts,
    TResult? Function(String request, String companyId)?
        searchProductsByCompany,
    TResult? Function(String request, String categoryId)?
        searchProductsByCategory,
    TResult? Function(String request, String companyId, String categoryId)?
        searchProductsByCompanyAndCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCategories,
    TResult Function(String categoryId)? getAllSubcategories,
    TResult Function()? getAllCompanies,
    TResult Function(String companyId)? getCompanyCatalog,
    TResult Function(String companySearch)? searchCompany,
    TResult Function(String firmId)? searchCompanyById,
    TResult Function(String categoryId, String companyId)?
        getCompanyProductsByCategory,
    TResult Function(String categoryId)? getProductsByCategory,
    TResult Function(String request)? searchProducts,
    TResult Function(String request, String companyId)? searchProductsByCompany,
    TResult Function(String request, String categoryId)?
        searchProductsByCategory,
    TResult Function(String request, String companyId, String categoryId)?
        searchProductsByCompanyAndCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCategories value) getAllCategories,
    required TResult Function(_GetAllSubcategories value) getAllSubcategories,
    required TResult Function(_GetAllCompanies value) getAllCompanies,
    required TResult Function(_GetCompanyCatalog value) getCompanyCatalog,
    required TResult Function(_SearchCompany value) searchCompany,
    required TResult Function(_SearchCompanyById value) searchCompanyById,
    required TResult Function(_GetCompanyProductsByCategory value)
        getCompanyProductsByCategory,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_SearchProducts value) searchProducts,
    required TResult Function(_SearchProductsByCompany value)
        searchProductsByCompany,
    required TResult Function(_SearchProductsByCategory value)
        searchProductsByCategory,
    required TResult Function(_SearchProductsByCompanyAndCategory value)
        searchProductsByCompanyAndCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCategories value)? getAllCategories,
    TResult? Function(_GetAllSubcategories value)? getAllSubcategories,
    TResult? Function(_GetAllCompanies value)? getAllCompanies,
    TResult? Function(_GetCompanyCatalog value)? getCompanyCatalog,
    TResult? Function(_SearchCompany value)? searchCompany,
    TResult? Function(_SearchCompanyById value)? searchCompanyById,
    TResult? Function(_GetCompanyProductsByCategory value)?
        getCompanyProductsByCategory,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_SearchProducts value)? searchProducts,
    TResult? Function(_SearchProductsByCompany value)? searchProductsByCompany,
    TResult? Function(_SearchProductsByCategory value)?
        searchProductsByCategory,
    TResult? Function(_SearchProductsByCompanyAndCategory value)?
        searchProductsByCompanyAndCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCategories value)? getAllCategories,
    TResult Function(_GetAllSubcategories value)? getAllSubcategories,
    TResult Function(_GetAllCompanies value)? getAllCompanies,
    TResult Function(_GetCompanyCatalog value)? getCompanyCatalog,
    TResult Function(_SearchCompany value)? searchCompany,
    TResult Function(_SearchCompanyById value)? searchCompanyById,
    TResult Function(_GetCompanyProductsByCategory value)?
        getCompanyProductsByCategory,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_SearchProducts value)? searchProducts,
    TResult Function(_SearchProductsByCompany value)? searchProductsByCompany,
    TResult Function(_SearchProductsByCategory value)? searchProductsByCategory,
    TResult Function(_SearchProductsByCompanyAndCategory value)?
        searchProductsByCompanyAndCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllCategoriesImplCopyWith<$Res> {
  factory _$$GetAllCategoriesImplCopyWith(_$GetAllCategoriesImpl value,
          $Res Function(_$GetAllCategoriesImpl) then) =
      __$$GetAllCategoriesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllCategoriesImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$GetAllCategoriesImpl>
    implements _$$GetAllCategoriesImplCopyWith<$Res> {
  __$$GetAllCategoriesImplCopyWithImpl(_$GetAllCategoriesImpl _value,
      $Res Function(_$GetAllCategoriesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllCategoriesImpl implements _GetAllCategories {
  const _$GetAllCategoriesImpl();

  @override
  String toString() {
    return 'SearchEvent.getAllCategories()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllCategoriesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCategories,
    required TResult Function(String categoryId) getAllSubcategories,
    required TResult Function() getAllCompanies,
    required TResult Function(String companyId) getCompanyCatalog,
    required TResult Function(String companySearch) searchCompany,
    required TResult Function(String firmId) searchCompanyById,
    required TResult Function(String categoryId, String companyId)
        getCompanyProductsByCategory,
    required TResult Function(String categoryId) getProductsByCategory,
    required TResult Function(String request) searchProducts,
    required TResult Function(String request, String companyId)
        searchProductsByCompany,
    required TResult Function(String request, String categoryId)
        searchProductsByCategory,
    required TResult Function(
            String request, String companyId, String categoryId)
        searchProductsByCompanyAndCategory,
  }) {
    return getAllCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCategories,
    TResult? Function(String categoryId)? getAllSubcategories,
    TResult? Function()? getAllCompanies,
    TResult? Function(String companyId)? getCompanyCatalog,
    TResult? Function(String companySearch)? searchCompany,
    TResult? Function(String firmId)? searchCompanyById,
    TResult? Function(String categoryId, String companyId)?
        getCompanyProductsByCategory,
    TResult? Function(String categoryId)? getProductsByCategory,
    TResult? Function(String request)? searchProducts,
    TResult? Function(String request, String companyId)?
        searchProductsByCompany,
    TResult? Function(String request, String categoryId)?
        searchProductsByCategory,
    TResult? Function(String request, String companyId, String categoryId)?
        searchProductsByCompanyAndCategory,
  }) {
    return getAllCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCategories,
    TResult Function(String categoryId)? getAllSubcategories,
    TResult Function()? getAllCompanies,
    TResult Function(String companyId)? getCompanyCatalog,
    TResult Function(String companySearch)? searchCompany,
    TResult Function(String firmId)? searchCompanyById,
    TResult Function(String categoryId, String companyId)?
        getCompanyProductsByCategory,
    TResult Function(String categoryId)? getProductsByCategory,
    TResult Function(String request)? searchProducts,
    TResult Function(String request, String companyId)? searchProductsByCompany,
    TResult Function(String request, String categoryId)?
        searchProductsByCategory,
    TResult Function(String request, String companyId, String categoryId)?
        searchProductsByCompanyAndCategory,
    required TResult orElse(),
  }) {
    if (getAllCategories != null) {
      return getAllCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCategories value) getAllCategories,
    required TResult Function(_GetAllSubcategories value) getAllSubcategories,
    required TResult Function(_GetAllCompanies value) getAllCompanies,
    required TResult Function(_GetCompanyCatalog value) getCompanyCatalog,
    required TResult Function(_SearchCompany value) searchCompany,
    required TResult Function(_SearchCompanyById value) searchCompanyById,
    required TResult Function(_GetCompanyProductsByCategory value)
        getCompanyProductsByCategory,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_SearchProducts value) searchProducts,
    required TResult Function(_SearchProductsByCompany value)
        searchProductsByCompany,
    required TResult Function(_SearchProductsByCategory value)
        searchProductsByCategory,
    required TResult Function(_SearchProductsByCompanyAndCategory value)
        searchProductsByCompanyAndCategory,
  }) {
    return getAllCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCategories value)? getAllCategories,
    TResult? Function(_GetAllSubcategories value)? getAllSubcategories,
    TResult? Function(_GetAllCompanies value)? getAllCompanies,
    TResult? Function(_GetCompanyCatalog value)? getCompanyCatalog,
    TResult? Function(_SearchCompany value)? searchCompany,
    TResult? Function(_SearchCompanyById value)? searchCompanyById,
    TResult? Function(_GetCompanyProductsByCategory value)?
        getCompanyProductsByCategory,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_SearchProducts value)? searchProducts,
    TResult? Function(_SearchProductsByCompany value)? searchProductsByCompany,
    TResult? Function(_SearchProductsByCategory value)?
        searchProductsByCategory,
    TResult? Function(_SearchProductsByCompanyAndCategory value)?
        searchProductsByCompanyAndCategory,
  }) {
    return getAllCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCategories value)? getAllCategories,
    TResult Function(_GetAllSubcategories value)? getAllSubcategories,
    TResult Function(_GetAllCompanies value)? getAllCompanies,
    TResult Function(_GetCompanyCatalog value)? getCompanyCatalog,
    TResult Function(_SearchCompany value)? searchCompany,
    TResult Function(_SearchCompanyById value)? searchCompanyById,
    TResult Function(_GetCompanyProductsByCategory value)?
        getCompanyProductsByCategory,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_SearchProducts value)? searchProducts,
    TResult Function(_SearchProductsByCompany value)? searchProductsByCompany,
    TResult Function(_SearchProductsByCategory value)? searchProductsByCategory,
    TResult Function(_SearchProductsByCompanyAndCategory value)?
        searchProductsByCompanyAndCategory,
    required TResult orElse(),
  }) {
    if (getAllCategories != null) {
      return getAllCategories(this);
    }
    return orElse();
  }
}

abstract class _GetAllCategories implements SearchEvent {
  const factory _GetAllCategories() = _$GetAllCategoriesImpl;
}

/// @nodoc
abstract class _$$GetAllSubcategoriesImplCopyWith<$Res> {
  factory _$$GetAllSubcategoriesImplCopyWith(_$GetAllSubcategoriesImpl value,
          $Res Function(_$GetAllSubcategoriesImpl) then) =
      __$$GetAllSubcategoriesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String categoryId});
}

/// @nodoc
class __$$GetAllSubcategoriesImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$GetAllSubcategoriesImpl>
    implements _$$GetAllSubcategoriesImplCopyWith<$Res> {
  __$$GetAllSubcategoriesImplCopyWithImpl(_$GetAllSubcategoriesImpl _value,
      $Res Function(_$GetAllSubcategoriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
  }) {
    return _then(_$GetAllSubcategoriesImpl(
      null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAllSubcategoriesImpl implements _GetAllSubcategories {
  const _$GetAllSubcategoriesImpl(this.categoryId);

  @override
  final String categoryId;

  @override
  String toString() {
    return 'SearchEvent.getAllSubcategories(categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllSubcategoriesImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllSubcategoriesImplCopyWith<_$GetAllSubcategoriesImpl> get copyWith =>
      __$$GetAllSubcategoriesImplCopyWithImpl<_$GetAllSubcategoriesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCategories,
    required TResult Function(String categoryId) getAllSubcategories,
    required TResult Function() getAllCompanies,
    required TResult Function(String companyId) getCompanyCatalog,
    required TResult Function(String companySearch) searchCompany,
    required TResult Function(String firmId) searchCompanyById,
    required TResult Function(String categoryId, String companyId)
        getCompanyProductsByCategory,
    required TResult Function(String categoryId) getProductsByCategory,
    required TResult Function(String request) searchProducts,
    required TResult Function(String request, String companyId)
        searchProductsByCompany,
    required TResult Function(String request, String categoryId)
        searchProductsByCategory,
    required TResult Function(
            String request, String companyId, String categoryId)
        searchProductsByCompanyAndCategory,
  }) {
    return getAllSubcategories(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCategories,
    TResult? Function(String categoryId)? getAllSubcategories,
    TResult? Function()? getAllCompanies,
    TResult? Function(String companyId)? getCompanyCatalog,
    TResult? Function(String companySearch)? searchCompany,
    TResult? Function(String firmId)? searchCompanyById,
    TResult? Function(String categoryId, String companyId)?
        getCompanyProductsByCategory,
    TResult? Function(String categoryId)? getProductsByCategory,
    TResult? Function(String request)? searchProducts,
    TResult? Function(String request, String companyId)?
        searchProductsByCompany,
    TResult? Function(String request, String categoryId)?
        searchProductsByCategory,
    TResult? Function(String request, String companyId, String categoryId)?
        searchProductsByCompanyAndCategory,
  }) {
    return getAllSubcategories?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCategories,
    TResult Function(String categoryId)? getAllSubcategories,
    TResult Function()? getAllCompanies,
    TResult Function(String companyId)? getCompanyCatalog,
    TResult Function(String companySearch)? searchCompany,
    TResult Function(String firmId)? searchCompanyById,
    TResult Function(String categoryId, String companyId)?
        getCompanyProductsByCategory,
    TResult Function(String categoryId)? getProductsByCategory,
    TResult Function(String request)? searchProducts,
    TResult Function(String request, String companyId)? searchProductsByCompany,
    TResult Function(String request, String categoryId)?
        searchProductsByCategory,
    TResult Function(String request, String companyId, String categoryId)?
        searchProductsByCompanyAndCategory,
    required TResult orElse(),
  }) {
    if (getAllSubcategories != null) {
      return getAllSubcategories(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCategories value) getAllCategories,
    required TResult Function(_GetAllSubcategories value) getAllSubcategories,
    required TResult Function(_GetAllCompanies value) getAllCompanies,
    required TResult Function(_GetCompanyCatalog value) getCompanyCatalog,
    required TResult Function(_SearchCompany value) searchCompany,
    required TResult Function(_SearchCompanyById value) searchCompanyById,
    required TResult Function(_GetCompanyProductsByCategory value)
        getCompanyProductsByCategory,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_SearchProducts value) searchProducts,
    required TResult Function(_SearchProductsByCompany value)
        searchProductsByCompany,
    required TResult Function(_SearchProductsByCategory value)
        searchProductsByCategory,
    required TResult Function(_SearchProductsByCompanyAndCategory value)
        searchProductsByCompanyAndCategory,
  }) {
    return getAllSubcategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCategories value)? getAllCategories,
    TResult? Function(_GetAllSubcategories value)? getAllSubcategories,
    TResult? Function(_GetAllCompanies value)? getAllCompanies,
    TResult? Function(_GetCompanyCatalog value)? getCompanyCatalog,
    TResult? Function(_SearchCompany value)? searchCompany,
    TResult? Function(_SearchCompanyById value)? searchCompanyById,
    TResult? Function(_GetCompanyProductsByCategory value)?
        getCompanyProductsByCategory,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_SearchProducts value)? searchProducts,
    TResult? Function(_SearchProductsByCompany value)? searchProductsByCompany,
    TResult? Function(_SearchProductsByCategory value)?
        searchProductsByCategory,
    TResult? Function(_SearchProductsByCompanyAndCategory value)?
        searchProductsByCompanyAndCategory,
  }) {
    return getAllSubcategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCategories value)? getAllCategories,
    TResult Function(_GetAllSubcategories value)? getAllSubcategories,
    TResult Function(_GetAllCompanies value)? getAllCompanies,
    TResult Function(_GetCompanyCatalog value)? getCompanyCatalog,
    TResult Function(_SearchCompany value)? searchCompany,
    TResult Function(_SearchCompanyById value)? searchCompanyById,
    TResult Function(_GetCompanyProductsByCategory value)?
        getCompanyProductsByCategory,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_SearchProducts value)? searchProducts,
    TResult Function(_SearchProductsByCompany value)? searchProductsByCompany,
    TResult Function(_SearchProductsByCategory value)? searchProductsByCategory,
    TResult Function(_SearchProductsByCompanyAndCategory value)?
        searchProductsByCompanyAndCategory,
    required TResult orElse(),
  }) {
    if (getAllSubcategories != null) {
      return getAllSubcategories(this);
    }
    return orElse();
  }
}

abstract class _GetAllSubcategories implements SearchEvent {
  const factory _GetAllSubcategories(final String categoryId) =
      _$GetAllSubcategoriesImpl;

  String get categoryId;
  @JsonKey(ignore: true)
  _$$GetAllSubcategoriesImplCopyWith<_$GetAllSubcategoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllCompaniesImplCopyWith<$Res> {
  factory _$$GetAllCompaniesImplCopyWith(_$GetAllCompaniesImpl value,
          $Res Function(_$GetAllCompaniesImpl) then) =
      __$$GetAllCompaniesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllCompaniesImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$GetAllCompaniesImpl>
    implements _$$GetAllCompaniesImplCopyWith<$Res> {
  __$$GetAllCompaniesImplCopyWithImpl(
      _$GetAllCompaniesImpl _value, $Res Function(_$GetAllCompaniesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllCompaniesImpl implements _GetAllCompanies {
  const _$GetAllCompaniesImpl();

  @override
  String toString() {
    return 'SearchEvent.getAllCompanies()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllCompaniesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCategories,
    required TResult Function(String categoryId) getAllSubcategories,
    required TResult Function() getAllCompanies,
    required TResult Function(String companyId) getCompanyCatalog,
    required TResult Function(String companySearch) searchCompany,
    required TResult Function(String firmId) searchCompanyById,
    required TResult Function(String categoryId, String companyId)
        getCompanyProductsByCategory,
    required TResult Function(String categoryId) getProductsByCategory,
    required TResult Function(String request) searchProducts,
    required TResult Function(String request, String companyId)
        searchProductsByCompany,
    required TResult Function(String request, String categoryId)
        searchProductsByCategory,
    required TResult Function(
            String request, String companyId, String categoryId)
        searchProductsByCompanyAndCategory,
  }) {
    return getAllCompanies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCategories,
    TResult? Function(String categoryId)? getAllSubcategories,
    TResult? Function()? getAllCompanies,
    TResult? Function(String companyId)? getCompanyCatalog,
    TResult? Function(String companySearch)? searchCompany,
    TResult? Function(String firmId)? searchCompanyById,
    TResult? Function(String categoryId, String companyId)?
        getCompanyProductsByCategory,
    TResult? Function(String categoryId)? getProductsByCategory,
    TResult? Function(String request)? searchProducts,
    TResult? Function(String request, String companyId)?
        searchProductsByCompany,
    TResult? Function(String request, String categoryId)?
        searchProductsByCategory,
    TResult? Function(String request, String companyId, String categoryId)?
        searchProductsByCompanyAndCategory,
  }) {
    return getAllCompanies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCategories,
    TResult Function(String categoryId)? getAllSubcategories,
    TResult Function()? getAllCompanies,
    TResult Function(String companyId)? getCompanyCatalog,
    TResult Function(String companySearch)? searchCompany,
    TResult Function(String firmId)? searchCompanyById,
    TResult Function(String categoryId, String companyId)?
        getCompanyProductsByCategory,
    TResult Function(String categoryId)? getProductsByCategory,
    TResult Function(String request)? searchProducts,
    TResult Function(String request, String companyId)? searchProductsByCompany,
    TResult Function(String request, String categoryId)?
        searchProductsByCategory,
    TResult Function(String request, String companyId, String categoryId)?
        searchProductsByCompanyAndCategory,
    required TResult orElse(),
  }) {
    if (getAllCompanies != null) {
      return getAllCompanies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCategories value) getAllCategories,
    required TResult Function(_GetAllSubcategories value) getAllSubcategories,
    required TResult Function(_GetAllCompanies value) getAllCompanies,
    required TResult Function(_GetCompanyCatalog value) getCompanyCatalog,
    required TResult Function(_SearchCompany value) searchCompany,
    required TResult Function(_SearchCompanyById value) searchCompanyById,
    required TResult Function(_GetCompanyProductsByCategory value)
        getCompanyProductsByCategory,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_SearchProducts value) searchProducts,
    required TResult Function(_SearchProductsByCompany value)
        searchProductsByCompany,
    required TResult Function(_SearchProductsByCategory value)
        searchProductsByCategory,
    required TResult Function(_SearchProductsByCompanyAndCategory value)
        searchProductsByCompanyAndCategory,
  }) {
    return getAllCompanies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCategories value)? getAllCategories,
    TResult? Function(_GetAllSubcategories value)? getAllSubcategories,
    TResult? Function(_GetAllCompanies value)? getAllCompanies,
    TResult? Function(_GetCompanyCatalog value)? getCompanyCatalog,
    TResult? Function(_SearchCompany value)? searchCompany,
    TResult? Function(_SearchCompanyById value)? searchCompanyById,
    TResult? Function(_GetCompanyProductsByCategory value)?
        getCompanyProductsByCategory,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_SearchProducts value)? searchProducts,
    TResult? Function(_SearchProductsByCompany value)? searchProductsByCompany,
    TResult? Function(_SearchProductsByCategory value)?
        searchProductsByCategory,
    TResult? Function(_SearchProductsByCompanyAndCategory value)?
        searchProductsByCompanyAndCategory,
  }) {
    return getAllCompanies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCategories value)? getAllCategories,
    TResult Function(_GetAllSubcategories value)? getAllSubcategories,
    TResult Function(_GetAllCompanies value)? getAllCompanies,
    TResult Function(_GetCompanyCatalog value)? getCompanyCatalog,
    TResult Function(_SearchCompany value)? searchCompany,
    TResult Function(_SearchCompanyById value)? searchCompanyById,
    TResult Function(_GetCompanyProductsByCategory value)?
        getCompanyProductsByCategory,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_SearchProducts value)? searchProducts,
    TResult Function(_SearchProductsByCompany value)? searchProductsByCompany,
    TResult Function(_SearchProductsByCategory value)? searchProductsByCategory,
    TResult Function(_SearchProductsByCompanyAndCategory value)?
        searchProductsByCompanyAndCategory,
    required TResult orElse(),
  }) {
    if (getAllCompanies != null) {
      return getAllCompanies(this);
    }
    return orElse();
  }
}

abstract class _GetAllCompanies implements SearchEvent {
  const factory _GetAllCompanies() = _$GetAllCompaniesImpl;
}

/// @nodoc
abstract class _$$GetCompanyCatalogImplCopyWith<$Res> {
  factory _$$GetCompanyCatalogImplCopyWith(_$GetCompanyCatalogImpl value,
          $Res Function(_$GetCompanyCatalogImpl) then) =
      __$$GetCompanyCatalogImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String companyId});
}

/// @nodoc
class __$$GetCompanyCatalogImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$GetCompanyCatalogImpl>
    implements _$$GetCompanyCatalogImplCopyWith<$Res> {
  __$$GetCompanyCatalogImplCopyWithImpl(_$GetCompanyCatalogImpl _value,
      $Res Function(_$GetCompanyCatalogImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyId = null,
  }) {
    return _then(_$GetCompanyCatalogImpl(
      null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCompanyCatalogImpl implements _GetCompanyCatalog {
  const _$GetCompanyCatalogImpl(this.companyId);

  @override
  final String companyId;

  @override
  String toString() {
    return 'SearchEvent.getCompanyCatalog(companyId: $companyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCompanyCatalogImpl &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, companyId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCompanyCatalogImplCopyWith<_$GetCompanyCatalogImpl> get copyWith =>
      __$$GetCompanyCatalogImplCopyWithImpl<_$GetCompanyCatalogImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCategories,
    required TResult Function(String categoryId) getAllSubcategories,
    required TResult Function() getAllCompanies,
    required TResult Function(String companyId) getCompanyCatalog,
    required TResult Function(String companySearch) searchCompany,
    required TResult Function(String firmId) searchCompanyById,
    required TResult Function(String categoryId, String companyId)
        getCompanyProductsByCategory,
    required TResult Function(String categoryId) getProductsByCategory,
    required TResult Function(String request) searchProducts,
    required TResult Function(String request, String companyId)
        searchProductsByCompany,
    required TResult Function(String request, String categoryId)
        searchProductsByCategory,
    required TResult Function(
            String request, String companyId, String categoryId)
        searchProductsByCompanyAndCategory,
  }) {
    return getCompanyCatalog(companyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCategories,
    TResult? Function(String categoryId)? getAllSubcategories,
    TResult? Function()? getAllCompanies,
    TResult? Function(String companyId)? getCompanyCatalog,
    TResult? Function(String companySearch)? searchCompany,
    TResult? Function(String firmId)? searchCompanyById,
    TResult? Function(String categoryId, String companyId)?
        getCompanyProductsByCategory,
    TResult? Function(String categoryId)? getProductsByCategory,
    TResult? Function(String request)? searchProducts,
    TResult? Function(String request, String companyId)?
        searchProductsByCompany,
    TResult? Function(String request, String categoryId)?
        searchProductsByCategory,
    TResult? Function(String request, String companyId, String categoryId)?
        searchProductsByCompanyAndCategory,
  }) {
    return getCompanyCatalog?.call(companyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCategories,
    TResult Function(String categoryId)? getAllSubcategories,
    TResult Function()? getAllCompanies,
    TResult Function(String companyId)? getCompanyCatalog,
    TResult Function(String companySearch)? searchCompany,
    TResult Function(String firmId)? searchCompanyById,
    TResult Function(String categoryId, String companyId)?
        getCompanyProductsByCategory,
    TResult Function(String categoryId)? getProductsByCategory,
    TResult Function(String request)? searchProducts,
    TResult Function(String request, String companyId)? searchProductsByCompany,
    TResult Function(String request, String categoryId)?
        searchProductsByCategory,
    TResult Function(String request, String companyId, String categoryId)?
        searchProductsByCompanyAndCategory,
    required TResult orElse(),
  }) {
    if (getCompanyCatalog != null) {
      return getCompanyCatalog(companyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCategories value) getAllCategories,
    required TResult Function(_GetAllSubcategories value) getAllSubcategories,
    required TResult Function(_GetAllCompanies value) getAllCompanies,
    required TResult Function(_GetCompanyCatalog value) getCompanyCatalog,
    required TResult Function(_SearchCompany value) searchCompany,
    required TResult Function(_SearchCompanyById value) searchCompanyById,
    required TResult Function(_GetCompanyProductsByCategory value)
        getCompanyProductsByCategory,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_SearchProducts value) searchProducts,
    required TResult Function(_SearchProductsByCompany value)
        searchProductsByCompany,
    required TResult Function(_SearchProductsByCategory value)
        searchProductsByCategory,
    required TResult Function(_SearchProductsByCompanyAndCategory value)
        searchProductsByCompanyAndCategory,
  }) {
    return getCompanyCatalog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCategories value)? getAllCategories,
    TResult? Function(_GetAllSubcategories value)? getAllSubcategories,
    TResult? Function(_GetAllCompanies value)? getAllCompanies,
    TResult? Function(_GetCompanyCatalog value)? getCompanyCatalog,
    TResult? Function(_SearchCompany value)? searchCompany,
    TResult? Function(_SearchCompanyById value)? searchCompanyById,
    TResult? Function(_GetCompanyProductsByCategory value)?
        getCompanyProductsByCategory,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_SearchProducts value)? searchProducts,
    TResult? Function(_SearchProductsByCompany value)? searchProductsByCompany,
    TResult? Function(_SearchProductsByCategory value)?
        searchProductsByCategory,
    TResult? Function(_SearchProductsByCompanyAndCategory value)?
        searchProductsByCompanyAndCategory,
  }) {
    return getCompanyCatalog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCategories value)? getAllCategories,
    TResult Function(_GetAllSubcategories value)? getAllSubcategories,
    TResult Function(_GetAllCompanies value)? getAllCompanies,
    TResult Function(_GetCompanyCatalog value)? getCompanyCatalog,
    TResult Function(_SearchCompany value)? searchCompany,
    TResult Function(_SearchCompanyById value)? searchCompanyById,
    TResult Function(_GetCompanyProductsByCategory value)?
        getCompanyProductsByCategory,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_SearchProducts value)? searchProducts,
    TResult Function(_SearchProductsByCompany value)? searchProductsByCompany,
    TResult Function(_SearchProductsByCategory value)? searchProductsByCategory,
    TResult Function(_SearchProductsByCompanyAndCategory value)?
        searchProductsByCompanyAndCategory,
    required TResult orElse(),
  }) {
    if (getCompanyCatalog != null) {
      return getCompanyCatalog(this);
    }
    return orElse();
  }
}

abstract class _GetCompanyCatalog implements SearchEvent {
  const factory _GetCompanyCatalog(final String companyId) =
      _$GetCompanyCatalogImpl;

  String get companyId;
  @JsonKey(ignore: true)
  _$$GetCompanyCatalogImplCopyWith<_$GetCompanyCatalogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchCompanyImplCopyWith<$Res> {
  factory _$$SearchCompanyImplCopyWith(
          _$SearchCompanyImpl value, $Res Function(_$SearchCompanyImpl) then) =
      __$$SearchCompanyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String companySearch});
}

/// @nodoc
class __$$SearchCompanyImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchCompanyImpl>
    implements _$$SearchCompanyImplCopyWith<$Res> {
  __$$SearchCompanyImplCopyWithImpl(
      _$SearchCompanyImpl _value, $Res Function(_$SearchCompanyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companySearch = null,
  }) {
    return _then(_$SearchCompanyImpl(
      null == companySearch
          ? _value.companySearch
          : companySearch // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchCompanyImpl implements _SearchCompany {
  const _$SearchCompanyImpl(this.companySearch);

  @override
  final String companySearch;

  @override
  String toString() {
    return 'SearchEvent.searchCompany(companySearch: $companySearch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCompanyImpl &&
            (identical(other.companySearch, companySearch) ||
                other.companySearch == companySearch));
  }

  @override
  int get hashCode => Object.hash(runtimeType, companySearch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCompanyImplCopyWith<_$SearchCompanyImpl> get copyWith =>
      __$$SearchCompanyImplCopyWithImpl<_$SearchCompanyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCategories,
    required TResult Function(String categoryId) getAllSubcategories,
    required TResult Function() getAllCompanies,
    required TResult Function(String companyId) getCompanyCatalog,
    required TResult Function(String companySearch) searchCompany,
    required TResult Function(String firmId) searchCompanyById,
    required TResult Function(String categoryId, String companyId)
        getCompanyProductsByCategory,
    required TResult Function(String categoryId) getProductsByCategory,
    required TResult Function(String request) searchProducts,
    required TResult Function(String request, String companyId)
        searchProductsByCompany,
    required TResult Function(String request, String categoryId)
        searchProductsByCategory,
    required TResult Function(
            String request, String companyId, String categoryId)
        searchProductsByCompanyAndCategory,
  }) {
    return searchCompany(companySearch);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCategories,
    TResult? Function(String categoryId)? getAllSubcategories,
    TResult? Function()? getAllCompanies,
    TResult? Function(String companyId)? getCompanyCatalog,
    TResult? Function(String companySearch)? searchCompany,
    TResult? Function(String firmId)? searchCompanyById,
    TResult? Function(String categoryId, String companyId)?
        getCompanyProductsByCategory,
    TResult? Function(String categoryId)? getProductsByCategory,
    TResult? Function(String request)? searchProducts,
    TResult? Function(String request, String companyId)?
        searchProductsByCompany,
    TResult? Function(String request, String categoryId)?
        searchProductsByCategory,
    TResult? Function(String request, String companyId, String categoryId)?
        searchProductsByCompanyAndCategory,
  }) {
    return searchCompany?.call(companySearch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCategories,
    TResult Function(String categoryId)? getAllSubcategories,
    TResult Function()? getAllCompanies,
    TResult Function(String companyId)? getCompanyCatalog,
    TResult Function(String companySearch)? searchCompany,
    TResult Function(String firmId)? searchCompanyById,
    TResult Function(String categoryId, String companyId)?
        getCompanyProductsByCategory,
    TResult Function(String categoryId)? getProductsByCategory,
    TResult Function(String request)? searchProducts,
    TResult Function(String request, String companyId)? searchProductsByCompany,
    TResult Function(String request, String categoryId)?
        searchProductsByCategory,
    TResult Function(String request, String companyId, String categoryId)?
        searchProductsByCompanyAndCategory,
    required TResult orElse(),
  }) {
    if (searchCompany != null) {
      return searchCompany(companySearch);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCategories value) getAllCategories,
    required TResult Function(_GetAllSubcategories value) getAllSubcategories,
    required TResult Function(_GetAllCompanies value) getAllCompanies,
    required TResult Function(_GetCompanyCatalog value) getCompanyCatalog,
    required TResult Function(_SearchCompany value) searchCompany,
    required TResult Function(_SearchCompanyById value) searchCompanyById,
    required TResult Function(_GetCompanyProductsByCategory value)
        getCompanyProductsByCategory,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_SearchProducts value) searchProducts,
    required TResult Function(_SearchProductsByCompany value)
        searchProductsByCompany,
    required TResult Function(_SearchProductsByCategory value)
        searchProductsByCategory,
    required TResult Function(_SearchProductsByCompanyAndCategory value)
        searchProductsByCompanyAndCategory,
  }) {
    return searchCompany(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCategories value)? getAllCategories,
    TResult? Function(_GetAllSubcategories value)? getAllSubcategories,
    TResult? Function(_GetAllCompanies value)? getAllCompanies,
    TResult? Function(_GetCompanyCatalog value)? getCompanyCatalog,
    TResult? Function(_SearchCompany value)? searchCompany,
    TResult? Function(_SearchCompanyById value)? searchCompanyById,
    TResult? Function(_GetCompanyProductsByCategory value)?
        getCompanyProductsByCategory,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_SearchProducts value)? searchProducts,
    TResult? Function(_SearchProductsByCompany value)? searchProductsByCompany,
    TResult? Function(_SearchProductsByCategory value)?
        searchProductsByCategory,
    TResult? Function(_SearchProductsByCompanyAndCategory value)?
        searchProductsByCompanyAndCategory,
  }) {
    return searchCompany?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCategories value)? getAllCategories,
    TResult Function(_GetAllSubcategories value)? getAllSubcategories,
    TResult Function(_GetAllCompanies value)? getAllCompanies,
    TResult Function(_GetCompanyCatalog value)? getCompanyCatalog,
    TResult Function(_SearchCompany value)? searchCompany,
    TResult Function(_SearchCompanyById value)? searchCompanyById,
    TResult Function(_GetCompanyProductsByCategory value)?
        getCompanyProductsByCategory,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_SearchProducts value)? searchProducts,
    TResult Function(_SearchProductsByCompany value)? searchProductsByCompany,
    TResult Function(_SearchProductsByCategory value)? searchProductsByCategory,
    TResult Function(_SearchProductsByCompanyAndCategory value)?
        searchProductsByCompanyAndCategory,
    required TResult orElse(),
  }) {
    if (searchCompany != null) {
      return searchCompany(this);
    }
    return orElse();
  }
}

abstract class _SearchCompany implements SearchEvent {
  const factory _SearchCompany(final String companySearch) =
      _$SearchCompanyImpl;

  String get companySearch;
  @JsonKey(ignore: true)
  _$$SearchCompanyImplCopyWith<_$SearchCompanyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchCompanyByIdImplCopyWith<$Res> {
  factory _$$SearchCompanyByIdImplCopyWith(_$SearchCompanyByIdImpl value,
          $Res Function(_$SearchCompanyByIdImpl) then) =
      __$$SearchCompanyByIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String firmId});
}

/// @nodoc
class __$$SearchCompanyByIdImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchCompanyByIdImpl>
    implements _$$SearchCompanyByIdImplCopyWith<$Res> {
  __$$SearchCompanyByIdImplCopyWithImpl(_$SearchCompanyByIdImpl _value,
      $Res Function(_$SearchCompanyByIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firmId = null,
  }) {
    return _then(_$SearchCompanyByIdImpl(
      null == firmId
          ? _value.firmId
          : firmId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchCompanyByIdImpl implements _SearchCompanyById {
  const _$SearchCompanyByIdImpl(this.firmId);

  @override
  final String firmId;

  @override
  String toString() {
    return 'SearchEvent.searchCompanyById(firmId: $firmId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCompanyByIdImpl &&
            (identical(other.firmId, firmId) || other.firmId == firmId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firmId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCompanyByIdImplCopyWith<_$SearchCompanyByIdImpl> get copyWith =>
      __$$SearchCompanyByIdImplCopyWithImpl<_$SearchCompanyByIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCategories,
    required TResult Function(String categoryId) getAllSubcategories,
    required TResult Function() getAllCompanies,
    required TResult Function(String companyId) getCompanyCatalog,
    required TResult Function(String companySearch) searchCompany,
    required TResult Function(String firmId) searchCompanyById,
    required TResult Function(String categoryId, String companyId)
        getCompanyProductsByCategory,
    required TResult Function(String categoryId) getProductsByCategory,
    required TResult Function(String request) searchProducts,
    required TResult Function(String request, String companyId)
        searchProductsByCompany,
    required TResult Function(String request, String categoryId)
        searchProductsByCategory,
    required TResult Function(
            String request, String companyId, String categoryId)
        searchProductsByCompanyAndCategory,
  }) {
    return searchCompanyById(firmId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCategories,
    TResult? Function(String categoryId)? getAllSubcategories,
    TResult? Function()? getAllCompanies,
    TResult? Function(String companyId)? getCompanyCatalog,
    TResult? Function(String companySearch)? searchCompany,
    TResult? Function(String firmId)? searchCompanyById,
    TResult? Function(String categoryId, String companyId)?
        getCompanyProductsByCategory,
    TResult? Function(String categoryId)? getProductsByCategory,
    TResult? Function(String request)? searchProducts,
    TResult? Function(String request, String companyId)?
        searchProductsByCompany,
    TResult? Function(String request, String categoryId)?
        searchProductsByCategory,
    TResult? Function(String request, String companyId, String categoryId)?
        searchProductsByCompanyAndCategory,
  }) {
    return searchCompanyById?.call(firmId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCategories,
    TResult Function(String categoryId)? getAllSubcategories,
    TResult Function()? getAllCompanies,
    TResult Function(String companyId)? getCompanyCatalog,
    TResult Function(String companySearch)? searchCompany,
    TResult Function(String firmId)? searchCompanyById,
    TResult Function(String categoryId, String companyId)?
        getCompanyProductsByCategory,
    TResult Function(String categoryId)? getProductsByCategory,
    TResult Function(String request)? searchProducts,
    TResult Function(String request, String companyId)? searchProductsByCompany,
    TResult Function(String request, String categoryId)?
        searchProductsByCategory,
    TResult Function(String request, String companyId, String categoryId)?
        searchProductsByCompanyAndCategory,
    required TResult orElse(),
  }) {
    if (searchCompanyById != null) {
      return searchCompanyById(firmId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCategories value) getAllCategories,
    required TResult Function(_GetAllSubcategories value) getAllSubcategories,
    required TResult Function(_GetAllCompanies value) getAllCompanies,
    required TResult Function(_GetCompanyCatalog value) getCompanyCatalog,
    required TResult Function(_SearchCompany value) searchCompany,
    required TResult Function(_SearchCompanyById value) searchCompanyById,
    required TResult Function(_GetCompanyProductsByCategory value)
        getCompanyProductsByCategory,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_SearchProducts value) searchProducts,
    required TResult Function(_SearchProductsByCompany value)
        searchProductsByCompany,
    required TResult Function(_SearchProductsByCategory value)
        searchProductsByCategory,
    required TResult Function(_SearchProductsByCompanyAndCategory value)
        searchProductsByCompanyAndCategory,
  }) {
    return searchCompanyById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCategories value)? getAllCategories,
    TResult? Function(_GetAllSubcategories value)? getAllSubcategories,
    TResult? Function(_GetAllCompanies value)? getAllCompanies,
    TResult? Function(_GetCompanyCatalog value)? getCompanyCatalog,
    TResult? Function(_SearchCompany value)? searchCompany,
    TResult? Function(_SearchCompanyById value)? searchCompanyById,
    TResult? Function(_GetCompanyProductsByCategory value)?
        getCompanyProductsByCategory,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_SearchProducts value)? searchProducts,
    TResult? Function(_SearchProductsByCompany value)? searchProductsByCompany,
    TResult? Function(_SearchProductsByCategory value)?
        searchProductsByCategory,
    TResult? Function(_SearchProductsByCompanyAndCategory value)?
        searchProductsByCompanyAndCategory,
  }) {
    return searchCompanyById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCategories value)? getAllCategories,
    TResult Function(_GetAllSubcategories value)? getAllSubcategories,
    TResult Function(_GetAllCompanies value)? getAllCompanies,
    TResult Function(_GetCompanyCatalog value)? getCompanyCatalog,
    TResult Function(_SearchCompany value)? searchCompany,
    TResult Function(_SearchCompanyById value)? searchCompanyById,
    TResult Function(_GetCompanyProductsByCategory value)?
        getCompanyProductsByCategory,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_SearchProducts value)? searchProducts,
    TResult Function(_SearchProductsByCompany value)? searchProductsByCompany,
    TResult Function(_SearchProductsByCategory value)? searchProductsByCategory,
    TResult Function(_SearchProductsByCompanyAndCategory value)?
        searchProductsByCompanyAndCategory,
    required TResult orElse(),
  }) {
    if (searchCompanyById != null) {
      return searchCompanyById(this);
    }
    return orElse();
  }
}

abstract class _SearchCompanyById implements SearchEvent {
  const factory _SearchCompanyById(final String firmId) =
      _$SearchCompanyByIdImpl;

  String get firmId;
  @JsonKey(ignore: true)
  _$$SearchCompanyByIdImplCopyWith<_$SearchCompanyByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCompanyProductsByCategoryImplCopyWith<$Res> {
  factory _$$GetCompanyProductsByCategoryImplCopyWith(
          _$GetCompanyProductsByCategoryImpl value,
          $Res Function(_$GetCompanyProductsByCategoryImpl) then) =
      __$$GetCompanyProductsByCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String categoryId, String companyId});
}

/// @nodoc
class __$$GetCompanyProductsByCategoryImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$GetCompanyProductsByCategoryImpl>
    implements _$$GetCompanyProductsByCategoryImplCopyWith<$Res> {
  __$$GetCompanyProductsByCategoryImplCopyWithImpl(
      _$GetCompanyProductsByCategoryImpl _value,
      $Res Function(_$GetCompanyProductsByCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? companyId = null,
  }) {
    return _then(_$GetCompanyProductsByCategoryImpl(
      null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCompanyProductsByCategoryImpl
    implements _GetCompanyProductsByCategory {
  const _$GetCompanyProductsByCategoryImpl(this.categoryId, this.companyId);

  @override
  final String categoryId;
  @override
  final String companyId;

  @override
  String toString() {
    return 'SearchEvent.getCompanyProductsByCategory(categoryId: $categoryId, companyId: $companyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCompanyProductsByCategoryImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId, companyId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCompanyProductsByCategoryImplCopyWith<
          _$GetCompanyProductsByCategoryImpl>
      get copyWith => __$$GetCompanyProductsByCategoryImplCopyWithImpl<
          _$GetCompanyProductsByCategoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCategories,
    required TResult Function(String categoryId) getAllSubcategories,
    required TResult Function() getAllCompanies,
    required TResult Function(String companyId) getCompanyCatalog,
    required TResult Function(String companySearch) searchCompany,
    required TResult Function(String firmId) searchCompanyById,
    required TResult Function(String categoryId, String companyId)
        getCompanyProductsByCategory,
    required TResult Function(String categoryId) getProductsByCategory,
    required TResult Function(String request) searchProducts,
    required TResult Function(String request, String companyId)
        searchProductsByCompany,
    required TResult Function(String request, String categoryId)
        searchProductsByCategory,
    required TResult Function(
            String request, String companyId, String categoryId)
        searchProductsByCompanyAndCategory,
  }) {
    return getCompanyProductsByCategory(categoryId, companyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCategories,
    TResult? Function(String categoryId)? getAllSubcategories,
    TResult? Function()? getAllCompanies,
    TResult? Function(String companyId)? getCompanyCatalog,
    TResult? Function(String companySearch)? searchCompany,
    TResult? Function(String firmId)? searchCompanyById,
    TResult? Function(String categoryId, String companyId)?
        getCompanyProductsByCategory,
    TResult? Function(String categoryId)? getProductsByCategory,
    TResult? Function(String request)? searchProducts,
    TResult? Function(String request, String companyId)?
        searchProductsByCompany,
    TResult? Function(String request, String categoryId)?
        searchProductsByCategory,
    TResult? Function(String request, String companyId, String categoryId)?
        searchProductsByCompanyAndCategory,
  }) {
    return getCompanyProductsByCategory?.call(categoryId, companyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCategories,
    TResult Function(String categoryId)? getAllSubcategories,
    TResult Function()? getAllCompanies,
    TResult Function(String companyId)? getCompanyCatalog,
    TResult Function(String companySearch)? searchCompany,
    TResult Function(String firmId)? searchCompanyById,
    TResult Function(String categoryId, String companyId)?
        getCompanyProductsByCategory,
    TResult Function(String categoryId)? getProductsByCategory,
    TResult Function(String request)? searchProducts,
    TResult Function(String request, String companyId)? searchProductsByCompany,
    TResult Function(String request, String categoryId)?
        searchProductsByCategory,
    TResult Function(String request, String companyId, String categoryId)?
        searchProductsByCompanyAndCategory,
    required TResult orElse(),
  }) {
    if (getCompanyProductsByCategory != null) {
      return getCompanyProductsByCategory(categoryId, companyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCategories value) getAllCategories,
    required TResult Function(_GetAllSubcategories value) getAllSubcategories,
    required TResult Function(_GetAllCompanies value) getAllCompanies,
    required TResult Function(_GetCompanyCatalog value) getCompanyCatalog,
    required TResult Function(_SearchCompany value) searchCompany,
    required TResult Function(_SearchCompanyById value) searchCompanyById,
    required TResult Function(_GetCompanyProductsByCategory value)
        getCompanyProductsByCategory,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_SearchProducts value) searchProducts,
    required TResult Function(_SearchProductsByCompany value)
        searchProductsByCompany,
    required TResult Function(_SearchProductsByCategory value)
        searchProductsByCategory,
    required TResult Function(_SearchProductsByCompanyAndCategory value)
        searchProductsByCompanyAndCategory,
  }) {
    return getCompanyProductsByCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCategories value)? getAllCategories,
    TResult? Function(_GetAllSubcategories value)? getAllSubcategories,
    TResult? Function(_GetAllCompanies value)? getAllCompanies,
    TResult? Function(_GetCompanyCatalog value)? getCompanyCatalog,
    TResult? Function(_SearchCompany value)? searchCompany,
    TResult? Function(_SearchCompanyById value)? searchCompanyById,
    TResult? Function(_GetCompanyProductsByCategory value)?
        getCompanyProductsByCategory,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_SearchProducts value)? searchProducts,
    TResult? Function(_SearchProductsByCompany value)? searchProductsByCompany,
    TResult? Function(_SearchProductsByCategory value)?
        searchProductsByCategory,
    TResult? Function(_SearchProductsByCompanyAndCategory value)?
        searchProductsByCompanyAndCategory,
  }) {
    return getCompanyProductsByCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCategories value)? getAllCategories,
    TResult Function(_GetAllSubcategories value)? getAllSubcategories,
    TResult Function(_GetAllCompanies value)? getAllCompanies,
    TResult Function(_GetCompanyCatalog value)? getCompanyCatalog,
    TResult Function(_SearchCompany value)? searchCompany,
    TResult Function(_SearchCompanyById value)? searchCompanyById,
    TResult Function(_GetCompanyProductsByCategory value)?
        getCompanyProductsByCategory,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_SearchProducts value)? searchProducts,
    TResult Function(_SearchProductsByCompany value)? searchProductsByCompany,
    TResult Function(_SearchProductsByCategory value)? searchProductsByCategory,
    TResult Function(_SearchProductsByCompanyAndCategory value)?
        searchProductsByCompanyAndCategory,
    required TResult orElse(),
  }) {
    if (getCompanyProductsByCategory != null) {
      return getCompanyProductsByCategory(this);
    }
    return orElse();
  }
}

abstract class _GetCompanyProductsByCategory implements SearchEvent {
  const factory _GetCompanyProductsByCategory(
          final String categoryId, final String companyId) =
      _$GetCompanyProductsByCategoryImpl;

  String get categoryId;
  String get companyId;
  @JsonKey(ignore: true)
  _$$GetCompanyProductsByCategoryImplCopyWith<
          _$GetCompanyProductsByCategoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProductsByCategoryImplCopyWith<$Res> {
  factory _$$GetProductsByCategoryImplCopyWith(
          _$GetProductsByCategoryImpl value,
          $Res Function(_$GetProductsByCategoryImpl) then) =
      __$$GetProductsByCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String categoryId});
}

/// @nodoc
class __$$GetProductsByCategoryImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$GetProductsByCategoryImpl>
    implements _$$GetProductsByCategoryImplCopyWith<$Res> {
  __$$GetProductsByCategoryImplCopyWithImpl(_$GetProductsByCategoryImpl _value,
      $Res Function(_$GetProductsByCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
  }) {
    return _then(_$GetProductsByCategoryImpl(
      null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetProductsByCategoryImpl implements _GetProductsByCategory {
  const _$GetProductsByCategoryImpl(this.categoryId);

  @override
  final String categoryId;

  @override
  String toString() {
    return 'SearchEvent.getProductsByCategory(categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductsByCategoryImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductsByCategoryImplCopyWith<_$GetProductsByCategoryImpl>
      get copyWith => __$$GetProductsByCategoryImplCopyWithImpl<
          _$GetProductsByCategoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCategories,
    required TResult Function(String categoryId) getAllSubcategories,
    required TResult Function() getAllCompanies,
    required TResult Function(String companyId) getCompanyCatalog,
    required TResult Function(String companySearch) searchCompany,
    required TResult Function(String firmId) searchCompanyById,
    required TResult Function(String categoryId, String companyId)
        getCompanyProductsByCategory,
    required TResult Function(String categoryId) getProductsByCategory,
    required TResult Function(String request) searchProducts,
    required TResult Function(String request, String companyId)
        searchProductsByCompany,
    required TResult Function(String request, String categoryId)
        searchProductsByCategory,
    required TResult Function(
            String request, String companyId, String categoryId)
        searchProductsByCompanyAndCategory,
  }) {
    return getProductsByCategory(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCategories,
    TResult? Function(String categoryId)? getAllSubcategories,
    TResult? Function()? getAllCompanies,
    TResult? Function(String companyId)? getCompanyCatalog,
    TResult? Function(String companySearch)? searchCompany,
    TResult? Function(String firmId)? searchCompanyById,
    TResult? Function(String categoryId, String companyId)?
        getCompanyProductsByCategory,
    TResult? Function(String categoryId)? getProductsByCategory,
    TResult? Function(String request)? searchProducts,
    TResult? Function(String request, String companyId)?
        searchProductsByCompany,
    TResult? Function(String request, String categoryId)?
        searchProductsByCategory,
    TResult? Function(String request, String companyId, String categoryId)?
        searchProductsByCompanyAndCategory,
  }) {
    return getProductsByCategory?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCategories,
    TResult Function(String categoryId)? getAllSubcategories,
    TResult Function()? getAllCompanies,
    TResult Function(String companyId)? getCompanyCatalog,
    TResult Function(String companySearch)? searchCompany,
    TResult Function(String firmId)? searchCompanyById,
    TResult Function(String categoryId, String companyId)?
        getCompanyProductsByCategory,
    TResult Function(String categoryId)? getProductsByCategory,
    TResult Function(String request)? searchProducts,
    TResult Function(String request, String companyId)? searchProductsByCompany,
    TResult Function(String request, String categoryId)?
        searchProductsByCategory,
    TResult Function(String request, String companyId, String categoryId)?
        searchProductsByCompanyAndCategory,
    required TResult orElse(),
  }) {
    if (getProductsByCategory != null) {
      return getProductsByCategory(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCategories value) getAllCategories,
    required TResult Function(_GetAllSubcategories value) getAllSubcategories,
    required TResult Function(_GetAllCompanies value) getAllCompanies,
    required TResult Function(_GetCompanyCatalog value) getCompanyCatalog,
    required TResult Function(_SearchCompany value) searchCompany,
    required TResult Function(_SearchCompanyById value) searchCompanyById,
    required TResult Function(_GetCompanyProductsByCategory value)
        getCompanyProductsByCategory,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_SearchProducts value) searchProducts,
    required TResult Function(_SearchProductsByCompany value)
        searchProductsByCompany,
    required TResult Function(_SearchProductsByCategory value)
        searchProductsByCategory,
    required TResult Function(_SearchProductsByCompanyAndCategory value)
        searchProductsByCompanyAndCategory,
  }) {
    return getProductsByCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCategories value)? getAllCategories,
    TResult? Function(_GetAllSubcategories value)? getAllSubcategories,
    TResult? Function(_GetAllCompanies value)? getAllCompanies,
    TResult? Function(_GetCompanyCatalog value)? getCompanyCatalog,
    TResult? Function(_SearchCompany value)? searchCompany,
    TResult? Function(_SearchCompanyById value)? searchCompanyById,
    TResult? Function(_GetCompanyProductsByCategory value)?
        getCompanyProductsByCategory,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_SearchProducts value)? searchProducts,
    TResult? Function(_SearchProductsByCompany value)? searchProductsByCompany,
    TResult? Function(_SearchProductsByCategory value)?
        searchProductsByCategory,
    TResult? Function(_SearchProductsByCompanyAndCategory value)?
        searchProductsByCompanyAndCategory,
  }) {
    return getProductsByCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCategories value)? getAllCategories,
    TResult Function(_GetAllSubcategories value)? getAllSubcategories,
    TResult Function(_GetAllCompanies value)? getAllCompanies,
    TResult Function(_GetCompanyCatalog value)? getCompanyCatalog,
    TResult Function(_SearchCompany value)? searchCompany,
    TResult Function(_SearchCompanyById value)? searchCompanyById,
    TResult Function(_GetCompanyProductsByCategory value)?
        getCompanyProductsByCategory,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_SearchProducts value)? searchProducts,
    TResult Function(_SearchProductsByCompany value)? searchProductsByCompany,
    TResult Function(_SearchProductsByCategory value)? searchProductsByCategory,
    TResult Function(_SearchProductsByCompanyAndCategory value)?
        searchProductsByCompanyAndCategory,
    required TResult orElse(),
  }) {
    if (getProductsByCategory != null) {
      return getProductsByCategory(this);
    }
    return orElse();
  }
}

abstract class _GetProductsByCategory implements SearchEvent {
  const factory _GetProductsByCategory(final String categoryId) =
      _$GetProductsByCategoryImpl;

  String get categoryId;
  @JsonKey(ignore: true)
  _$$GetProductsByCategoryImplCopyWith<_$GetProductsByCategoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchProductsImplCopyWith<$Res> {
  factory _$$SearchProductsImplCopyWith(_$SearchProductsImpl value,
          $Res Function(_$SearchProductsImpl) then) =
      __$$SearchProductsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String request});
}

/// @nodoc
class __$$SearchProductsImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchProductsImpl>
    implements _$$SearchProductsImplCopyWith<$Res> {
  __$$SearchProductsImplCopyWithImpl(
      _$SearchProductsImpl _value, $Res Function(_$SearchProductsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$SearchProductsImpl(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchProductsImpl implements _SearchProducts {
  const _$SearchProductsImpl(this.request);

  @override
  final String request;

  @override
  String toString() {
    return 'SearchEvent.searchProducts(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProductsImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchProductsImplCopyWith<_$SearchProductsImpl> get copyWith =>
      __$$SearchProductsImplCopyWithImpl<_$SearchProductsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCategories,
    required TResult Function(String categoryId) getAllSubcategories,
    required TResult Function() getAllCompanies,
    required TResult Function(String companyId) getCompanyCatalog,
    required TResult Function(String companySearch) searchCompany,
    required TResult Function(String firmId) searchCompanyById,
    required TResult Function(String categoryId, String companyId)
        getCompanyProductsByCategory,
    required TResult Function(String categoryId) getProductsByCategory,
    required TResult Function(String request) searchProducts,
    required TResult Function(String request, String companyId)
        searchProductsByCompany,
    required TResult Function(String request, String categoryId)
        searchProductsByCategory,
    required TResult Function(
            String request, String companyId, String categoryId)
        searchProductsByCompanyAndCategory,
  }) {
    return searchProducts(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCategories,
    TResult? Function(String categoryId)? getAllSubcategories,
    TResult? Function()? getAllCompanies,
    TResult? Function(String companyId)? getCompanyCatalog,
    TResult? Function(String companySearch)? searchCompany,
    TResult? Function(String firmId)? searchCompanyById,
    TResult? Function(String categoryId, String companyId)?
        getCompanyProductsByCategory,
    TResult? Function(String categoryId)? getProductsByCategory,
    TResult? Function(String request)? searchProducts,
    TResult? Function(String request, String companyId)?
        searchProductsByCompany,
    TResult? Function(String request, String categoryId)?
        searchProductsByCategory,
    TResult? Function(String request, String companyId, String categoryId)?
        searchProductsByCompanyAndCategory,
  }) {
    return searchProducts?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCategories,
    TResult Function(String categoryId)? getAllSubcategories,
    TResult Function()? getAllCompanies,
    TResult Function(String companyId)? getCompanyCatalog,
    TResult Function(String companySearch)? searchCompany,
    TResult Function(String firmId)? searchCompanyById,
    TResult Function(String categoryId, String companyId)?
        getCompanyProductsByCategory,
    TResult Function(String categoryId)? getProductsByCategory,
    TResult Function(String request)? searchProducts,
    TResult Function(String request, String companyId)? searchProductsByCompany,
    TResult Function(String request, String categoryId)?
        searchProductsByCategory,
    TResult Function(String request, String companyId, String categoryId)?
        searchProductsByCompanyAndCategory,
    required TResult orElse(),
  }) {
    if (searchProducts != null) {
      return searchProducts(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCategories value) getAllCategories,
    required TResult Function(_GetAllSubcategories value) getAllSubcategories,
    required TResult Function(_GetAllCompanies value) getAllCompanies,
    required TResult Function(_GetCompanyCatalog value) getCompanyCatalog,
    required TResult Function(_SearchCompany value) searchCompany,
    required TResult Function(_SearchCompanyById value) searchCompanyById,
    required TResult Function(_GetCompanyProductsByCategory value)
        getCompanyProductsByCategory,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_SearchProducts value) searchProducts,
    required TResult Function(_SearchProductsByCompany value)
        searchProductsByCompany,
    required TResult Function(_SearchProductsByCategory value)
        searchProductsByCategory,
    required TResult Function(_SearchProductsByCompanyAndCategory value)
        searchProductsByCompanyAndCategory,
  }) {
    return searchProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCategories value)? getAllCategories,
    TResult? Function(_GetAllSubcategories value)? getAllSubcategories,
    TResult? Function(_GetAllCompanies value)? getAllCompanies,
    TResult? Function(_GetCompanyCatalog value)? getCompanyCatalog,
    TResult? Function(_SearchCompany value)? searchCompany,
    TResult? Function(_SearchCompanyById value)? searchCompanyById,
    TResult? Function(_GetCompanyProductsByCategory value)?
        getCompanyProductsByCategory,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_SearchProducts value)? searchProducts,
    TResult? Function(_SearchProductsByCompany value)? searchProductsByCompany,
    TResult? Function(_SearchProductsByCategory value)?
        searchProductsByCategory,
    TResult? Function(_SearchProductsByCompanyAndCategory value)?
        searchProductsByCompanyAndCategory,
  }) {
    return searchProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCategories value)? getAllCategories,
    TResult Function(_GetAllSubcategories value)? getAllSubcategories,
    TResult Function(_GetAllCompanies value)? getAllCompanies,
    TResult Function(_GetCompanyCatalog value)? getCompanyCatalog,
    TResult Function(_SearchCompany value)? searchCompany,
    TResult Function(_SearchCompanyById value)? searchCompanyById,
    TResult Function(_GetCompanyProductsByCategory value)?
        getCompanyProductsByCategory,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_SearchProducts value)? searchProducts,
    TResult Function(_SearchProductsByCompany value)? searchProductsByCompany,
    TResult Function(_SearchProductsByCategory value)? searchProductsByCategory,
    TResult Function(_SearchProductsByCompanyAndCategory value)?
        searchProductsByCompanyAndCategory,
    required TResult orElse(),
  }) {
    if (searchProducts != null) {
      return searchProducts(this);
    }
    return orElse();
  }
}

abstract class _SearchProducts implements SearchEvent {
  const factory _SearchProducts(final String request) = _$SearchProductsImpl;

  String get request;
  @JsonKey(ignore: true)
  _$$SearchProductsImplCopyWith<_$SearchProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchProductsByCompanyImplCopyWith<$Res> {
  factory _$$SearchProductsByCompanyImplCopyWith(
          _$SearchProductsByCompanyImpl value,
          $Res Function(_$SearchProductsByCompanyImpl) then) =
      __$$SearchProductsByCompanyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String request, String companyId});
}

/// @nodoc
class __$$SearchProductsByCompanyImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchProductsByCompanyImpl>
    implements _$$SearchProductsByCompanyImplCopyWith<$Res> {
  __$$SearchProductsByCompanyImplCopyWithImpl(
      _$SearchProductsByCompanyImpl _value,
      $Res Function(_$SearchProductsByCompanyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? companyId = null,
  }) {
    return _then(_$SearchProductsByCompanyImpl(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as String,
      null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchProductsByCompanyImpl implements _SearchProductsByCompany {
  const _$SearchProductsByCompanyImpl(this.request, this.companyId);

  @override
  final String request;
  @override
  final String companyId;

  @override
  String toString() {
    return 'SearchEvent.searchProductsByCompany(request: $request, companyId: $companyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProductsByCompanyImpl &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request, companyId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchProductsByCompanyImplCopyWith<_$SearchProductsByCompanyImpl>
      get copyWith => __$$SearchProductsByCompanyImplCopyWithImpl<
          _$SearchProductsByCompanyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCategories,
    required TResult Function(String categoryId) getAllSubcategories,
    required TResult Function() getAllCompanies,
    required TResult Function(String companyId) getCompanyCatalog,
    required TResult Function(String companySearch) searchCompany,
    required TResult Function(String firmId) searchCompanyById,
    required TResult Function(String categoryId, String companyId)
        getCompanyProductsByCategory,
    required TResult Function(String categoryId) getProductsByCategory,
    required TResult Function(String request) searchProducts,
    required TResult Function(String request, String companyId)
        searchProductsByCompany,
    required TResult Function(String request, String categoryId)
        searchProductsByCategory,
    required TResult Function(
            String request, String companyId, String categoryId)
        searchProductsByCompanyAndCategory,
  }) {
    return searchProductsByCompany(request, companyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCategories,
    TResult? Function(String categoryId)? getAllSubcategories,
    TResult? Function()? getAllCompanies,
    TResult? Function(String companyId)? getCompanyCatalog,
    TResult? Function(String companySearch)? searchCompany,
    TResult? Function(String firmId)? searchCompanyById,
    TResult? Function(String categoryId, String companyId)?
        getCompanyProductsByCategory,
    TResult? Function(String categoryId)? getProductsByCategory,
    TResult? Function(String request)? searchProducts,
    TResult? Function(String request, String companyId)?
        searchProductsByCompany,
    TResult? Function(String request, String categoryId)?
        searchProductsByCategory,
    TResult? Function(String request, String companyId, String categoryId)?
        searchProductsByCompanyAndCategory,
  }) {
    return searchProductsByCompany?.call(request, companyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCategories,
    TResult Function(String categoryId)? getAllSubcategories,
    TResult Function()? getAllCompanies,
    TResult Function(String companyId)? getCompanyCatalog,
    TResult Function(String companySearch)? searchCompany,
    TResult Function(String firmId)? searchCompanyById,
    TResult Function(String categoryId, String companyId)?
        getCompanyProductsByCategory,
    TResult Function(String categoryId)? getProductsByCategory,
    TResult Function(String request)? searchProducts,
    TResult Function(String request, String companyId)? searchProductsByCompany,
    TResult Function(String request, String categoryId)?
        searchProductsByCategory,
    TResult Function(String request, String companyId, String categoryId)?
        searchProductsByCompanyAndCategory,
    required TResult orElse(),
  }) {
    if (searchProductsByCompany != null) {
      return searchProductsByCompany(request, companyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCategories value) getAllCategories,
    required TResult Function(_GetAllSubcategories value) getAllSubcategories,
    required TResult Function(_GetAllCompanies value) getAllCompanies,
    required TResult Function(_GetCompanyCatalog value) getCompanyCatalog,
    required TResult Function(_SearchCompany value) searchCompany,
    required TResult Function(_SearchCompanyById value) searchCompanyById,
    required TResult Function(_GetCompanyProductsByCategory value)
        getCompanyProductsByCategory,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_SearchProducts value) searchProducts,
    required TResult Function(_SearchProductsByCompany value)
        searchProductsByCompany,
    required TResult Function(_SearchProductsByCategory value)
        searchProductsByCategory,
    required TResult Function(_SearchProductsByCompanyAndCategory value)
        searchProductsByCompanyAndCategory,
  }) {
    return searchProductsByCompany(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCategories value)? getAllCategories,
    TResult? Function(_GetAllSubcategories value)? getAllSubcategories,
    TResult? Function(_GetAllCompanies value)? getAllCompanies,
    TResult? Function(_GetCompanyCatalog value)? getCompanyCatalog,
    TResult? Function(_SearchCompany value)? searchCompany,
    TResult? Function(_SearchCompanyById value)? searchCompanyById,
    TResult? Function(_GetCompanyProductsByCategory value)?
        getCompanyProductsByCategory,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_SearchProducts value)? searchProducts,
    TResult? Function(_SearchProductsByCompany value)? searchProductsByCompany,
    TResult? Function(_SearchProductsByCategory value)?
        searchProductsByCategory,
    TResult? Function(_SearchProductsByCompanyAndCategory value)?
        searchProductsByCompanyAndCategory,
  }) {
    return searchProductsByCompany?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCategories value)? getAllCategories,
    TResult Function(_GetAllSubcategories value)? getAllSubcategories,
    TResult Function(_GetAllCompanies value)? getAllCompanies,
    TResult Function(_GetCompanyCatalog value)? getCompanyCatalog,
    TResult Function(_SearchCompany value)? searchCompany,
    TResult Function(_SearchCompanyById value)? searchCompanyById,
    TResult Function(_GetCompanyProductsByCategory value)?
        getCompanyProductsByCategory,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_SearchProducts value)? searchProducts,
    TResult Function(_SearchProductsByCompany value)? searchProductsByCompany,
    TResult Function(_SearchProductsByCategory value)? searchProductsByCategory,
    TResult Function(_SearchProductsByCompanyAndCategory value)?
        searchProductsByCompanyAndCategory,
    required TResult orElse(),
  }) {
    if (searchProductsByCompany != null) {
      return searchProductsByCompany(this);
    }
    return orElse();
  }
}

abstract class _SearchProductsByCompany implements SearchEvent {
  const factory _SearchProductsByCompany(
          final String request, final String companyId) =
      _$SearchProductsByCompanyImpl;

  String get request;
  String get companyId;
  @JsonKey(ignore: true)
  _$$SearchProductsByCompanyImplCopyWith<_$SearchProductsByCompanyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchProductsByCategoryImplCopyWith<$Res> {
  factory _$$SearchProductsByCategoryImplCopyWith(
          _$SearchProductsByCategoryImpl value,
          $Res Function(_$SearchProductsByCategoryImpl) then) =
      __$$SearchProductsByCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String request, String categoryId});
}

/// @nodoc
class __$$SearchProductsByCategoryImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchProductsByCategoryImpl>
    implements _$$SearchProductsByCategoryImplCopyWith<$Res> {
  __$$SearchProductsByCategoryImplCopyWithImpl(
      _$SearchProductsByCategoryImpl _value,
      $Res Function(_$SearchProductsByCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? categoryId = null,
  }) {
    return _then(_$SearchProductsByCategoryImpl(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as String,
      null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchProductsByCategoryImpl implements _SearchProductsByCategory {
  const _$SearchProductsByCategoryImpl(this.request, this.categoryId);

  @override
  final String request;
  @override
  final String categoryId;

  @override
  String toString() {
    return 'SearchEvent.searchProductsByCategory(request: $request, categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProductsByCategoryImpl &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchProductsByCategoryImplCopyWith<_$SearchProductsByCategoryImpl>
      get copyWith => __$$SearchProductsByCategoryImplCopyWithImpl<
          _$SearchProductsByCategoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCategories,
    required TResult Function(String categoryId) getAllSubcategories,
    required TResult Function() getAllCompanies,
    required TResult Function(String companyId) getCompanyCatalog,
    required TResult Function(String companySearch) searchCompany,
    required TResult Function(String firmId) searchCompanyById,
    required TResult Function(String categoryId, String companyId)
        getCompanyProductsByCategory,
    required TResult Function(String categoryId) getProductsByCategory,
    required TResult Function(String request) searchProducts,
    required TResult Function(String request, String companyId)
        searchProductsByCompany,
    required TResult Function(String request, String categoryId)
        searchProductsByCategory,
    required TResult Function(
            String request, String companyId, String categoryId)
        searchProductsByCompanyAndCategory,
  }) {
    return searchProductsByCategory(request, categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCategories,
    TResult? Function(String categoryId)? getAllSubcategories,
    TResult? Function()? getAllCompanies,
    TResult? Function(String companyId)? getCompanyCatalog,
    TResult? Function(String companySearch)? searchCompany,
    TResult? Function(String firmId)? searchCompanyById,
    TResult? Function(String categoryId, String companyId)?
        getCompanyProductsByCategory,
    TResult? Function(String categoryId)? getProductsByCategory,
    TResult? Function(String request)? searchProducts,
    TResult? Function(String request, String companyId)?
        searchProductsByCompany,
    TResult? Function(String request, String categoryId)?
        searchProductsByCategory,
    TResult? Function(String request, String companyId, String categoryId)?
        searchProductsByCompanyAndCategory,
  }) {
    return searchProductsByCategory?.call(request, categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCategories,
    TResult Function(String categoryId)? getAllSubcategories,
    TResult Function()? getAllCompanies,
    TResult Function(String companyId)? getCompanyCatalog,
    TResult Function(String companySearch)? searchCompany,
    TResult Function(String firmId)? searchCompanyById,
    TResult Function(String categoryId, String companyId)?
        getCompanyProductsByCategory,
    TResult Function(String categoryId)? getProductsByCategory,
    TResult Function(String request)? searchProducts,
    TResult Function(String request, String companyId)? searchProductsByCompany,
    TResult Function(String request, String categoryId)?
        searchProductsByCategory,
    TResult Function(String request, String companyId, String categoryId)?
        searchProductsByCompanyAndCategory,
    required TResult orElse(),
  }) {
    if (searchProductsByCategory != null) {
      return searchProductsByCategory(request, categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCategories value) getAllCategories,
    required TResult Function(_GetAllSubcategories value) getAllSubcategories,
    required TResult Function(_GetAllCompanies value) getAllCompanies,
    required TResult Function(_GetCompanyCatalog value) getCompanyCatalog,
    required TResult Function(_SearchCompany value) searchCompany,
    required TResult Function(_SearchCompanyById value) searchCompanyById,
    required TResult Function(_GetCompanyProductsByCategory value)
        getCompanyProductsByCategory,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_SearchProducts value) searchProducts,
    required TResult Function(_SearchProductsByCompany value)
        searchProductsByCompany,
    required TResult Function(_SearchProductsByCategory value)
        searchProductsByCategory,
    required TResult Function(_SearchProductsByCompanyAndCategory value)
        searchProductsByCompanyAndCategory,
  }) {
    return searchProductsByCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCategories value)? getAllCategories,
    TResult? Function(_GetAllSubcategories value)? getAllSubcategories,
    TResult? Function(_GetAllCompanies value)? getAllCompanies,
    TResult? Function(_GetCompanyCatalog value)? getCompanyCatalog,
    TResult? Function(_SearchCompany value)? searchCompany,
    TResult? Function(_SearchCompanyById value)? searchCompanyById,
    TResult? Function(_GetCompanyProductsByCategory value)?
        getCompanyProductsByCategory,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_SearchProducts value)? searchProducts,
    TResult? Function(_SearchProductsByCompany value)? searchProductsByCompany,
    TResult? Function(_SearchProductsByCategory value)?
        searchProductsByCategory,
    TResult? Function(_SearchProductsByCompanyAndCategory value)?
        searchProductsByCompanyAndCategory,
  }) {
    return searchProductsByCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCategories value)? getAllCategories,
    TResult Function(_GetAllSubcategories value)? getAllSubcategories,
    TResult Function(_GetAllCompanies value)? getAllCompanies,
    TResult Function(_GetCompanyCatalog value)? getCompanyCatalog,
    TResult Function(_SearchCompany value)? searchCompany,
    TResult Function(_SearchCompanyById value)? searchCompanyById,
    TResult Function(_GetCompanyProductsByCategory value)?
        getCompanyProductsByCategory,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_SearchProducts value)? searchProducts,
    TResult Function(_SearchProductsByCompany value)? searchProductsByCompany,
    TResult Function(_SearchProductsByCategory value)? searchProductsByCategory,
    TResult Function(_SearchProductsByCompanyAndCategory value)?
        searchProductsByCompanyAndCategory,
    required TResult orElse(),
  }) {
    if (searchProductsByCategory != null) {
      return searchProductsByCategory(this);
    }
    return orElse();
  }
}

abstract class _SearchProductsByCategory implements SearchEvent {
  const factory _SearchProductsByCategory(
          final String request, final String categoryId) =
      _$SearchProductsByCategoryImpl;

  String get request;
  String get categoryId;
  @JsonKey(ignore: true)
  _$$SearchProductsByCategoryImplCopyWith<_$SearchProductsByCategoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchProductsByCompanyAndCategoryImplCopyWith<$Res> {
  factory _$$SearchProductsByCompanyAndCategoryImplCopyWith(
          _$SearchProductsByCompanyAndCategoryImpl value,
          $Res Function(_$SearchProductsByCompanyAndCategoryImpl) then) =
      __$$SearchProductsByCompanyAndCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String request, String companyId, String categoryId});
}

/// @nodoc
class __$$SearchProductsByCompanyAndCategoryImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res,
        _$SearchProductsByCompanyAndCategoryImpl>
    implements _$$SearchProductsByCompanyAndCategoryImplCopyWith<$Res> {
  __$$SearchProductsByCompanyAndCategoryImplCopyWithImpl(
      _$SearchProductsByCompanyAndCategoryImpl _value,
      $Res Function(_$SearchProductsByCompanyAndCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? companyId = null,
    Object? categoryId = null,
  }) {
    return _then(_$SearchProductsByCompanyAndCategoryImpl(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as String,
      null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchProductsByCompanyAndCategoryImpl
    implements _SearchProductsByCompanyAndCategory {
  const _$SearchProductsByCompanyAndCategoryImpl(
      this.request, this.companyId, this.categoryId);

  @override
  final String request;
  @override
  final String companyId;
  @override
  final String categoryId;

  @override
  String toString() {
    return 'SearchEvent.searchProductsByCompanyAndCategory(request: $request, companyId: $companyId, categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProductsByCompanyAndCategoryImpl &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request, companyId, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchProductsByCompanyAndCategoryImplCopyWith<
          _$SearchProductsByCompanyAndCategoryImpl>
      get copyWith => __$$SearchProductsByCompanyAndCategoryImplCopyWithImpl<
          _$SearchProductsByCompanyAndCategoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCategories,
    required TResult Function(String categoryId) getAllSubcategories,
    required TResult Function() getAllCompanies,
    required TResult Function(String companyId) getCompanyCatalog,
    required TResult Function(String companySearch) searchCompany,
    required TResult Function(String firmId) searchCompanyById,
    required TResult Function(String categoryId, String companyId)
        getCompanyProductsByCategory,
    required TResult Function(String categoryId) getProductsByCategory,
    required TResult Function(String request) searchProducts,
    required TResult Function(String request, String companyId)
        searchProductsByCompany,
    required TResult Function(String request, String categoryId)
        searchProductsByCategory,
    required TResult Function(
            String request, String companyId, String categoryId)
        searchProductsByCompanyAndCategory,
  }) {
    return searchProductsByCompanyAndCategory(request, companyId, categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCategories,
    TResult? Function(String categoryId)? getAllSubcategories,
    TResult? Function()? getAllCompanies,
    TResult? Function(String companyId)? getCompanyCatalog,
    TResult? Function(String companySearch)? searchCompany,
    TResult? Function(String firmId)? searchCompanyById,
    TResult? Function(String categoryId, String companyId)?
        getCompanyProductsByCategory,
    TResult? Function(String categoryId)? getProductsByCategory,
    TResult? Function(String request)? searchProducts,
    TResult? Function(String request, String companyId)?
        searchProductsByCompany,
    TResult? Function(String request, String categoryId)?
        searchProductsByCategory,
    TResult? Function(String request, String companyId, String categoryId)?
        searchProductsByCompanyAndCategory,
  }) {
    return searchProductsByCompanyAndCategory?.call(
        request, companyId, categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCategories,
    TResult Function(String categoryId)? getAllSubcategories,
    TResult Function()? getAllCompanies,
    TResult Function(String companyId)? getCompanyCatalog,
    TResult Function(String companySearch)? searchCompany,
    TResult Function(String firmId)? searchCompanyById,
    TResult Function(String categoryId, String companyId)?
        getCompanyProductsByCategory,
    TResult Function(String categoryId)? getProductsByCategory,
    TResult Function(String request)? searchProducts,
    TResult Function(String request, String companyId)? searchProductsByCompany,
    TResult Function(String request, String categoryId)?
        searchProductsByCategory,
    TResult Function(String request, String companyId, String categoryId)?
        searchProductsByCompanyAndCategory,
    required TResult orElse(),
  }) {
    if (searchProductsByCompanyAndCategory != null) {
      return searchProductsByCompanyAndCategory(request, companyId, categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCategories value) getAllCategories,
    required TResult Function(_GetAllSubcategories value) getAllSubcategories,
    required TResult Function(_GetAllCompanies value) getAllCompanies,
    required TResult Function(_GetCompanyCatalog value) getCompanyCatalog,
    required TResult Function(_SearchCompany value) searchCompany,
    required TResult Function(_SearchCompanyById value) searchCompanyById,
    required TResult Function(_GetCompanyProductsByCategory value)
        getCompanyProductsByCategory,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_SearchProducts value) searchProducts,
    required TResult Function(_SearchProductsByCompany value)
        searchProductsByCompany,
    required TResult Function(_SearchProductsByCategory value)
        searchProductsByCategory,
    required TResult Function(_SearchProductsByCompanyAndCategory value)
        searchProductsByCompanyAndCategory,
  }) {
    return searchProductsByCompanyAndCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCategories value)? getAllCategories,
    TResult? Function(_GetAllSubcategories value)? getAllSubcategories,
    TResult? Function(_GetAllCompanies value)? getAllCompanies,
    TResult? Function(_GetCompanyCatalog value)? getCompanyCatalog,
    TResult? Function(_SearchCompany value)? searchCompany,
    TResult? Function(_SearchCompanyById value)? searchCompanyById,
    TResult? Function(_GetCompanyProductsByCategory value)?
        getCompanyProductsByCategory,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_SearchProducts value)? searchProducts,
    TResult? Function(_SearchProductsByCompany value)? searchProductsByCompany,
    TResult? Function(_SearchProductsByCategory value)?
        searchProductsByCategory,
    TResult? Function(_SearchProductsByCompanyAndCategory value)?
        searchProductsByCompanyAndCategory,
  }) {
    return searchProductsByCompanyAndCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCategories value)? getAllCategories,
    TResult Function(_GetAllSubcategories value)? getAllSubcategories,
    TResult Function(_GetAllCompanies value)? getAllCompanies,
    TResult Function(_GetCompanyCatalog value)? getCompanyCatalog,
    TResult Function(_SearchCompany value)? searchCompany,
    TResult Function(_SearchCompanyById value)? searchCompanyById,
    TResult Function(_GetCompanyProductsByCategory value)?
        getCompanyProductsByCategory,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_SearchProducts value)? searchProducts,
    TResult Function(_SearchProductsByCompany value)? searchProductsByCompany,
    TResult Function(_SearchProductsByCategory value)? searchProductsByCategory,
    TResult Function(_SearchProductsByCompanyAndCategory value)?
        searchProductsByCompanyAndCategory,
    required TResult orElse(),
  }) {
    if (searchProductsByCompanyAndCategory != null) {
      return searchProductsByCompanyAndCategory(this);
    }
    return orElse();
  }
}

abstract class _SearchProductsByCompanyAndCategory implements SearchEvent {
  const factory _SearchProductsByCompanyAndCategory(
      final String request,
      final String companyId,
      final String categoryId) = _$SearchProductsByCompanyAndCategoryImpl;

  String get request;
  String get companyId;
  String get categoryId;
  @JsonKey(ignore: true)
  _$$SearchProductsByCompanyAndCategoryImplCopyWith<
          _$SearchProductsByCompanyAndCategoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioException error) failure,
    required TResult Function() loading,
    required TResult Function(CategoriesResponse response) categoriesLoaded,
    required TResult Function(SubcategoriesResponse response)
        subcategoriesLoaded,
    required TResult Function(ProductsResponse response) productsLoaded,
    required TResult Function(List<CompaniesResponse> response) companiesLoaded,
    required TResult Function(List<CompaniesResponse> response)
        companiesFounded,
    required TResult Function(ProductsResponse response) productsFounded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioException error)? failure,
    TResult? Function()? loading,
    TResult? Function(CategoriesResponse response)? categoriesLoaded,
    TResult? Function(SubcategoriesResponse response)? subcategoriesLoaded,
    TResult? Function(ProductsResponse response)? productsLoaded,
    TResult? Function(List<CompaniesResponse> response)? companiesLoaded,
    TResult? Function(List<CompaniesResponse> response)? companiesFounded,
    TResult? Function(ProductsResponse response)? productsFounded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioException error)? failure,
    TResult Function()? loading,
    TResult Function(CategoriesResponse response)? categoriesLoaded,
    TResult Function(SubcategoriesResponse response)? subcategoriesLoaded,
    TResult Function(ProductsResponse response)? productsLoaded,
    TResult Function(List<CompaniesResponse> response)? companiesLoaded,
    TResult Function(List<CompaniesResponse> response)? companiesFounded,
    TResult Function(ProductsResponse response)? productsFounded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CategoriesLoaded value) categoriesLoaded,
    required TResult Function(_SubcategoriesLoaded value) subcategoriesLoaded,
    required TResult Function(_ProductsLoaded value) productsLoaded,
    required TResult Function(_CompaniesLoaded value) companiesLoaded,
    required TResult Function(_CompaniesFounded value) companiesFounded,
    required TResult Function(_ProductsFounded value) productsFounded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CategoriesLoaded value)? categoriesLoaded,
    TResult? Function(_SubcategoriesLoaded value)? subcategoriesLoaded,
    TResult? Function(_ProductsLoaded value)? productsLoaded,
    TResult? Function(_CompaniesLoaded value)? companiesLoaded,
    TResult? Function(_CompaniesFounded value)? companiesFounded,
    TResult? Function(_ProductsFounded value)? productsFounded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_CategoriesLoaded value)? categoriesLoaded,
    TResult Function(_SubcategoriesLoaded value)? subcategoriesLoaded,
    TResult Function(_ProductsLoaded value)? productsLoaded,
    TResult Function(_CompaniesLoaded value)? companiesLoaded,
    TResult Function(_CompaniesFounded value)? companiesFounded,
    TResult Function(_ProductsFounded value)? productsFounded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

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
  $Res call({DioException error});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$FailureImpl>
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
              as DioException,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl(this.error);

  @override
  final DioException error;

  @override
  String toString() {
    return 'SearchState.failure(error: $error)';
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
    required TResult Function(DioException error) failure,
    required TResult Function() loading,
    required TResult Function(CategoriesResponse response) categoriesLoaded,
    required TResult Function(SubcategoriesResponse response)
        subcategoriesLoaded,
    required TResult Function(ProductsResponse response) productsLoaded,
    required TResult Function(List<CompaniesResponse> response) companiesLoaded,
    required TResult Function(List<CompaniesResponse> response)
        companiesFounded,
    required TResult Function(ProductsResponse response) productsFounded,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioException error)? failure,
    TResult? Function()? loading,
    TResult? Function(CategoriesResponse response)? categoriesLoaded,
    TResult? Function(SubcategoriesResponse response)? subcategoriesLoaded,
    TResult? Function(ProductsResponse response)? productsLoaded,
    TResult? Function(List<CompaniesResponse> response)? companiesLoaded,
    TResult? Function(List<CompaniesResponse> response)? companiesFounded,
    TResult? Function(ProductsResponse response)? productsFounded,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioException error)? failure,
    TResult Function()? loading,
    TResult Function(CategoriesResponse response)? categoriesLoaded,
    TResult Function(SubcategoriesResponse response)? subcategoriesLoaded,
    TResult Function(ProductsResponse response)? productsLoaded,
    TResult Function(List<CompaniesResponse> response)? companiesLoaded,
    TResult Function(List<CompaniesResponse> response)? companiesFounded,
    TResult Function(ProductsResponse response)? productsFounded,
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
    required TResult Function(_CategoriesLoaded value) categoriesLoaded,
    required TResult Function(_SubcategoriesLoaded value) subcategoriesLoaded,
    required TResult Function(_ProductsLoaded value) productsLoaded,
    required TResult Function(_CompaniesLoaded value) companiesLoaded,
    required TResult Function(_CompaniesFounded value) companiesFounded,
    required TResult Function(_ProductsFounded value) productsFounded,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CategoriesLoaded value)? categoriesLoaded,
    TResult? Function(_SubcategoriesLoaded value)? subcategoriesLoaded,
    TResult? Function(_ProductsLoaded value)? productsLoaded,
    TResult? Function(_CompaniesLoaded value)? companiesLoaded,
    TResult? Function(_CompaniesFounded value)? companiesFounded,
    TResult? Function(_ProductsFounded value)? productsFounded,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_CategoriesLoaded value)? categoriesLoaded,
    TResult Function(_SubcategoriesLoaded value)? subcategoriesLoaded,
    TResult Function(_ProductsLoaded value)? productsLoaded,
    TResult Function(_CompaniesLoaded value)? companiesLoaded,
    TResult Function(_CompaniesFounded value)? companiesFounded,
    TResult Function(_ProductsFounded value)? productsFounded,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements SearchState {
  const factory _Failure(final DioException error) = _$FailureImpl;

  DioException get error;
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
    extends _$SearchStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'SearchState.loading()';
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
    required TResult Function(DioException error) failure,
    required TResult Function() loading,
    required TResult Function(CategoriesResponse response) categoriesLoaded,
    required TResult Function(SubcategoriesResponse response)
        subcategoriesLoaded,
    required TResult Function(ProductsResponse response) productsLoaded,
    required TResult Function(List<CompaniesResponse> response) companiesLoaded,
    required TResult Function(List<CompaniesResponse> response)
        companiesFounded,
    required TResult Function(ProductsResponse response) productsFounded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioException error)? failure,
    TResult? Function()? loading,
    TResult? Function(CategoriesResponse response)? categoriesLoaded,
    TResult? Function(SubcategoriesResponse response)? subcategoriesLoaded,
    TResult? Function(ProductsResponse response)? productsLoaded,
    TResult? Function(List<CompaniesResponse> response)? companiesLoaded,
    TResult? Function(List<CompaniesResponse> response)? companiesFounded,
    TResult? Function(ProductsResponse response)? productsFounded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioException error)? failure,
    TResult Function()? loading,
    TResult Function(CategoriesResponse response)? categoriesLoaded,
    TResult Function(SubcategoriesResponse response)? subcategoriesLoaded,
    TResult Function(ProductsResponse response)? productsLoaded,
    TResult Function(List<CompaniesResponse> response)? companiesLoaded,
    TResult Function(List<CompaniesResponse> response)? companiesFounded,
    TResult Function(ProductsResponse response)? productsFounded,
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
    required TResult Function(_CategoriesLoaded value) categoriesLoaded,
    required TResult Function(_SubcategoriesLoaded value) subcategoriesLoaded,
    required TResult Function(_ProductsLoaded value) productsLoaded,
    required TResult Function(_CompaniesLoaded value) companiesLoaded,
    required TResult Function(_CompaniesFounded value) companiesFounded,
    required TResult Function(_ProductsFounded value) productsFounded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CategoriesLoaded value)? categoriesLoaded,
    TResult? Function(_SubcategoriesLoaded value)? subcategoriesLoaded,
    TResult? Function(_ProductsLoaded value)? productsLoaded,
    TResult? Function(_CompaniesLoaded value)? companiesLoaded,
    TResult? Function(_CompaniesFounded value)? companiesFounded,
    TResult? Function(_ProductsFounded value)? productsFounded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_CategoriesLoaded value)? categoriesLoaded,
    TResult Function(_SubcategoriesLoaded value)? subcategoriesLoaded,
    TResult Function(_ProductsLoaded value)? productsLoaded,
    TResult Function(_CompaniesLoaded value)? companiesLoaded,
    TResult Function(_CompaniesFounded value)? companiesFounded,
    TResult Function(_ProductsFounded value)? productsFounded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SearchState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$CategoriesLoadedImplCopyWith<$Res> {
  factory _$$CategoriesLoadedImplCopyWith(_$CategoriesLoadedImpl value,
          $Res Function(_$CategoriesLoadedImpl) then) =
      __$$CategoriesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CategoriesResponse response});
}

/// @nodoc
class __$$CategoriesLoadedImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$CategoriesLoadedImpl>
    implements _$$CategoriesLoadedImplCopyWith<$Res> {
  __$$CategoriesLoadedImplCopyWithImpl(_$CategoriesLoadedImpl _value,
      $Res Function(_$CategoriesLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$CategoriesLoadedImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as CategoriesResponse,
    ));
  }
}

/// @nodoc

class _$CategoriesLoadedImpl implements _CategoriesLoaded {
  const _$CategoriesLoadedImpl(this.response);

  @override
  final CategoriesResponse response;

  @override
  String toString() {
    return 'SearchState.categoriesLoaded(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesLoadedImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesLoadedImplCopyWith<_$CategoriesLoadedImpl> get copyWith =>
      __$$CategoriesLoadedImplCopyWithImpl<_$CategoriesLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioException error) failure,
    required TResult Function() loading,
    required TResult Function(CategoriesResponse response) categoriesLoaded,
    required TResult Function(SubcategoriesResponse response)
        subcategoriesLoaded,
    required TResult Function(ProductsResponse response) productsLoaded,
    required TResult Function(List<CompaniesResponse> response) companiesLoaded,
    required TResult Function(List<CompaniesResponse> response)
        companiesFounded,
    required TResult Function(ProductsResponse response) productsFounded,
  }) {
    return categoriesLoaded(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioException error)? failure,
    TResult? Function()? loading,
    TResult? Function(CategoriesResponse response)? categoriesLoaded,
    TResult? Function(SubcategoriesResponse response)? subcategoriesLoaded,
    TResult? Function(ProductsResponse response)? productsLoaded,
    TResult? Function(List<CompaniesResponse> response)? companiesLoaded,
    TResult? Function(List<CompaniesResponse> response)? companiesFounded,
    TResult? Function(ProductsResponse response)? productsFounded,
  }) {
    return categoriesLoaded?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioException error)? failure,
    TResult Function()? loading,
    TResult Function(CategoriesResponse response)? categoriesLoaded,
    TResult Function(SubcategoriesResponse response)? subcategoriesLoaded,
    TResult Function(ProductsResponse response)? productsLoaded,
    TResult Function(List<CompaniesResponse> response)? companiesLoaded,
    TResult Function(List<CompaniesResponse> response)? companiesFounded,
    TResult Function(ProductsResponse response)? productsFounded,
    required TResult orElse(),
  }) {
    if (categoriesLoaded != null) {
      return categoriesLoaded(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CategoriesLoaded value) categoriesLoaded,
    required TResult Function(_SubcategoriesLoaded value) subcategoriesLoaded,
    required TResult Function(_ProductsLoaded value) productsLoaded,
    required TResult Function(_CompaniesLoaded value) companiesLoaded,
    required TResult Function(_CompaniesFounded value) companiesFounded,
    required TResult Function(_ProductsFounded value) productsFounded,
  }) {
    return categoriesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CategoriesLoaded value)? categoriesLoaded,
    TResult? Function(_SubcategoriesLoaded value)? subcategoriesLoaded,
    TResult? Function(_ProductsLoaded value)? productsLoaded,
    TResult? Function(_CompaniesLoaded value)? companiesLoaded,
    TResult? Function(_CompaniesFounded value)? companiesFounded,
    TResult? Function(_ProductsFounded value)? productsFounded,
  }) {
    return categoriesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_CategoriesLoaded value)? categoriesLoaded,
    TResult Function(_SubcategoriesLoaded value)? subcategoriesLoaded,
    TResult Function(_ProductsLoaded value)? productsLoaded,
    TResult Function(_CompaniesLoaded value)? companiesLoaded,
    TResult Function(_CompaniesFounded value)? companiesFounded,
    TResult Function(_ProductsFounded value)? productsFounded,
    required TResult orElse(),
  }) {
    if (categoriesLoaded != null) {
      return categoriesLoaded(this);
    }
    return orElse();
  }
}

abstract class _CategoriesLoaded implements SearchState {
  const factory _CategoriesLoaded(final CategoriesResponse response) =
      _$CategoriesLoadedImpl;

  CategoriesResponse get response;
  @JsonKey(ignore: true)
  _$$CategoriesLoadedImplCopyWith<_$CategoriesLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubcategoriesLoadedImplCopyWith<$Res> {
  factory _$$SubcategoriesLoadedImplCopyWith(_$SubcategoriesLoadedImpl value,
          $Res Function(_$SubcategoriesLoadedImpl) then) =
      __$$SubcategoriesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SubcategoriesResponse response});
}

/// @nodoc
class __$$SubcategoriesLoadedImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SubcategoriesLoadedImpl>
    implements _$$SubcategoriesLoadedImplCopyWith<$Res> {
  __$$SubcategoriesLoadedImplCopyWithImpl(_$SubcategoriesLoadedImpl _value,
      $Res Function(_$SubcategoriesLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$SubcategoriesLoadedImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as SubcategoriesResponse,
    ));
  }
}

/// @nodoc

class _$SubcategoriesLoadedImpl implements _SubcategoriesLoaded {
  const _$SubcategoriesLoadedImpl(this.response);

  @override
  final SubcategoriesResponse response;

  @override
  String toString() {
    return 'SearchState.subcategoriesLoaded(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubcategoriesLoadedImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubcategoriesLoadedImplCopyWith<_$SubcategoriesLoadedImpl> get copyWith =>
      __$$SubcategoriesLoadedImplCopyWithImpl<_$SubcategoriesLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioException error) failure,
    required TResult Function() loading,
    required TResult Function(CategoriesResponse response) categoriesLoaded,
    required TResult Function(SubcategoriesResponse response)
        subcategoriesLoaded,
    required TResult Function(ProductsResponse response) productsLoaded,
    required TResult Function(List<CompaniesResponse> response) companiesLoaded,
    required TResult Function(List<CompaniesResponse> response)
        companiesFounded,
    required TResult Function(ProductsResponse response) productsFounded,
  }) {
    return subcategoriesLoaded(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioException error)? failure,
    TResult? Function()? loading,
    TResult? Function(CategoriesResponse response)? categoriesLoaded,
    TResult? Function(SubcategoriesResponse response)? subcategoriesLoaded,
    TResult? Function(ProductsResponse response)? productsLoaded,
    TResult? Function(List<CompaniesResponse> response)? companiesLoaded,
    TResult? Function(List<CompaniesResponse> response)? companiesFounded,
    TResult? Function(ProductsResponse response)? productsFounded,
  }) {
    return subcategoriesLoaded?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioException error)? failure,
    TResult Function()? loading,
    TResult Function(CategoriesResponse response)? categoriesLoaded,
    TResult Function(SubcategoriesResponse response)? subcategoriesLoaded,
    TResult Function(ProductsResponse response)? productsLoaded,
    TResult Function(List<CompaniesResponse> response)? companiesLoaded,
    TResult Function(List<CompaniesResponse> response)? companiesFounded,
    TResult Function(ProductsResponse response)? productsFounded,
    required TResult orElse(),
  }) {
    if (subcategoriesLoaded != null) {
      return subcategoriesLoaded(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CategoriesLoaded value) categoriesLoaded,
    required TResult Function(_SubcategoriesLoaded value) subcategoriesLoaded,
    required TResult Function(_ProductsLoaded value) productsLoaded,
    required TResult Function(_CompaniesLoaded value) companiesLoaded,
    required TResult Function(_CompaniesFounded value) companiesFounded,
    required TResult Function(_ProductsFounded value) productsFounded,
  }) {
    return subcategoriesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CategoriesLoaded value)? categoriesLoaded,
    TResult? Function(_SubcategoriesLoaded value)? subcategoriesLoaded,
    TResult? Function(_ProductsLoaded value)? productsLoaded,
    TResult? Function(_CompaniesLoaded value)? companiesLoaded,
    TResult? Function(_CompaniesFounded value)? companiesFounded,
    TResult? Function(_ProductsFounded value)? productsFounded,
  }) {
    return subcategoriesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_CategoriesLoaded value)? categoriesLoaded,
    TResult Function(_SubcategoriesLoaded value)? subcategoriesLoaded,
    TResult Function(_ProductsLoaded value)? productsLoaded,
    TResult Function(_CompaniesLoaded value)? companiesLoaded,
    TResult Function(_CompaniesFounded value)? companiesFounded,
    TResult Function(_ProductsFounded value)? productsFounded,
    required TResult orElse(),
  }) {
    if (subcategoriesLoaded != null) {
      return subcategoriesLoaded(this);
    }
    return orElse();
  }
}

abstract class _SubcategoriesLoaded implements SearchState {
  const factory _SubcategoriesLoaded(final SubcategoriesResponse response) =
      _$SubcategoriesLoadedImpl;

  SubcategoriesResponse get response;
  @JsonKey(ignore: true)
  _$$SubcategoriesLoadedImplCopyWith<_$SubcategoriesLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductsLoadedImplCopyWith<$Res> {
  factory _$$ProductsLoadedImplCopyWith(_$ProductsLoadedImpl value,
          $Res Function(_$ProductsLoadedImpl) then) =
      __$$ProductsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductsResponse response});
}

/// @nodoc
class __$$ProductsLoadedImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$ProductsLoadedImpl>
    implements _$$ProductsLoadedImplCopyWith<$Res> {
  __$$ProductsLoadedImplCopyWithImpl(
      _$ProductsLoadedImpl _value, $Res Function(_$ProductsLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$ProductsLoadedImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ProductsResponse,
    ));
  }
}

/// @nodoc

class _$ProductsLoadedImpl implements _ProductsLoaded {
  const _$ProductsLoadedImpl(this.response);

  @override
  final ProductsResponse response;

  @override
  String toString() {
    return 'SearchState.productsLoaded(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsLoadedImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsLoadedImplCopyWith<_$ProductsLoadedImpl> get copyWith =>
      __$$ProductsLoadedImplCopyWithImpl<_$ProductsLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioException error) failure,
    required TResult Function() loading,
    required TResult Function(CategoriesResponse response) categoriesLoaded,
    required TResult Function(SubcategoriesResponse response)
        subcategoriesLoaded,
    required TResult Function(ProductsResponse response) productsLoaded,
    required TResult Function(List<CompaniesResponse> response) companiesLoaded,
    required TResult Function(List<CompaniesResponse> response)
        companiesFounded,
    required TResult Function(ProductsResponse response) productsFounded,
  }) {
    return productsLoaded(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioException error)? failure,
    TResult? Function()? loading,
    TResult? Function(CategoriesResponse response)? categoriesLoaded,
    TResult? Function(SubcategoriesResponse response)? subcategoriesLoaded,
    TResult? Function(ProductsResponse response)? productsLoaded,
    TResult? Function(List<CompaniesResponse> response)? companiesLoaded,
    TResult? Function(List<CompaniesResponse> response)? companiesFounded,
    TResult? Function(ProductsResponse response)? productsFounded,
  }) {
    return productsLoaded?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioException error)? failure,
    TResult Function()? loading,
    TResult Function(CategoriesResponse response)? categoriesLoaded,
    TResult Function(SubcategoriesResponse response)? subcategoriesLoaded,
    TResult Function(ProductsResponse response)? productsLoaded,
    TResult Function(List<CompaniesResponse> response)? companiesLoaded,
    TResult Function(List<CompaniesResponse> response)? companiesFounded,
    TResult Function(ProductsResponse response)? productsFounded,
    required TResult orElse(),
  }) {
    if (productsLoaded != null) {
      return productsLoaded(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CategoriesLoaded value) categoriesLoaded,
    required TResult Function(_SubcategoriesLoaded value) subcategoriesLoaded,
    required TResult Function(_ProductsLoaded value) productsLoaded,
    required TResult Function(_CompaniesLoaded value) companiesLoaded,
    required TResult Function(_CompaniesFounded value) companiesFounded,
    required TResult Function(_ProductsFounded value) productsFounded,
  }) {
    return productsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CategoriesLoaded value)? categoriesLoaded,
    TResult? Function(_SubcategoriesLoaded value)? subcategoriesLoaded,
    TResult? Function(_ProductsLoaded value)? productsLoaded,
    TResult? Function(_CompaniesLoaded value)? companiesLoaded,
    TResult? Function(_CompaniesFounded value)? companiesFounded,
    TResult? Function(_ProductsFounded value)? productsFounded,
  }) {
    return productsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_CategoriesLoaded value)? categoriesLoaded,
    TResult Function(_SubcategoriesLoaded value)? subcategoriesLoaded,
    TResult Function(_ProductsLoaded value)? productsLoaded,
    TResult Function(_CompaniesLoaded value)? companiesLoaded,
    TResult Function(_CompaniesFounded value)? companiesFounded,
    TResult Function(_ProductsFounded value)? productsFounded,
    required TResult orElse(),
  }) {
    if (productsLoaded != null) {
      return productsLoaded(this);
    }
    return orElse();
  }
}

abstract class _ProductsLoaded implements SearchState {
  const factory _ProductsLoaded(final ProductsResponse response) =
      _$ProductsLoadedImpl;

  ProductsResponse get response;
  @JsonKey(ignore: true)
  _$$ProductsLoadedImplCopyWith<_$ProductsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompaniesLoadedImplCopyWith<$Res> {
  factory _$$CompaniesLoadedImplCopyWith(_$CompaniesLoadedImpl value,
          $Res Function(_$CompaniesLoadedImpl) then) =
      __$$CompaniesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CompaniesResponse> response});
}

/// @nodoc
class __$$CompaniesLoadedImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$CompaniesLoadedImpl>
    implements _$$CompaniesLoadedImplCopyWith<$Res> {
  __$$CompaniesLoadedImplCopyWithImpl(
      _$CompaniesLoadedImpl _value, $Res Function(_$CompaniesLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$CompaniesLoadedImpl(
      null == response
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<CompaniesResponse>,
    ));
  }
}

/// @nodoc

class _$CompaniesLoadedImpl implements _CompaniesLoaded {
  const _$CompaniesLoadedImpl(final List<CompaniesResponse> response)
      : _response = response;

  final List<CompaniesResponse> _response;
  @override
  List<CompaniesResponse> get response {
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_response);
  }

  @override
  String toString() {
    return 'SearchState.companiesLoaded(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompaniesLoadedImpl &&
            const DeepCollectionEquality().equals(other._response, _response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_response));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompaniesLoadedImplCopyWith<_$CompaniesLoadedImpl> get copyWith =>
      __$$CompaniesLoadedImplCopyWithImpl<_$CompaniesLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioException error) failure,
    required TResult Function() loading,
    required TResult Function(CategoriesResponse response) categoriesLoaded,
    required TResult Function(SubcategoriesResponse response)
        subcategoriesLoaded,
    required TResult Function(ProductsResponse response) productsLoaded,
    required TResult Function(List<CompaniesResponse> response) companiesLoaded,
    required TResult Function(List<CompaniesResponse> response)
        companiesFounded,
    required TResult Function(ProductsResponse response) productsFounded,
  }) {
    return companiesLoaded(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioException error)? failure,
    TResult? Function()? loading,
    TResult? Function(CategoriesResponse response)? categoriesLoaded,
    TResult? Function(SubcategoriesResponse response)? subcategoriesLoaded,
    TResult? Function(ProductsResponse response)? productsLoaded,
    TResult? Function(List<CompaniesResponse> response)? companiesLoaded,
    TResult? Function(List<CompaniesResponse> response)? companiesFounded,
    TResult? Function(ProductsResponse response)? productsFounded,
  }) {
    return companiesLoaded?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioException error)? failure,
    TResult Function()? loading,
    TResult Function(CategoriesResponse response)? categoriesLoaded,
    TResult Function(SubcategoriesResponse response)? subcategoriesLoaded,
    TResult Function(ProductsResponse response)? productsLoaded,
    TResult Function(List<CompaniesResponse> response)? companiesLoaded,
    TResult Function(List<CompaniesResponse> response)? companiesFounded,
    TResult Function(ProductsResponse response)? productsFounded,
    required TResult orElse(),
  }) {
    if (companiesLoaded != null) {
      return companiesLoaded(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CategoriesLoaded value) categoriesLoaded,
    required TResult Function(_SubcategoriesLoaded value) subcategoriesLoaded,
    required TResult Function(_ProductsLoaded value) productsLoaded,
    required TResult Function(_CompaniesLoaded value) companiesLoaded,
    required TResult Function(_CompaniesFounded value) companiesFounded,
    required TResult Function(_ProductsFounded value) productsFounded,
  }) {
    return companiesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CategoriesLoaded value)? categoriesLoaded,
    TResult? Function(_SubcategoriesLoaded value)? subcategoriesLoaded,
    TResult? Function(_ProductsLoaded value)? productsLoaded,
    TResult? Function(_CompaniesLoaded value)? companiesLoaded,
    TResult? Function(_CompaniesFounded value)? companiesFounded,
    TResult? Function(_ProductsFounded value)? productsFounded,
  }) {
    return companiesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_CategoriesLoaded value)? categoriesLoaded,
    TResult Function(_SubcategoriesLoaded value)? subcategoriesLoaded,
    TResult Function(_ProductsLoaded value)? productsLoaded,
    TResult Function(_CompaniesLoaded value)? companiesLoaded,
    TResult Function(_CompaniesFounded value)? companiesFounded,
    TResult Function(_ProductsFounded value)? productsFounded,
    required TResult orElse(),
  }) {
    if (companiesLoaded != null) {
      return companiesLoaded(this);
    }
    return orElse();
  }
}

abstract class _CompaniesLoaded implements SearchState {
  const factory _CompaniesLoaded(final List<CompaniesResponse> response) =
      _$CompaniesLoadedImpl;

  List<CompaniesResponse> get response;
  @JsonKey(ignore: true)
  _$$CompaniesLoadedImplCopyWith<_$CompaniesLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompaniesFoundedImplCopyWith<$Res> {
  factory _$$CompaniesFoundedImplCopyWith(_$CompaniesFoundedImpl value,
          $Res Function(_$CompaniesFoundedImpl) then) =
      __$$CompaniesFoundedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CompaniesResponse> response});
}

/// @nodoc
class __$$CompaniesFoundedImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$CompaniesFoundedImpl>
    implements _$$CompaniesFoundedImplCopyWith<$Res> {
  __$$CompaniesFoundedImplCopyWithImpl(_$CompaniesFoundedImpl _value,
      $Res Function(_$CompaniesFoundedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$CompaniesFoundedImpl(
      null == response
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<CompaniesResponse>,
    ));
  }
}

/// @nodoc

class _$CompaniesFoundedImpl implements _CompaniesFounded {
  const _$CompaniesFoundedImpl(final List<CompaniesResponse> response)
      : _response = response;

  final List<CompaniesResponse> _response;
  @override
  List<CompaniesResponse> get response {
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_response);
  }

  @override
  String toString() {
    return 'SearchState.companiesFounded(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompaniesFoundedImpl &&
            const DeepCollectionEquality().equals(other._response, _response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_response));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompaniesFoundedImplCopyWith<_$CompaniesFoundedImpl> get copyWith =>
      __$$CompaniesFoundedImplCopyWithImpl<_$CompaniesFoundedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioException error) failure,
    required TResult Function() loading,
    required TResult Function(CategoriesResponse response) categoriesLoaded,
    required TResult Function(SubcategoriesResponse response)
        subcategoriesLoaded,
    required TResult Function(ProductsResponse response) productsLoaded,
    required TResult Function(List<CompaniesResponse> response) companiesLoaded,
    required TResult Function(List<CompaniesResponse> response)
        companiesFounded,
    required TResult Function(ProductsResponse response) productsFounded,
  }) {
    return companiesFounded(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioException error)? failure,
    TResult? Function()? loading,
    TResult? Function(CategoriesResponse response)? categoriesLoaded,
    TResult? Function(SubcategoriesResponse response)? subcategoriesLoaded,
    TResult? Function(ProductsResponse response)? productsLoaded,
    TResult? Function(List<CompaniesResponse> response)? companiesLoaded,
    TResult? Function(List<CompaniesResponse> response)? companiesFounded,
    TResult? Function(ProductsResponse response)? productsFounded,
  }) {
    return companiesFounded?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioException error)? failure,
    TResult Function()? loading,
    TResult Function(CategoriesResponse response)? categoriesLoaded,
    TResult Function(SubcategoriesResponse response)? subcategoriesLoaded,
    TResult Function(ProductsResponse response)? productsLoaded,
    TResult Function(List<CompaniesResponse> response)? companiesLoaded,
    TResult Function(List<CompaniesResponse> response)? companiesFounded,
    TResult Function(ProductsResponse response)? productsFounded,
    required TResult orElse(),
  }) {
    if (companiesFounded != null) {
      return companiesFounded(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CategoriesLoaded value) categoriesLoaded,
    required TResult Function(_SubcategoriesLoaded value) subcategoriesLoaded,
    required TResult Function(_ProductsLoaded value) productsLoaded,
    required TResult Function(_CompaniesLoaded value) companiesLoaded,
    required TResult Function(_CompaniesFounded value) companiesFounded,
    required TResult Function(_ProductsFounded value) productsFounded,
  }) {
    return companiesFounded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CategoriesLoaded value)? categoriesLoaded,
    TResult? Function(_SubcategoriesLoaded value)? subcategoriesLoaded,
    TResult? Function(_ProductsLoaded value)? productsLoaded,
    TResult? Function(_CompaniesLoaded value)? companiesLoaded,
    TResult? Function(_CompaniesFounded value)? companiesFounded,
    TResult? Function(_ProductsFounded value)? productsFounded,
  }) {
    return companiesFounded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_CategoriesLoaded value)? categoriesLoaded,
    TResult Function(_SubcategoriesLoaded value)? subcategoriesLoaded,
    TResult Function(_ProductsLoaded value)? productsLoaded,
    TResult Function(_CompaniesLoaded value)? companiesLoaded,
    TResult Function(_CompaniesFounded value)? companiesFounded,
    TResult Function(_ProductsFounded value)? productsFounded,
    required TResult orElse(),
  }) {
    if (companiesFounded != null) {
      return companiesFounded(this);
    }
    return orElse();
  }
}

abstract class _CompaniesFounded implements SearchState {
  const factory _CompaniesFounded(final List<CompaniesResponse> response) =
      _$CompaniesFoundedImpl;

  List<CompaniesResponse> get response;
  @JsonKey(ignore: true)
  _$$CompaniesFoundedImplCopyWith<_$CompaniesFoundedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductsFoundedImplCopyWith<$Res> {
  factory _$$ProductsFoundedImplCopyWith(_$ProductsFoundedImpl value,
          $Res Function(_$ProductsFoundedImpl) then) =
      __$$ProductsFoundedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductsResponse response});
}

/// @nodoc
class __$$ProductsFoundedImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$ProductsFoundedImpl>
    implements _$$ProductsFoundedImplCopyWith<$Res> {
  __$$ProductsFoundedImplCopyWithImpl(
      _$ProductsFoundedImpl _value, $Res Function(_$ProductsFoundedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$ProductsFoundedImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ProductsResponse,
    ));
  }
}

/// @nodoc

class _$ProductsFoundedImpl implements _ProductsFounded {
  const _$ProductsFoundedImpl(this.response);

  @override
  final ProductsResponse response;

  @override
  String toString() {
    return 'SearchState.productsFounded(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsFoundedImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsFoundedImplCopyWith<_$ProductsFoundedImpl> get copyWith =>
      __$$ProductsFoundedImplCopyWithImpl<_$ProductsFoundedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioException error) failure,
    required TResult Function() loading,
    required TResult Function(CategoriesResponse response) categoriesLoaded,
    required TResult Function(SubcategoriesResponse response)
        subcategoriesLoaded,
    required TResult Function(ProductsResponse response) productsLoaded,
    required TResult Function(List<CompaniesResponse> response) companiesLoaded,
    required TResult Function(List<CompaniesResponse> response)
        companiesFounded,
    required TResult Function(ProductsResponse response) productsFounded,
  }) {
    return productsFounded(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioException error)? failure,
    TResult? Function()? loading,
    TResult? Function(CategoriesResponse response)? categoriesLoaded,
    TResult? Function(SubcategoriesResponse response)? subcategoriesLoaded,
    TResult? Function(ProductsResponse response)? productsLoaded,
    TResult? Function(List<CompaniesResponse> response)? companiesLoaded,
    TResult? Function(List<CompaniesResponse> response)? companiesFounded,
    TResult? Function(ProductsResponse response)? productsFounded,
  }) {
    return productsFounded?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioException error)? failure,
    TResult Function()? loading,
    TResult Function(CategoriesResponse response)? categoriesLoaded,
    TResult Function(SubcategoriesResponse response)? subcategoriesLoaded,
    TResult Function(ProductsResponse response)? productsLoaded,
    TResult Function(List<CompaniesResponse> response)? companiesLoaded,
    TResult Function(List<CompaniesResponse> response)? companiesFounded,
    TResult Function(ProductsResponse response)? productsFounded,
    required TResult orElse(),
  }) {
    if (productsFounded != null) {
      return productsFounded(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CategoriesLoaded value) categoriesLoaded,
    required TResult Function(_SubcategoriesLoaded value) subcategoriesLoaded,
    required TResult Function(_ProductsLoaded value) productsLoaded,
    required TResult Function(_CompaniesLoaded value) companiesLoaded,
    required TResult Function(_CompaniesFounded value) companiesFounded,
    required TResult Function(_ProductsFounded value) productsFounded,
  }) {
    return productsFounded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CategoriesLoaded value)? categoriesLoaded,
    TResult? Function(_SubcategoriesLoaded value)? subcategoriesLoaded,
    TResult? Function(_ProductsLoaded value)? productsLoaded,
    TResult? Function(_CompaniesLoaded value)? companiesLoaded,
    TResult? Function(_CompaniesFounded value)? companiesFounded,
    TResult? Function(_ProductsFounded value)? productsFounded,
  }) {
    return productsFounded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_CategoriesLoaded value)? categoriesLoaded,
    TResult Function(_SubcategoriesLoaded value)? subcategoriesLoaded,
    TResult Function(_ProductsLoaded value)? productsLoaded,
    TResult Function(_CompaniesLoaded value)? companiesLoaded,
    TResult Function(_CompaniesFounded value)? companiesFounded,
    TResult Function(_ProductsFounded value)? productsFounded,
    required TResult orElse(),
  }) {
    if (productsFounded != null) {
      return productsFounded(this);
    }
    return orElse();
  }
}

abstract class _ProductsFounded implements SearchState {
  const factory _ProductsFounded(final ProductsResponse response) =
      _$ProductsFoundedImpl;

  ProductsResponse get response;
  @JsonKey(ignore: true)
  _$$ProductsFoundedImplCopyWith<_$ProductsFoundedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
