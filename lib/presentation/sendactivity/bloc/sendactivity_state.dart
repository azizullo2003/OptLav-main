part of 'sendactivity_bloc.dart';

@freezed
class SendActivityState with _$SendActivityState{
  const factory SendActivityState.failure(DioError error) = _Failure;
  const factory SendActivityState.loading() = _Loading;
  const factory SendActivityState.loaded() = _Loaded;
}
