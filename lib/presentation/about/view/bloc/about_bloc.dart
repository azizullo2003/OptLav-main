import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:optlove/presentation/about/domain/response/about_response.dart';
import 'package:optlove/presentation/main/domain/repositories/search_repository.dart';

part 'about_event.dart';
part 'about_state.dart';
part 'about_bloc.freezed.dart';

@injectable
class AboutBloc extends Bloc<AboutEvent, AboutState> {
  final SearchRepository repository;

  AboutBloc(this.repository) : super(const AboutState.loading()) {
    on<AboutEvent>((event, emit) async {
      emit(const AboutState.loading());
      await event.when<Future<void>>(
          getAbout: () async => (await repository.getAbout()).fold(
                (l) => emit(AboutState.failure(l)),
                (r) => emit(AboutState.loaded(r)),
          )
      );
    });
  }
}
