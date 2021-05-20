import 'package:flutter/material.dart';
import 'package:flutter_catelog/utilities/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool buttonPressed = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        // to scroll the screen if image is too big for small devices
        child: Column(
          children: [
            Image.asset(
              "asset/image/login_img.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Username",
                      hintText: "Enter username",
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter password",
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        buttonPressed = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: 50,
                      width: buttonPressed ? 50 : 150,
                      // color: Colors.deepPurple,
                      alignment: Alignment.center,
                      child: buttonPressed
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        // shape: buttonPressed
                        //     ? BoxShape.circle
                        //     : BoxShape.rectangle,
                        borderRadius:
                            BorderRadius.circular(buttonPressed ? 50 : 8),
                      ),
                    ),
                  ),

                  // ElevatedButton(
                  //   child: Text("login"),
                  //   style: TextButton.styleFrom(minimumSize: Size(130, 40)),
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
