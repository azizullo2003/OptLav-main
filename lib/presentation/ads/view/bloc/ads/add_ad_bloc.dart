import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:optlove/presentation/ads/domain/entities/ads_function_response.dart';
import 'package:optlove/presentation/ads/domain/repositories/ads_repository.dart';

part 'add_ad_bloc.freezed.dart';
part 'add_ad_event.dart';
part 'add_ad_state.dart';

@injectable
class AddAdBloc extends Bloc<AddAdEvent, AddAdState> {
  final AdsRepository repository;

  AddAdBloc(this.repository) : super(const AddAdState.initial()) {
    on<AddAd>((event, emit) async {
      emit(const AddAdState.loading());
      final result = await repository.createAd(
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
      );
      result.fold(
        (l) => emit(AddAdState.failure(l)),
        (r) => emit(AddAdState.success(r)),
      );
    });
  }
}
