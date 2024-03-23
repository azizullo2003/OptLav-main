import 'dart:io' show Platform;

const String apiBaseUrl = 'https://panel.optlav.ru/';

const String yandexAndroidBannerID = "R-M-4005946-1";
const String yandexAppleBannerID = "R-M-4005929-1";

const String yandexAndroidInterstitialID = "R-M-4005946-2";
const String yandexAppleInterstitialID = "R-M-4005929-2";

String getYandexBannerID() {
  return Platform.isIOS ? yandexAppleBannerID : yandexAndroidBannerID;
}

String getYandexInterstitialID() {
  return Platform.isIOS ? yandexAppleInterstitialID : yandexAndroidInterstitialID;
}
