import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:optlove/presentation/ads/domain/entities/ads_function_response.dart';
import 'package:optlove/presentation/ads/domain/repositories/ads_repository.dart';

part 'edit_ad_bloc.freezed.dart';
part 'edit_ad_event.dart';
part 'edit_ad_state.dart';

@injectable
class EditAdBloc extends Bloc<EditAdEvent, EditAdState> {
  final AdsRepository repository;

  EditAdBloc(this.repository) : super(const EditAdState.initial()) {
    on<EditAd>((event, emit) async {
      emit(const EditAdState.loading());
      final result = await repository.updateAd(
        event.adId,
        event.userId,
        event.type1,
        event.type2,
        event.categoryId,
        event.subcategoryId,
        event.name,
        event.description,
        event.cityId,
        event.price,
        event.phone,
        event.email,
        event.images,
        event.name_firm,
      );
      result.fold(
        (l) => emit(EditAdState.failure(l)),
        (r) => emit(EditAdState.success(r)),
      );
    });
  }
}
