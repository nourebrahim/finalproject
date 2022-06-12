import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';

class viewmyprse extends StatefulWidget {
  @override
  State<viewmyprse> createState() => _viewmyprse();
}

class _viewmyprse extends State<viewmyprse> {
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
            (data == null) ? Text("scan prsecriptons") : Image.file(data),
            MaterialButton(
              onPressed: () async {
                dynamic x = ImagePicker();
                dynamic y = await x.getImage(source: ImageSource.camera);
                (data == null) ? Text("scan prsecriptons ") : Image.file(data);
                setState(() {
                  if (y != null) {
                    data = File(y.path);
                  }
                });
              },
            ),
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
            ),
          ],
        ));
  }
}
