import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled21/view%20prsecriptons.dart';

class myprse extends StatefulWidget {
  @override
  State<myprse> createState() => _myprese();
}

class _myprese extends State<myprse> {
  dynamic data;
  TextEditingController n1 = new TextEditingController();
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
                            "Scan and send your prescription",
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
        body: ListView(
          children: [
            (data == null) ? Text("") : Image.file(data),
            MaterialButton(
                onPressed: () async {
                  dynamic x = ImagePicker();
                  dynamic y = await x.getImage(source: ImageSource.camera);
                  (data == null) ? Text("") : Image.file(data);
                  setState(() {
                    if (y != null) {
                      data = File(y.path);
                    }
                  });
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.grey[300],
                            child: Icon(
                              Icons.camera_alt_sharp,
                              size: 30,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Text(
                          "Camera",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                )),
            SizedBox(height: 10),
            MaterialButton(
                onPressed: () async {
                  dynamic x = ImagePicker();
                  dynamic y = await x.getImage(source: ImageSource.gallery);
                  setState(() {
                    if (y != null) {
                      data = File(y.path);
                    }
                  });
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.grey[300],
                            child: Icon(
                              Icons.crop_original_outlined,
                              size: 30,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Text(
                          "Gallery",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => viewmyprse()));
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.grey[300],
                          child: Icon(
                            Icons.receipt,
                            size: 30,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Text(
                        "My prsecriptons",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 27),
                      child: Text(
                        "Valid Prescriptions Guide",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.warning_rounded,
                      color: Colors.black26,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        "Valid Prescriptions Guide",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w100),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Image.network(
                        "http://ok-t.ru/doclecturenet/baza1/915912479689.files/image002.jpg",
                        width: 300,
                        height: 250,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ));
  }
}
