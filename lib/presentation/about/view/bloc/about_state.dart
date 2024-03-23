part of 'about_bloc.dart';

@freezed
class AboutState with _$AboutState{
  const factory AboutState.failure(DioError error) = _Failure;
  const factory AboutState.loading() = _Loading;
  const factory AboutState.loaded(AboutResponse response) = _Loaded;
}
