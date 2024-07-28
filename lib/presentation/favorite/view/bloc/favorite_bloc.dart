import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:optlove/core/standart_post_response.dart';
import 'package:optlove/presentation/favorite/domain/enteties/favorite_products_response.dart';
import 'package:optlove/presentation/profile/domain/repositories/user_repository.dart';

import '../../../main/domain/repositories/search_repository.dart';
import '../../domain/enteties/favorite_response.dart';

part 'favorite_event.dart';
part 'favorite_state.dart';
part 'favorite_bloc.freezed.dart';

@injectable
class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  final SearchRepository repository;
  final UserRepository userRepository;
  FavoriteBloc(this.repository, this.userRepository)
      : super(const FavoriteState.loading()) {
    on<FavoriteEvent>((event, emit) async {
      emit(const FavoriteState.loading());
      await event.when<Future<void>>(
        getFavoriteCompanies: () async =>
            (await repository.getFavoriteCompanies()).fold(
          (l) => emit(FavoriteState.failure(l)),
          (r) => emit(FavoriteState.companiesLoaded(r)),
        ),
        addToFavorite: (firmId) async =>
            (await userRepository.addToFavorite(firmId)).fold(
          (l) => emit(FavoriteState.failure(l)),
          (r) => emit(FavoriteState.companyAdded(r)),
        ),
        removeFromFavorite: (firmId) async =>
            (await userRepository.removeFromFavorite(firmId)).fold(
          (l) => emit(FavoriteState.failure(l)),
          (r) => emit(FavoriteState.companyRemoved(r)),
        ),
        getFavoriteProducts: () async =>
            (await repository.getFavoriteProducts()).fold(
          (l) => emit(FavoriteState.failure(l)),
          (r) => emit(FavoriteState.productsLoaded(r)),
        ),
        removeProductFromFavorite: (firmId, productId) async =>
            (await userRepository.removeProductFromFavorite(firmId, productId))
                .fold(
          (l) => emit(FavoriteState.failure(l)),
          (r) => emit(FavoriteState.productRemoved(r)),
        ),
        addProductToFavorite: (firmId, productId) async =>
            (await userRepository.addProductToFavorite(firmId, productId)).fold(
          (l) => emit(FavoriteState.failure(l)),
          (r) => emit(FavoriteState.productAdded(r)),
        ),
      );
    });
  }
}
