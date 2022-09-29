import 'dart:convert';
import 'dart:developer';

import 'package:noviindus_api/constant.dart';
import 'package:noviindus_api/model/assigndriver_model.dart';
import 'package:noviindus_api/model/buslist_model.dart';
import 'package:http/http.dart' as http;
import 'package:noviindus_api/model/driverlist_model.dart';
import 'package:noviindus_api/model/drivermanagement_model.dart';

class Services {
  static Future<BusListModel?> getbuslist() async {
    final resp = await http.get(
        Uri.parse(
            "${constant.baseURL + constant.buslisturl + saveget.geturlid()}/"),
        headers: {
          "Content-Type": "application/json",
          'Authorization': 'Bearer ${saveget.getapikeyl()}',
        });
    // log("${saveget.geturlid()}");
    // log("${saveget.getapikeyl()}");

    // log("${resp.statusCode}");
    if (resp.statusCode == 200) {
      // final decoded = jsonDecode(resp.body);
      log(resp.body);

      log("${BusListModel.fromJson(json.decode(resp.body))}");
      return BusListModel.fromJson(json.decode(resp.body));
    } else {
      throw Exception('Failed to load data');
    }
  }

  static Future<DriverList?> getdriverslist() async {
    final resp = await http.get(
        Uri.parse(
            "${constant.baseURL + constant.driverslist + saveget.geturlid()}/"),
        headers: {
          "Content-Type": "application/json",
          'Authorization': 'Bearer ${saveget.getapikeyl()}',
        });
    // log("${saveget.geturlid()}");
    // log("${saveget.getapikeyl()}");

    // log("${resp.statusCode}");
    if (resp.statusCode == 200) {
      // final decoded = jsonDecode(resp.body);
      // log(resp.body);

      log("${DriverList.fromJson(json.decode(resp.body))}");
      return DriverList.fromJson(json.decode(resp.body));
    } else {
      throw Exception('Failed to load data');
    }
  }
  static Future<AssignDriverModel?> assigndriver() async {
    final resp = await http.patch(
        Uri.parse(
            "${constant.baseURL + constant.driverslist + saveget.geturlid()}/"),
        headers: {
          "Content-Type": "application/json",
          'Authorization': 'Bearer ${saveget.getapikeyl()}',
        },body: {"bus_id":1,"driver_id":70});
    // log("${saveget.geturlid()}");
    // log("${saveget.getapikeyl()}");

    // log("${resp.statusCode}");
    if (resp.statusCode == 200) {
      // final decoded = jsonDecode(resp.body);
      // log(resp.body);

      log("${AssignDriverModel.fromJson(json.decode(resp.body))}");
      return AssignDriverModel.fromJson(json.decode(resp.body));
    } else {
      throw Exception('Failed to load data');
    }
  }
  static Future<DriverManagementModel?> drivermanagementpost(String name,String license_no) async {
    final resp = await http.post(
        Uri.parse(
            "${constant.baseURL + constant.driverslist + saveget.geturlid()}/"),
        headers: {
          "Content-Type": "application/json",
          'Authorization': 'Bearer ${saveget.getapikeyl()}',
        },
        body: {
          "name": name,
          "mobile": 70,
          "license_no":license_no
        });
    // log("${saveget.geturlid()}");
    // log("${saveget.getapikeyl()}");

    // log("${resp.statusCode}");
    if (resp.statusCode == 200) {
      // final decoded = jsonDecode(resp.body);
      // log(resp.body);

      log("${DriverManagementModel.fromJson(json.decode(resp.body))}");
      return DriverManagementModel.fromJson(json.decode(resp.body));
    } else {
      throw Exception('Failed to load data');
    }
  
  }
  static Future<DriverManagementModel?> drivermanagementdelete() async {
    final resp = await http.delete(
        Uri.parse(
            "${constant.baseURL + constant.driverslist + saveget.geturlid()}/"),
        headers: {
          "Content-Type": "application/json",
          'Authorization': 'Bearer ${saveget.getapikeyl()}',
        },
        body: {
          "driver_id": 1,
          
        });
    // log("${saveget.geturlid()}");
    // log("${saveget.getapikeyl()}");

    // log("${resp.statusCode}");
    if (resp.statusCode == 200) {
      // final decoded = jsonDecode(resp.body);
      // log(resp.body);

      log("${DriverManagementModel.fromJson(json.decode(resp.body))}");
      return DriverManagementModel.fromJson(json.decode(resp.body));
    } else {
      throw Exception('Failed to load data');
    }
  }
}
