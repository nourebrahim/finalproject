import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'map.test.dart';

class foundaddress extends StatefulWidget {
  @override
  State<foundaddress> createState() => _foundaddress();
}

class _foundaddress extends State<foundaddress> {
  TextEditingController AddressTitle = new TextEditingController();
  TextEditingController phone = new TextEditingController();
  TextEditingController additionalphone = new TextEditingController();
  TextEditingController city = new TextEditingController();
  TextEditingController area = new TextEditingController();
  TextEditingController streetName = new TextEditingController();
  TextEditingController Building = new TextEditingController();
  TextEditingController floor = new TextEditingController();
  TextEditingController Apartment = new TextEditingController();
  TextEditingController LandMark = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue[800],
          title: const Text("ADD New Address",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
          centerTitle: true,
          foregroundColor: Colors.white,


      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Column(
                children: [
                  TextField(
                      controller: AddressTitle,
                      decoration: InputDecoration(
                          labelText: 'AddressTitle',
                          border: OutlineInputBorder()),
                      keyboardType: TextInputType.name), //1
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                      controller: phone,
                      decoration: InputDecoration(
                          labelText: 'phone', border: OutlineInputBorder()),
                      keyboardType: TextInputType.phone), //2
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: additionalphone,
                    decoration: InputDecoration(
                        labelText: 'additionalphone',
                        border: OutlineInputBorder()),
                    keyboardType: TextInputType.phone,
                  ), //3
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: city,
                    decoration: InputDecoration(
                        labelText: 'city', border: OutlineInputBorder()),
                    keyboardType: TextInputType.name,
                  ), //4
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                      controller: area,
                      decoration: InputDecoration(
                          labelText: 'area', border: OutlineInputBorder()),
                      keyboardType: TextInputType.name), //5 note
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                      controller: streetName,
                      decoration: InputDecoration(
                          labelText: 'streetName',
                          border: OutlineInputBorder()),
                      keyboardType: TextInputType.streetAddress), //6
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: Building,
                    decoration: InputDecoration(
                        labelText: 'Building', border: OutlineInputBorder()),
                    keyboardType: TextInputType.number,
                  ), //7
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: floor,
                    decoration: InputDecoration(
                        labelText: 'floor', border: OutlineInputBorder()),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: Apartment,
                    decoration: InputDecoration(
                        labelText: 'Apartment', border: OutlineInputBorder()),
                    keyboardType: TextInputType.datetime,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: LandMark,
                    decoration: InputDecoration(
                        labelText: 'LandMark', border: OutlineInputBorder()),
                    keyboardType: TextInputType.name,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CurrentLocation()));
                    },
                    child: Container(
                      width:200 ,
                      decoration: BoxDecoration(
                          color: Colors.blue[900],
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Select your location",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold,color:Colors.white ),
                            ),
                          ),


                        ],
                      ),
                    ),
                  ),
                  FlatButton(
                      onPressed: () async {
                        String a = AddressTitle.text;
                        String b = phone.text;
                        String c = additionalphone.text;
                        String d = city.text;
                        String e = area.text;
                        String f = streetName.text;
                        String g = Building.text;
                        String h = floor.text;
                        String j = Apartment.text;
                        String k = LandMark.text;

                        FirebaseFirestore.instance
                            .collection("data")
                            .add(<String, dynamic>{
                          "AddressTitle": a,
                          "phone": b,
                          "additionalphone": c,
                          "city": d,
                          "area": e,
                          "streetName": f,
                          "Building": g,
                          "floor": h,
                          "Apartment": j,
                          "LandMark": k,
                        });
                      },
                      child: Container(
                        width:200 ,
                        height:37,
                        decoration: BoxDecoration(
                            color: Colors.blue[900],
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:68.0),
                              child: Text(
                                "Submit",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold,color:Colors.white ),
                              ),
                            ),


                          ],
                        ),
                      ),),

                ],
              ),
            ],
          )),
    );
  }
}
