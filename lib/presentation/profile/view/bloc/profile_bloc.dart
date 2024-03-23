import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../registration/domain/entities/user_info_response.dart';
import '../../domain/models/inn_response.dart';
import '../../domain/models/user_change_response.dart';
import '../../domain/repositories/user_repository.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final UserRepository repository;

  ProfileBloc(this.repository) : super(const ProfileState.loading()) {
    on<ProfileEvent>((event, emit) async {
      emit(const ProfileState.loading());
      await event.when<Future<void>>(
          getUserData: () async => (await repository.getUserInfo()).fold(
                (l) => emit(ProfileState.failure(l)),
                (r) => emit(ProfileState.loaded(r)),
          ),
          changeUserInfo: (List<String> fields,
              List<String> values, List<String> regions) async =>
              (await repository.changeUserInfo(fields, values, regions))
                  .fold(
                    (l) => emit(ProfileState.failure(l)),
                    (r) => emit(ProfileState.dataChanged(r)),
              ),

          innSearch: (inn) async => (await repository.innSearch(inn)).fold(
                (l) => emit(ProfileState.failure(l)),
                (r) => emit(ProfileState.innLoaded(r)),
          ),
          deleteUser: () async => (await repository.deleteUser()).fold(
                (l) => emit(ProfileState.failure(l)),
                (r) => emit(ProfileState.userDeleted(r)),
          ));
    });
  }
}
