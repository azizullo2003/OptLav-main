import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsHelper {

  static const PHONE_KEY = "PHONE";
  static const USER_ID_KEY = "USER_ID";
  static const INN_KEY = "INN";
  static const ONBOARDING_DONE = "ONBOARDING_DONE";
  static const NAME = "NAME";
  static const INN = "INN";
  static const OGRN_KEY = "OGRN";
  static const REMEMBER_KEY = "REMEMBER";
  static const ADDRESS_EXIST = "ADDRESS_EXIST";

  static Future<bool> saveUserPhone(value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.setString(PHONE_KEY, value);
  }
  static Future<String?> getUserPhone() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(PHONE_KEY);
  }

  static Future<bool> saveUserId(value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.setString(USER_ID_KEY, value);
  }
  static Future<String?> getUserId() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(USER_ID_KEY);
  }

  static Future<bool> saveInn(value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.setString(INN_KEY, value);
  }
  static Future<String?> getUserInn() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(INN_KEY);
  }

  static Future<bool> rememberMe(value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.setBool(REMEMBER_KEY, value);
  }
  static Future<bool?> isRememberMe() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(REMEMBER_KEY);
  }

  static Future<bool> setAddressExist(value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.setBool(ADDRESS_EXIST, value);
  }
  static Future<bool?> isAddressExist() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(ADDRESS_EXIST);
  }

  static Future<bool> setName(name) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.setString(NAME, name);
  }

  static Future<String?> getName() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(NAME);
  }

  static Future<bool> setInn(inn) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.setString(INN, inn);
  }

  static Future<String?> getInn() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(INN);
  }

  static Future<bool> setOBDone(value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.setBool(ONBOARDING_DONE, value);
  }

  static Future<bool?> isOBDone() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(ONBOARDING_DONE);
  }

}
