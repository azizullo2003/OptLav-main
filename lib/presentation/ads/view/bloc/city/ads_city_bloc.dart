import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:optlove/presentation/ads/domain/entities/ads_city_response.dart';
import 'package:optlove/presentation/ads/domain/repositories/ads_repository.dart';

part 'ads_city_bloc.freezed.dart';
part 'ads_city_event.dart';
part 'ads_city_state.dart';

@injectable
class AdsCityBloc extends Bloc<AdsCityEvent, AdsCityState> {
  final AdsRepository repository;

  AdsCityBloc(this.repository) : super(const AdsCityState.initial()) {
    on<FetchCity>((event, emit) async {
      emit(const AdsCityState.loading());
      final result = await repository.getCityById(id: event.cityId);
      result.fold(
        (l) => emit(AdsCityState.failure(l)),
        (r) => emit(AdsCityState.loaded(r)),
      );
    });
  }
}
