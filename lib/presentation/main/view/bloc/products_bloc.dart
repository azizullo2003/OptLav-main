import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:optlove/presentation/main/domain/enteties/products_response.dart';
import 'package:optlove/presentation/main/domain/repositories/products_repository.dart';

part 'products_event.dart';
part 'products_state.dart';
part 'products_bloc.freezed.dart';

@injectable
class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  final ProductsRepository repository;

  ProductsBloc(this.repository) : super(const ProductsState.loading()) {
    on<ProductsEvent>((event, emit) async {
      emit(const ProductsState.loading());
      await event.when<Future<void>>(
        getProductsByCategory: (catalogId) async =>
            (await repository.getProductsByCategory(catalogId)).fold(
          (l) => emit(ProductsState.failure(l)),
          (r) => emit(ProductsState.loaded(r)),
        ),
      );
    });
  }
}
