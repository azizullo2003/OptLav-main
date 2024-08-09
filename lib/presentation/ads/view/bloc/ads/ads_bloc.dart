import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:optlove/presentation/ads/domain/entities/ads_response.dart';
import 'package:optlove/presentation/ads/domain/repositories/ads_repository.dart';

part 'ads_bloc.freezed.dart';
part 'ads_event.dart';
part 'ads_state.dart';

@injectable
class AdsBloc extends Bloc<AdsEvent, AdsState> {
  final AdsRepository repository;

  AdsBloc(this.repository) : super(const AdsState.initial()) {
    on<FetchAds>((event, emit) async {
      emit(const AdsState.loading());
      final result = await repository.getAds(
        type: event.type,
        sort: event.sort,
        category: event.category,
        my: event.my,
        userId: event.userId,
        poisk: event.poisk,
      );
      result.fold(
        (l) => emit(AdsState.failure(l)),
        (r) => emit(AdsState.loaded(r)),
      );
    });
  }
}
