import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:untitled21/My%20prsecriptons.dart';
import 'package:untitled21/add.dart';
import 'package:untitled21/favourite.dart';
import 'package:untitled21/order.dart';
import 'package:untitled21/setting.dart';
import 'addresses.dart';
import 'home.dart';
import 'offers.dart';

class more extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 25.0),
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  color: Colors.blue[900],
                  width: 400,
                  height: 180,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffE6E6E6),
                          radius: 30,
                          child: Icon(
                            Icons.person,
                            color: Colors.brown,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 200),
                          child: Row(
                            children: [
                              Text(
                                "Nour ebrahim",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 70),
                          child: Text(
                            "Nourebrahim100@gmail.com",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: 350,
                        height: 110,
                        decoration: BoxDecoration(
                          color: Colors.blue[900],
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '1',
                                        style: TextStyle(
                                            fontFamily: 'flu1',
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Favourite',
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'products',
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 22,
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '1',
                                        style: TextStyle(
                                            fontFamily: 'flu1',
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Numbers of',
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Orders',
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 23,
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '0 ',
                                        style: TextStyle(
                                            fontFamily: 'flu1',
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Medicine',
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Reminder',
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => myprse()));
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
                                  Icons.receipt,
                                  color: Colors.blue[800],
                                  size: 30,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                "My prsecriptons",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Padding(
                                  padding: const EdgeInsets.only(left: 120),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 1000),
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 30,
                                      color: Colors.blue[900],
                                    ),
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
                    SizedBox(height: 5),
                    MaterialButton(
                      onPressed: () {},
                      child: Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 9),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: Icon(
                                  Icons.receipt,
                                  color: Colors.blue[800],
                                  size: 30,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                "Medicine Reminder",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Padding(
                                  padding: const EdgeInsets.only(left: 95),
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
                    ), //late
                    Row(
                      children: [
                        Text("____________________________________________",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    SizedBox(height: 5),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => addresses()));
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
                                  Icons.add_location_sharp,
                                  color: Colors.blue[800],
                                  size: 30,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                "My Addresses",
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
                    Row(
                      children: [
                        Text("____________________________________________",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Add_New()));
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
                                  Icons.mark_chat_unread_rounded,
                                  color: Colors.blue[800],
                                  size: 30,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                "ADD YOUR View",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Add_New()));
                                },
                                icon: Padding(
                                  padding: const EdgeInsets.only(left: 120),
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => setting()));
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
                                  Icons.settings,
                                  color: Colors.blue[800],
                                  size: 30,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                "settings",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Padding(
                                  padding: const EdgeInsets.only(left: 190),
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
                    SizedBox(height: 5),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            // ignore: prefer_const_constructors
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: 'Home',
                backgroundColor: Colors.blue[800]),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'favorite',
                backgroundColor: Colors.blue[800]),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_offer),
              label: 'offer',
              backgroundColor: Colors.blue[800],
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.playlist_add_outlined),
              label: 'order',
              backgroundColor: Colors.blue[800],
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/more.png", width: 30),
              label: 'more',
              backgroundColor: Colors.blue[800],
            ),
          ],
          currentIndex: 4,
          selectedItemColor: Colors.blue,
          backgroundColor: Colors.blue,
          onTap: (f) async {
            if (f == 0) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => home()));
            } else if (f == 1) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => favourite()));
            } else if (f == 2) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => offers()));
            } else if (f == 3) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => order()));
            } else if (f == 4) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => more()));
            }
          }),
    );
  }
}
