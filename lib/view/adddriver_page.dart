import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:noviindus_api/view/widget.dart';

class AddDriverPage extends StatelessWidget {
  const AddDriverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonappbar("Add Driver"),
      body: Padding(
        padding: const EdgeInsets.only(left: 29, right: 29, top: 39),
        child: Column(children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromRGBO(42, 42, 42, 0.1),
            ),
            child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: "Enter Name",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Color.fromRGBO(112, 112, 112, 1)),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
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
            child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: "Enter License Number",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Color.fromRGBO(112, 112, 112, 1)),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                )),
          ),
        ]),
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
              onPressed: () {},
              child: Text("Save",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Color.fromRGBO(255, 255, 255, 1)))),
        ),
      ),
    );
  }
}
