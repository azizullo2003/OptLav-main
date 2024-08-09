import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:optlove/presentation/ads/domain/repositories/ads_repository.dart';

part 'delete_ad_bloc.freezed.dart';
part 'delete_ad_event.dart';
part 'delete_ad_state.dart';

@injectable
class DeleteAdBloc extends Bloc<DeleteAdEvent, DeleteAdState> {
  final AdsRepository repository;

  DeleteAdBloc(this.repository) : super(const DeleteAdState.initial()) {
    on<DeleteAd>((event, emit) async {
      emit(const DeleteAdState.loading());
      final result = await repository.deleteAd(event.adId);
      result.fold(
        (l) => emit(DeleteAdState.failure(l)),
        (r) => emit(const DeleteAdState.success()),
      );
    });
  }
}
