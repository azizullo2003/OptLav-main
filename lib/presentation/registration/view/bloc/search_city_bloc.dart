import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:optlove/presentation/registration/domain/entities/cities_response.dart';

import '../../domain/repositories/registration_repository.dart';

part 'search_city_event.dart';
part 'search_city_state.dart';
part 'search_city_bloc.freezed.dart';

@injectable
class SearchCityBloc extends Bloc<SearchCityEvent, SearchCityState> {
  final RegistrationRepository repository;

  SearchCityBloc(this.repository) : super(const SearchCityState.loading()) {
    on<SearchCityEvent>((event, emit) async {
      emit(const SearchCityState.loading());
      await event.when<Future<void>>(
        searchCity: (city) async => (await repository.citySearch(city)).fold(
              (l) => emit(SearchCityState.failure(l)),
              (r) => emit(SearchCityState.loaded(r)),
        ),
      );
    });
  }
}
