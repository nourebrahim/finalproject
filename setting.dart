import 'package:flutter/material.dart';
import 'package:untitled21/viewprofil.dart';
import 'account.setting.dart';
import 'delete.dart';
import 'editprofil.dart';

class setting extends StatefulWidget {
  @override
  State<setting> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<setting> {
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
                          "setting",
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
        padding: const EdgeInsets.all(1.0),
        child: Center(
          child: Column(
            children: [


              MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Accountview()));
                },
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 9),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Icon(
                            Icons.person,
                            color: Colors.blue[800],
                            size: 30,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "My account",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Padding(
                            padding: const EdgeInsets.only(left: 150),
                            child: Padding(
                              padding:
                              const EdgeInsets.only(bottom: 1000),
                              child: Icon(Icons.arrow_forward_ios,
                                  size: 30, color: Colors.blue[900]),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Text("____________________________________________",
                      style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Add_account()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Icon(
                              Icons.create,
                              color: Colors.blue[800],
                              size: 30,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "Create account",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Padding(
                              padding: const EdgeInsets.only(left: 116),
                              child: Padding(
                                padding:
                                const EdgeInsets.only(bottom: 1000),
                                child: Icon(Icons.arrow_forward_ios,
                                    size: 30, color: Colors.blue[900]),
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Text("____________________________________________",
                      style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Edit()));
                },
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 9),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Icon(
                            Icons.account_box_outlined,
                            color: Colors.blue[800],
                            size: 30,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "EDIT account",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Padding(
                            padding: const EdgeInsets.only(left: 140),
                            child: Padding(
                              padding:
                              const EdgeInsets.only(bottom: 1000),
                              child: Icon(Icons.arrow_forward_ios,
                                  size: 30, color: Colors.blue[900]),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
