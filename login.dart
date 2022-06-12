import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:untitled21/home.dart';
import 'package:untitled21/register.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class login extends StatelessWidget {
  var emailcontrol = TextEditingController();
  var passwordcontrol = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue[800],
            title: const Text("MIDIC",
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
            centerTitle: true,
            foregroundColor: Colors.white,
            bottom: PreferredSize(
              preferredSize: Size(50, 50),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 340,
                      height: 50,
                      child: Padding(
                          padding: const EdgeInsets.only(top: 18),
                          child: Text(
                            "Welcome to pharmacy",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                    ),
                  ),
                ],
              ),
            )),
        body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
              children: [
                Column(children: [
                  SizedBox(height: 100),
                  Text(
                    "SIGN IN",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ), //sign...
                  SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    controller: emailcontrol,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "E-mail",
                      hintText: "Email address",
                      border: OutlineInputBorder(),
                    ), //email...
                  ), //email...
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: passwordcontrol,
                      keyboardType: TextInputType.phone,
                      obscureText: true,
                      onFieldSubmitted: (value) {
                        print(value);
                      },
                      decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "Password",
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(Icons.remove_red_eye_sharp),
                      ),
                    ),
                  ), //password
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.blue[900],
                        borderRadius: BorderRadius.circular(10)),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => home()));
                        print(emailcontrol.text);
                        print(passwordcontrol.text);
                      },
                      child: Text(
                        "SIGN IN",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text("Don't have an account?"),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => register()));
                          },
                          child: Text("Register"))
                    ],
                  ),
                  Column(
                    children: [
                      SignInButton(
                        Buttons.Google,
                        text: "Sign up with Google",
                        onPressed: () {},
                      ),
                      SignInButton(
                        Buttons.Facebook,
                        mini: true,
                        onPressed: () {},
                      ),
                    ],
                  )
                ])
              ],
            )));
  }
}
