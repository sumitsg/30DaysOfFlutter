import 'package:flutter/material.dart';
import 'package:flutter_catelog/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int day = 30;
    final String name = "sumit";

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catelog App",
        ),
      ),
      body: Center(
        child: Container(
          child: Text(
            "Welcome $name to $day days of flutter",
            style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 22,
                color: Colors.grey.shade800),
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
