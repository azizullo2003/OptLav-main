part of 'static_bloc.dart';

@freezed
class StaticState with _$StaticState {
  const factory StaticState.failure(DioError error) = _Failure;

  const factory StaticState.loading() = _Loading;

  const factory StaticState.loaded(StaticResponse response) = _Loaded;
}
