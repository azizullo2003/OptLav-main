import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:optlove/core/standart_post_response.dart';
import 'package:optlove/presentation/registration/domain/repositories/registration_repository.dart';


part 'registration_event.dart';
part 'registration_state.dart';
part 'registration_bloc.freezed.dart';

@injectable
class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final RegistrationRepository repository;

  RegistrationBloc(this.repository) : super(const RegistrationState.loading()) {
    on<RegistrationEvent>((event, emit) async {
      emit(const RegistrationState.loading());
      await event.when<Future<void>>(
          register: (phone, email, city_id, city, os) async =>
              (await repository.register(phone, email, city_id, city, os)).fold(
                (l) => emit(RegistrationState.failure(l)),
                (r) => emit(RegistrationState.loaded(r)),
              ),
          restorePass: (phone) async => (await repository.restorePass(phone)).fold(
                (l) => emit(RegistrationState.failure(l)),
                (r) => emit(RegistrationState.loaded(r)),
          )
      );
    });
  }
}
