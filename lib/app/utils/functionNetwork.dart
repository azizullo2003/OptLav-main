import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:optlove/presentation/ads/data/datasources/ads_remote_datasource.dart';
import 'package:optlove/presentation/ads/data/models/ads_category_model.dart';
import 'package:optlove/presentation/ads/domain/entities/ads_city_response.dart';
import 'package:optlove/presentation/profile/data/datasources/user_remote_datasource.dart';
import 'package:optlove/presentation/registration/domain/entities/user_info_response.dart';
import 'package:url_launcher/url_launcher.dart';

Future<List<MultipartFile>> convertToMultipartFiles(List<XFile> files) async {
  List<MultipartFile> multipartFiles = [];
  for (XFile file in files) {
    multipartFiles
        .add(await MultipartFile.fromFile(file.path, filename: file.name));
  }
  return multipartFiles;
}

String calculateDaysLeft(String endDate) {
  DateTime endDateTime = DateTime.parse(endDate);
  DateTime now = DateTime.now();
  Duration difference = endDateTime.difference(now);
  return difference.inDays.toString();
}

void callSeller(String phoneNumber) async {
  final Uri launchUri = Uri(
    scheme: 'tel',
    path: phoneNumber,
  );
  if (await canLaunchUrl(Uri.parse(launchUri.toString()))) {
    await launchUrl(Uri.parse(launchUri.toString()));
  } else {
    // Handle error
    print('Could not launch $launchUri');
  }
}

void sendEmail(String email) async {
  final Uri launchUri = Uri(
    scheme: 'mailto',
    path: email,
  );
  if (await canLaunchUrl(Uri.parse(launchUri.toString()))) {
    await launchUrl(Uri.parse(launchUri.toString()));
  } else {
    // Handle error
    print('Could not launch $launchUri');
  }
}

Future<UserInfoResponse> getNameUser(String phone, String user) async {
  final userInfo =
      await UserRemoteDatasource(UserApi(Dio())).getUserInfo(phone, user);
  return userInfo.data;
}

Future<AdsCityResponse> getCityById(String id) async {
  final cityInfo =
      await AdsRemoteDatasource(AdsRemoteApi(Dio())).getCityById(id: id);
  return cityInfo.data;
}

Future<AdsCategory?> getCategoryById(String id) async {
  final categories =
      await AdsRemoteDatasource(AdsRemoteApi(Dio())).getAdsCategory();
  final category = categories.data.categories
      .firstWhere((category) => category.id.toString() == id);

  return category;
}

Future<AdsCategory?> getSubcategoryByCategoryId(
    String categoryId, String id) async {
  final subcategories = await AdsRemoteDatasource(AdsRemoteApi(Dio()))
      .getAdsSubcategorybyCategory(categoryId);
  final subcategory = subcategories.data.categories
      .firstWhere((subcategory) => subcategory.id.toString() == id);
  return subcategory;
}
