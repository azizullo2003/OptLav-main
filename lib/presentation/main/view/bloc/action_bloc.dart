import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/enteties/actions_response.dart';
import '../../domain/repositories/search_repository.dart';

part 'action_event.dart';
part 'action_state.dart';
part 'action_bloc.freezed.dart';

@injectable
class ActionsBloc extends Bloc<ActionsEvent, ActionsState> {
  final SearchRepository repository;
  ActionsBloc(this.repository) : super(const ActionsState.loading()) {
    on<ActionsEvent>((event, emit) async {
      emit(const ActionsState.loading());
      await event.when<Future<void>>(
        getActions: () async => (await repository.getActions()).fold(
          (l) => emit(ActionsState.failure(l)),
          (r) => emit(ActionsState.actionsLoaded(r)),
        ),
      );
    });
  }
}
