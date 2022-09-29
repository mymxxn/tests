import 'dart:convert';
import 'dart:developer';

import 'package:noviindus_api/constant.dart';
import 'package:noviindus_api/model/login_model.dart';
import 'package:http/http.dart' as http;

Future<LoginModel?> loginapi(String username, String password) async {
 
  final res = await http.post(Uri.parse(constant.baseURL + constant.loginurl),
      body: {
        constant.loginkeyusername: username,
        constant.loginkeypassword: password
      });
  // admin_user
  // 123admin789
  if (res.statusCode == 200) {
    final decoded = jsonDecode(res.body);
    saveget.saveapikey("${decoded['access']}");
    saveget.saveurlid("${decoded['url_id']}");


    return LoginModel.fromJson(json.decode(res.body));
  } else {
    throw Exception('Failed to load data');
  }
}
