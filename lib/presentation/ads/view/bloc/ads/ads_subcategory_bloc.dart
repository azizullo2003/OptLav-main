import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:optlove/presentation/ads/domain/entities/ads_category_response.dart';
import 'package:optlove/presentation/ads/domain/repositories/ads_repository.dart';

part 'ads_subcategory_bloc.freezed.dart';
part 'ads_subcategory_event.dart';
part 'ads_subcategory_state.dart';

@injectable
class AdsSubcategoryBloc
    extends Bloc<AdsSubcategoryEvent, AdsSubcategoryState> {
  final AdsRepository repository;

  AdsSubcategoryBloc(this.repository)
      : super(const AdsSubcategoryState.initial()) {
    on<FetchSubcategoriesByCategoryId>((event, emit) async {
      emit(const AdsSubcategoryState.loading());
      final result =
          await repository.getAdsSubcategoryByCategory(event.categoryId);
      result.fold(
        (l) => emit(AdsSubcategoryState.failure(l)),
        (r) => emit(AdsSubcategoryState.loaded(r)),
      );
    });
  }
}
