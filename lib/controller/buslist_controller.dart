import 'dart:developer';

import 'package:get/get.dart';
import 'package:noviindus_api/API/apicalling.dart';

class Controller extends GetxController {
  var busLists = [].obs;
  var driverLists = [].obs;
  var assigndrivers = "".obs;

  void buses() async {
    log("it is coming here");
    var images = await Services.getbuslist();
    // if (images != null) {

    log("almost done${images!.busList}");
    busLists.value = images.busList!;
    log("${busLists.value}");
    //  }
  }

  void drivers() async {
    log("it is coming here");
    var driverslist = await Services.getdriverslist();
    // if (images != null) {

    log("almost done${driverslist!}");
    driverLists.value = driverslist as List;

    //  }
  }

  void assigndriverss() async {
    log("it is coming here");
    var assign = await Services.assigndriver();
    // if (images != null) {

    log("pinne ${assign!}");
    assigndrivers.value = "${assign.message}";

    //  }
  }
}
