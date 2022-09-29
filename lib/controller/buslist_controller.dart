import 'dart:developer';

import 'package:get/get.dart';
import 'package:noviindus_api/API/apicalling.dart';

class Controller extends GetxController {
  var busLists = [].obs;
  var driverLists = [].obs;
  var assigndrivers = "".obs;

  void buses() async {
    var images = await Services.getbuslist();
    busLists.value = images!.busList!;
  }

  void drivers() async {
    var driverslist = await Services.getdriverslist();
    driverLists.value = driverslist as List;

  
  }

  void assigndriverss() async {
    var assign = await Services.assigndriver();
    assigndrivers.value = "${assign!.message}";

  
  }
}
