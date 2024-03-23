import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:optlove/core/standart_post_response.dart';

import '../../../profile/domain/repositories/user_repository.dart';

part 'user_exist_event.dart';
part 'user_exist_state.dart';
part 'user_exist_bloc.freezed.dart';

@injectable
class UserExistBloc extends Bloc<UserExistEvent, UserExistState> {
  final UserRepository repository;
  UserExistBloc(this.repository) : super(const UserExistState.loading()) {
    on<UserExistEvent>((event, emit) async {
      emit(const UserExistState.loading());
      await event.when<Future<void>>(
        getUserExist: () async =>
          (await repository.getUserExist()).fold(
                (l) => emit(UserExistState.failure(l)),
                (r) => emit(UserExistState.isUserExist(r)),
          ),
      );
    });
  }
}
