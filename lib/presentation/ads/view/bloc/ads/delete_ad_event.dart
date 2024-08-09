part of 'delete_ad_bloc.dart';

@freezed
class DeleteAdEvent with _$DeleteAdEvent {
  const factory DeleteAdEvent.deleteAd({
    required String adId,
  }) = DeleteAd;
}
