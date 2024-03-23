part of 'top_bloc.dart';

@freezed
class TopState with _$TopState{
  const factory TopState.failure(DioError error) = _Failure;
  const factory TopState.loading() = _Loading;
  const factory TopState.topLoaded(TopResponse response) = _TopLoaded;
}
