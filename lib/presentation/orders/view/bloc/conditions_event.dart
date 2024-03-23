part of 'conditions_bloc.dart';

@freezed
class ConditionsEvent with _$ConditionsEvent {
  const factory ConditionsEvent.getConditions(String firmId) = _GetConditions;
}
