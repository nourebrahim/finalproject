import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'card.dart';

// ignore: camel_case_types
class viewall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: FutureBuilder(
            future: FirebaseFirestore.instance.collection("data").get(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.hasData == false) {
                return Text("check wifi");
              } else {
                return ListView.builder(
                    itemCount: snapshot.data.docs.length,
                    itemBuilder: (context, index) {
                      return Center(
                          child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: MyCard(
                          snapshot.data.docs[index]["AddressTitle"],
                          snapshot.data.docs[index]["phone"],
                          snapshot.data.docs[index]["additionalphone"],
                          snapshot.data.docs[index]["city"],
                          snapshot.data.docs[index]["area"],
                          snapshot.data.docs[index]["streetName"],
                          snapshot.data.docs[index]["Building"],
                          snapshot.data.docs[index]["floor"],
                          snapshot.data.docs[index]["Apartment"],
                          snapshot.data.docs[index]["LandMark"],
                        ),
                      ));
                    });
              }
            }));
  }
}
