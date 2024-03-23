import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:optlove/core/standart_post_response.dart';

import '../../../profile/domain/repositories/user_repository.dart';

part 'support_event.dart';
part 'support_state.dart';
part 'support_bloc.freezed.dart';

@injectable
class SupportBloc extends Bloc<SupportEvent, SupportState> {
  final UserRepository repository;

  SupportBloc(this.repository) : super(const SupportState.loading()) {
    on<SupportEvent>((event, emit) async {
      emit(const SupportState.loading());
      await event.when<Future<void>>(
        sendMessage: (String email, String message) async => (
            await repository.sendMessage(email,message)).fold(
              (l) => emit(SupportState.failure(l)),
              (r) => emit(SupportState.messageSent(r)),
        ),
      );
    });
  }
}
