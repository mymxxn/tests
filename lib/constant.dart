import 'package:get_storage/get_storage.dart';

class constant {
  static const baseURL = "http://flutter.noviindus.co.in/api/";
  static String loginurl = "LoginApi";
  static const loginkeyusername = "username";
  static const loginkeypassword = "password";
}

class saveget {
  static saveapikey(String apikey) {
    final box = GetStorage();
    box.write("apikey", apikey);
  }

  static getapikeyl() {
    final box = GetStorage();
    return box.read("apikey") ?? true;
  }
}
