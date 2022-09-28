import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:noviindus_api/view/adddriver_page.dart';
import 'package:noviindus_api/view/widget.dart';

class DriversList extends StatelessWidget {
  const DriversList({super.key});

  @override
  Widget build(BuildContext context) {
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
            // Row(
            //   children: [
            //     Container(
            //       decoration: BoxDecoration(
            //           borderRadius: BorderRadius.only(
            //               topLeft: Radius.circular(15),
            //               bottomLeft: Radius.circular(15)),
            //           color: Color.fromRGBO(243, 243, 243, 1)),
            //       height: 73,
            //       width: 79,
            //       child: Image.asset("assets/Ellipse.png"),
            //     ),
            //     Container(
            //       decoration: BoxDecoration(
            //           borderRadius: BorderRadius.only(
            //               topLeft: Radius.circular(15),
            //               bottomLeft: Radius.circular(15)),
            //           color: Colors.white),
            //       height: 73,
            //       width: double.infinity,
            //       child:
            //           //  Row(
            //           //   children: [
            //           Text(
            //         "KSRTC \nSwift Scania P-series",
            //         style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
            //       ),
            //       // Container(
            //       //   height: 30,
            //       //   width: 70,
            //       //   decoration: BoxDecoration(
            //       //       borderRadius: BorderRadius.circular(4),
            //       //       color: Color.fromRGBO(252, 21, 59, 1)),
            //       //   child: ElevatedButton(
            //       //       style: ElevatedButton.styleFrom(
            //       //           backgroundColor: Colors.transparent,
            //       //           elevation: 0),
            //       //       onPressed: () {},
            //       //       child: Text("Manage",
            //       //           style: TextStyle(
            //       //               fontWeight: FontWeight.w400,
            //       //               fontSize: 10,
            //       //               color: Color.fromRGBO(255, 255, 255, 1)))),
            //       // ),
            //       //   ],
            //       // ),
            //     )
            //   ],
            // ),
            SizedBox(
              height: 12,
            ),
            ListTile(
              onTap: () {},
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
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
              ),
              trailing: Container(
                height: 30,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Color.fromRGBO(252, 21, 59, 1)),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent, elevation: 0),
                    onPressed: () {},
                    child: Text("Delete",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: Color.fromRGBO(255, 255, 255, 1)))),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            ListTile(
              onTap: () {},
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
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
              ),
              trailing: Container(
                height: 30,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Color.fromRGBO(252, 21, 59, 1)),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent, elevation: 0),
                    onPressed: () {},
                    child: Text("Delete",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: Color.fromRGBO(255, 255, 255, 1)))),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            ListTile(
              onTap: () {},
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
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
              ),
              trailing: Container(
                height: 30,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Color.fromRGBO(252, 21, 59, 1)),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent, elevation: 0),
                    onPressed: () {},
                    child: Text("Delete",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: Color.fromRGBO(255, 255, 255, 1)))),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            ListTile(
              onTap: () {},
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
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
              ),
              trailing: Container(
                height: 30,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Color.fromRGBO(252, 21, 59, 1)),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent, elevation: 0),
                    onPressed: () {},
                    child: Text("Delete",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: Color.fromRGBO(255, 255, 255, 1)))),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            ListTile(
              onTap: () {},
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
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
              ),
              trailing: Container(
                height: 30,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Color.fromRGBO(252, 21, 59, 1)),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent, elevation: 0),
                    onPressed: () {},
                    child: Text("Delete",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: Color.fromRGBO(255, 255, 255, 1)))),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: Container(
          height: 58,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Color.fromRGBO(252, 21, 59, 1)),
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
