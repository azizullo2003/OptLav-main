part of 'action_bloc.dart';

@freezed
class ActionsState with _$ActionsState{
  const factory ActionsState.failure(DioError error) = _Failure;
  const factory ActionsState.loading() = _Loading;
  const factory ActionsState.actionsLoaded(ActionsResponse response) = _ActionsLoaded;
}
