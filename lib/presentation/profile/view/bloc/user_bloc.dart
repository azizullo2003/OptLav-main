import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:optlove/presentation/profile/domain/models/inn_response.dart';
import 'package:optlove/presentation/profile/domain/models/user_change_response.dart';
import 'package:optlove/presentation/profile/domain/repositories/user_repository.dart';

import '../../../registration/domain/entities/user_info_response.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository repository;

  UserBloc(this.repository) : super(const UserState.loading()) {
    on<UserEvent>((event, emit) async {
      emit(const UserState.loading());
      await event.when<Future<void>>(
          getUserData: () async => (await repository.getUserInfo()).fold(
                (l) => emit(UserState.failure(l)),
                (r) => emit(UserState.loaded(r)),
              ),
          changeUserInfo: (List<String> fields, List<String> values,
                  List<String> regions) async =>
              (await repository.changeUserInfo(fields, values, regions)).fold(
                (l) => emit(UserState.failure(l)),
                (r) => emit(UserState.dataChanged(r)),
              ),
          innSearch: (inn) async => (await repository.innSearch(inn)).fold(
                (l) => emit(UserState.failure(l)),
                (r) => emit(UserState.innLoaded(r)),
              ),
          deleteUser: () async => (await repository.deleteUser()).fold(
                (l) => emit(UserState.failure(l)),
                (r) => emit(UserState.userDeleted(r)),
              ));
    });
  }
}
