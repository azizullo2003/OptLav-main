part of 'conditions_bloc.dart';

@freezed
class ConditionsState with _$ConditionsState{
  const factory ConditionsState.failure(DioError error) = _Failure;
  const factory ConditionsState.loading() = _Loading;
  const factory ConditionsState.loaded(ConditionsResponse response) = _Loaded;
}
