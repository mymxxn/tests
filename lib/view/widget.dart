import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noviindus_api/API/loginapi.dart';
import 'package:noviindus_api/view/home_page.dart';
import 'package:noviindus_api/view/login_page.dart';

final mainlogo = Image.asset("assets/logo.png");
final commonchairred = Icon(
  Icons.chair,
  color: Color.fromRGBO(252, 21, 59, 10),
  size: 30,
);
final spacebetweenchair = SizedBox(
  height: 10,
);
Widget getstartedbtn() => Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Container(
        height: 58,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: Color.fromRGBO(255, 255, 255, 1)),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent, elevation: 0),
            onPressed: () {
              Get.to(() => LoginPage());
            },
            child: Text("Get Started",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Color.fromRGBO(252, 21, 59, 1)))),
      ),
    );
homepageappbar() => AppBar(
    elevation: 0,
    backgroundColor: Color.fromRGBO(43, 43, 43, 1),
    toolbarHeight: 119,
    title: Image.asset(
      "assets/logo.png",
      scale: 1.5,
    ),
    centerTitle: true,
    leading: Icon(
      Icons.abc,
      color: Colors.transparent,
    ));

Widget commonredchair() => Padding(
      padding: const EdgeInsets.only(top: 60),
      child: Column(
        children: [
          commonchairred,
          spacebetweenchair,
          commonchairred,
          spacebetweenchair,
          commonchairred,
          spacebetweenchair,
          commonchairred,
          spacebetweenchair,
          commonchairred,
          spacebetweenchair,
          commonchairred,
          spacebetweenchair,
          commonchairred,
          spacebetweenchair,
          commonchairred,
          spacebetweenchair,
          commonchairred,
          spacebetweenchair,
          commonchairred,
        ],
      ),
    );

commonappbar(String txt) => AppBar(
      elevation: 0,
      leadingWidth: 70,
      toolbarHeight: 119,
      centerTitle: true,
      title: Text(
        txt,
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
      ),
      backgroundColor: Color.fromRGBO(43, 43, 43, 1),
    );
