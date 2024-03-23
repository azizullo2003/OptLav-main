import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:optlove/presentation/main/domain/repositories/search_repository.dart';

import '../../enteties/static_response.dart';

part 'static_event.dart';
part 'static_state.dart';
part 'static_bloc.freezed.dart';

@injectable
class StaticBloc extends Bloc<StaticEvent, StaticState> {
  final SearchRepository repository;

  StaticBloc(this.repository) : super(const StaticState.loading()) {
    on<StaticEvent>((event, emit) async {
      emit(const StaticState.loading());
      await event.when<Future<void>>(
          getStatic: () async => (await repository.getStatic()).fold(
                (l) => emit(StaticState.failure(l)),
                (r) => emit(StaticState.loaded(r)),
          ),
      );
    });
  }
}