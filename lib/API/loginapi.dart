import 'dart:convert';
import 'dart:developer';

import 'package:noviindus_api/constant.dart';
import 'package:noviindus_api/model/login_model.dart';
import 'package:http/http.dart' as http;

Future<LoginModel?> loginapi(String username, String password) async {
  // print("api$email password $password");
  log("ys");
  final res = await http.post(Uri.parse(constant.baseURL + constant.loginurl),
      body: {
        constant.loginkeyusername: username,
        constant.loginkeypassword: password
      });
  // admin_user
  // 123admin789
  log("${res.statusCode}");
  if (res.statusCode == 200) {
    final decoded = jsonDecode(res.body);
    log("done ${decoded['access']}");
    saveget.saveapikey("${decoded['access']}");
    log("${decoded['url_id']}");
    saveget.saveurlid("${decoded['url_id']}");

    // if (res.statusCode != 100) {
    //   final decoded = jsonDecode(res.body);
    //   log(decoded);
    //   log("the above is the decoded one");
    //   if (res.statusCode == 200) {
    //     saveget.saveapikey("${decoded['data']['token']}");
    //   }

    return LoginModel.fromJson(json.decode(res.body));
  } else {
    throw Exception('Failed to load data');
  }
}
