import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
          "Login page",
          style: TextStyle(
            fontSize: 23,
            color: Colors.indigo.shade400,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
