part of 'add_ad_bloc.dart';

@freezed
class AddAdEvent with _$AddAdEvent {
  const factory AddAdEvent.addAd({
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
  }) = AddAd;
}
