part of 'edit_ad_bloc.dart';

@freezed
class EditAdEvent with _$EditAdEvent {
  const factory EditAdEvent.editAd({
    required String adId,
    required String userId,
    required String type1,
    required String type2,
    required String categoryId,
    required String subcategoryId,
    required String name,
    required String description,
    required String cityId,
    required String price,
    required String phone,
    required String email,
    required List<MultipartFile> images,
    required String name_firm,
  }) = EditAd;
}
