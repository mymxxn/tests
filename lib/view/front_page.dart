import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:noviindus_api/view/widget.dart';

class FrontPage extends StatelessWidget {
  const FrontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: commoncolor,
      body: Center(child: mainlogo),
      floatingActionButton: getstartedbtn(),
    );
  }
}
