import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:optlove/presentation/main/domain/enteties/top_response.dart';

import '../../domain/repositories/search_repository.dart';

part 'top_event.dart';
part 'top_state.dart';
part 'top_bloc.freezed.dart';

@injectable
class TopBloc extends Bloc<TopEvent, TopState> {
  final SearchRepository repository;
  TopBloc(this.repository) : super(const TopState.loading()) {
    on<TopEvent>((event, emit) async {
      emit(const TopState.loading());
      await event.when<Future<void>>(
        getTop: () async => (await repository.getTop()).fold(
          (l) => emit(TopState.failure(l)),
          (r) => emit(TopState.topLoaded(r)),
        ),
      );
    });
  }
}
