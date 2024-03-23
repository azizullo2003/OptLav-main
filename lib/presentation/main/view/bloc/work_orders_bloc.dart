import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../orders/domain/enteties/orders_response.dart';
import '../../../orders/domain/repositories/orders_repository.dart';

part 'work_orders_event.dart';
part 'work_orders_state.dart';
part 'work_orders_bloc.freezed.dart';

@injectable
class WorkOrdersBloc extends Bloc<WorkOrdersEvent, WorkOrdersState> {
  final OrdersRepository repository;
  WorkOrdersBloc(this.repository) : super(const WorkOrdersState.loading()) {
    on<WorkOrdersEvent>((event, emit) async {
      emit(const WorkOrdersState.loading());
      await event.when<Future<void>>(
        getWorkingOrders: () async =>
            (await repository.getWorkingOrders()).fold(
                  (l) => emit(WorkOrdersState.failure(l)),
                  (r) => emit(WorkOrdersState.workingOrdersLoaded(r)),
            ),
      );
    });
  }
}
