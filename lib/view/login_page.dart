import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:noviindus_api/API/loginapi.dart';
import 'package:noviindus_api/view/home_page.dart';
import 'package:noviindus_api/view/widget.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final _formkey = GlobalKey<FormState>();
  final usernamcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                          height: 266,
                          width: double.infinity,
                          color: Color.fromRGBO(43, 43, 43, 1),
                          child: Image.asset("assets/Rectangle 2.png")),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Image.asset("assets/Polygon 1.png")),
                      Padding(
                        padding: const EdgeInsets.only(top: 127, left: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 41),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Manage your Bus and Drivers",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 42, left: 29, right: 25),
                    child: SingleChildScrollView(
                      child: Form(
                        key: _formkey,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromRGBO(42, 42, 42, 0.1),
                              ),
                              child: TextFormField(
                                  controller: usernamcontroller,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    hintText: "Enter Username",
                                    hintStyle: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                        color:
                                            Color.fromRGBO(112, 112, 112, 1)),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                  )),
                            ),
                            SizedBox(
                              height: 17,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromRGBO(42, 42, 42, 0.1),
                              ),
                              child: TextFormField(
                                  controller: passwordcontroller,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    hintText: "Enter Password",
                                    hintStyle: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                        color:
                                            Color.fromRGBO(112, 112, 112, 1)),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 40, bottom: 10),
        child: Container(
          height: 58,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7), color: commoncolor),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent, elevation: 0),
              onPressed: () async {
                FocusScope.of(context).unfocus();

                if (_formkey.currentState!.validate()) {
                  final res = await loginapi(
                      usernamcontroller.text, passwordcontroller.text);

                  if (res?.status == true) {
                    // SharedPreferences prefs =
                    //     await SharedPreferences
                    //         .getInstance();
                    // prefs.setString(
                    //     "name", "Accountant app");

                    loginapi(usernamcontroller.text, passwordcontroller.text)
                        .then((result) {
                      // Savetoken.savetoken(
                      //     "${result!.data!.token}");
                      // var getscsd = SaveId.getId();
                      Get.to(() => HomePage());
                    });
                  } else {
                    Fluttertoast.showToast(msg: "${res?.message}");

                    print(res?.message);
                    res?.message;
                  }
                }
              },
              child: Text("Login",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Color.fromRGBO(255, 255, 255, 1)))),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
