import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:optlove/presentation/ads/domain/entities/ads_response.dart';
import 'package:optlove/presentation/ads/domain/repositories/ads_repository.dart';

part 'ads_fetch_my_ads_bloc.freezed.dart';
part 'ads_fetch_my_ads_event.dart';
part 'ads_fetch_my_ads_state.dart';

@injectable
class AdsFetchMyAdsBloc extends Bloc<AdsFetchMyAdsEvent, AdsFetchMyAdsState> {
  final AdsRepository repository;

  AdsFetchMyAdsBloc(this.repository)
      : super(const AdsFetchMyAdsState.initial()) {
    on<FetchMyAds>((event, emit) async {
      emit(const AdsFetchMyAdsState.loading());
      final result = await repository.getMyAds(
        sort: event.sort,
        poisk: event.poisk,
      );
      result.fold(
        (l) => emit(AdsFetchMyAdsState.failure(l)),
        (r) => emit(AdsFetchMyAdsState.loaded(r)),
      );
    });
  }
}
