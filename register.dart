import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:untitled21/login.dart';

class register extends StatelessWidget {
  var firstnam = TextEditingController();
  var lastname = TextEditingController();
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
                    "REGISTER",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ), //register...
                  SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    controller: firstnam,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: "First Name",
                      hintText: "First Name",
                      border: OutlineInputBorder(),
                    ), //email...
                  ), //firstname
                  SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    controller: lastname,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: "last Name",
                      hintText: "Last Name",
                      border: OutlineInputBorder(),
                    ), //email...
                  ), //lastname
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
                  SizedBox(
                    height: 40,
                  ), //email...
                  TextFormField(
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
                  ), //password....
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
                            MaterialPageRoute(builder: (context) => login()));
                        print(firstnam.text);
                        print(lastname.text);
                        print(emailcontrol.text);
                        print(passwordcontrol.text);
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ])
              ],
            )));
  }
}
