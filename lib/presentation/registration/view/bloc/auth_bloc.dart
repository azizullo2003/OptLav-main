import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:optlove/presentation/registration/domain/entities/auth_response.dart';

import '../../domain/repositories/registration_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final RegistrationRepository repository;

  AuthBloc(this.repository) : super(const AuthState.loading()) {
    on<AuthEvent>((event, emit) async {
      emit(const AuthState.loading());
      await event.when<Future<void>>(
        auth: (login,password, os) async => (await repository.auth(login,password, os)).fold(
              (l) => emit(AuthState.failure(l)),
              (r) => emit(AuthState.loaded(r)),
        ),
      );
    });
  }
}
