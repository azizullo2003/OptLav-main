import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/enteties/conditions_response.dart';
import '../../domain/repositories/orders_repository.dart';

part 'conditions_event.dart';
part 'conditions_state.dart';
part 'conditions_bloc.freezed.dart';

@injectable
class ConditionsBloc extends Bloc<ConditionsEvent, ConditionsState> {
  final OrdersRepository repository;

  ConditionsBloc(this.repository) : super(const ConditionsState.loading()) {
    on<ConditionsEvent>((event, emit) async {
      emit(const ConditionsState.loading());
      await event.when<Future<void>>(
        getConditions: (firmId) async => (await repository.getConditions(firmId)).fold(
              (l) => emit(ConditionsState.failure(l)),
              (r) => emit(ConditionsState.loaded(r)),
        )
      );
    });
  }
}
