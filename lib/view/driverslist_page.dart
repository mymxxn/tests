

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:noviindus_api/API/apicalling.dart';
import 'package:noviindus_api/controller/buslist_controller.dart';
import 'package:noviindus_api/view/adddriver_page.dart';
import 'package:noviindus_api/view/widget.dart';

class DriversList extends StatelessWidget {
  DriversList({super.key});
  final controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    controller.assigndriverss();
    controller.drivers();
    return Scaffold(
      appBar: commonappbar("Driver List"),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "21 Drivers Found",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  color: Color.fromRGBO(107, 107, 107, 1)),
            ),
            SizedBox(
              height: 12,
            ),
            Expanded(
                child: FutureBuilder(
                    future: Services.getdriverslist(),
                    builder: (context, snapshot) {
                      return ListView.separated(
                          itemBuilder: (context, index) {
                            return ListTile(
                              onTap: () {
                                Obx(() {
                                  Get.back;
                                  return Container();
                                });
                              },
                              leading: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      bottomLeft: Radius.circular(12)),
                                  color: Color.fromRGBO(243, 243, 243, 1),
                                ),
                                height: 73,
                                width: 79,
                                child: Image.asset("assets/Ellipse.png"),
                              ),
                              title: Text(
                                "Rohit sharma \nLicn no: PJ5151961616",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 12),
                              ),
                              trailing: Container(
                                height: 30,
                                width: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: commoncolor),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        elevation: 0),
                                    onPressed: () async {
                                      final res = await Services
                                          .drivermanagementdelete();
                                      if (res?.status == true) {
                                        Services.drivermanagementdelete()
                                            .then((result) {});
                                      } else {
                                        Fluttertoast.showToast(
                                            msg: "${res?.message}");

                                       
                                        res?.message;
                                      }
                                    },
                                    child: Text("Delete",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1)))),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) => SizedBox(
                                height: 14,
                              ),
                          itemCount: controller.busLists.length);
                    }))
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: Container(
          height: 58,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7), color: commoncolor),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent, elevation: 0),
              onPressed: () => Get.to(() => AddDriverPage()),
              child: Text("Add Driver",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Color.fromRGBO(255, 255, 255, 1)))),
        ),
      ),
    );
  }
}
