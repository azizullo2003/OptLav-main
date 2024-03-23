import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:optlove/presentation/main/domain/enteties/products_response.dart';
import 'package:optlove/presentation/main/domain/enteties/subcategories_response.dart';
import 'package:optlove/presentation/main/domain/repositories/search_repository.dart';

import '../../domain/enteties/categories_response.dart';
import '../../domain/enteties/companies_response.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchRepository repository;

  SearchBloc(this.repository) : super(const SearchState.loading()) {
    on<SearchEvent>((event, emit) async {
      print("SearchBloc $event");
      emit(const SearchState.loading());
      await event.when<Future<void>>(
        getAllCategories: () async =>
            (await repository.getAllCategories()).fold(
          (l) => emit(SearchState.failure(l)),
          (r) => emit(SearchState.categoriesLoaded(r)),
        ),
        getAllSubcategories: (categoryId) async =>
            (await repository.getAllSubcategories(categoryId)).fold(
          (l) => emit(SearchState.failure(l)),
          (r) => emit(SearchState.subcategoriesLoaded(r)),
        ),
        getAllCompanies: () async => (await repository.getAllCompanies()).fold(
          (l) => emit(SearchState.failure(l)),
          (r) => emit(SearchState.companiesLoaded(r)),
        ),
        searchCompany: (searchText) async =>
            (await repository.companySearch(searchText)).fold(
          (l) => emit(SearchState.failure(l)),
          (r) => emit(SearchState.companiesFounded(r)),
        ),
        getCompanyCatalog: (companyId) async =>
            (await repository.getCompanyCatalog(companyId)).fold(
          (l) => emit(SearchState.failure(l)),
          (r) => emit(SearchState.categoriesLoaded(r)),
        ),
        getCompanyProductsByCategory:
            (String categoryId, String companyId) async => (await repository
                    .getCompanyProductsByCategory(categoryId, companyId))
                .fold(
          (l) => emit(SearchState.failure(l)),
          (r) => emit(SearchState.productsLoaded(r)),
        ),
        searchProducts: (request) async =>
            (await repository.searchProducts(request)).fold(
          (l) => emit(SearchState.failure(l)),
          (r) => emit(SearchState.productsFounded(r)),
        ),
        searchProductsByCompany: (request, companyId) async =>
            (await repository.searchProductsByCompany(request, companyId)).fold(
          (l) => emit(SearchState.failure(l)),
          (r) => emit(SearchState.productsFounded(r)),
        ),
        searchProductsByCompanyAndCategory:
            (request, companyId, categoryId) async =>
                (await repository.searchProductsByCompanyAndCategory(
                        request, companyId, categoryId))
                    .fold(
          (l) => emit(SearchState.failure(l)),
          (r) => emit(SearchState.productsFounded(r)),
        ),
        searchProductsByCategory: (request, categoryId) async =>
            (await repository.searchProductsByCategory(request, categoryId))
                .fold(
          (l) => emit(SearchState.failure(l)),
          (r) => emit(SearchState.productsFounded(r)),
        ),
        getProductsByCategory: (categoryId) async =>
            (await repository.getProductsByCategory(categoryId)).fold(
          (l) => emit(SearchState.failure(l)),
          (r) => emit(SearchState.productsLoaded(r)),
        ),
        searchCompanyById: (String firmId) async =>
            (await repository.searchCompanyById(firmId)).fold(
          (l) => emit(SearchState.failure(l)),
          (r) => emit(SearchState.companiesFounded(r)),
        ),
      );
    });
  }
}
