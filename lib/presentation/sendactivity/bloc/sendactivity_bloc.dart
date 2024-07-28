import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../registration/domain/repositories/registration_repository.dart';

part 'sendactivity_event.dart';
part 'sendactivity_state.dart';
part 'sendactivity_bloc.freezed.dart';

@injectable
class SendActivityBloc extends Bloc<SendActivityEvent, SendActivityState> {
  final RegistrationRepository repository;

  SendActivityBloc(this.repository) : super(const SendActivityState.loading()) {
    on<SendActivityEvent>((event, emit) async {
      emit(const SendActivityState.loading());
      await event.when<Future<void>>(
        sendActivity: (screenName) async =>
            (await repository.sendActivity(screenName)).fold(
          (l) => emit(SendActivityState.failure(l)),
          (r) => emit(const SendActivityState.loaded()),
        ),
      );
    });
  }
}
