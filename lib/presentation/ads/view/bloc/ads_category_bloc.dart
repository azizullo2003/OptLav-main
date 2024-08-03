import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:optlove/presentation/ads/domain/entities/ads_category_response.dart';
import 'package:optlove/presentation/ads/domain/repositories/ads_category_repository.dart';

part 'ads_category_bloc.freezed.dart';
part 'ads_category_event.dart';
part 'ads_category_state.dart';

@injectable
class AdsCategoryBloc extends Bloc<AdsCategoryEvent, AdsCategoryState> {
  final AdsRepository repository;

  AdsCategoryBloc(this.repository) : super(const AdsCategoryState.initial()) {
    on<FetchCategories>((event, emit) async {
      emit(const AdsCategoryState.loading());
      final result = await repository.getAdsCategory();
      result.fold(
        (l) => emit(AdsCategoryState.failure(l)),
        (r) => emit(AdsCategoryState.loaded(r)),
      );
    });
  }
}
