import 'package:flutter/material.dart';

class MyCardprofil extends StatelessWidget {
  String name,phone;
  MyCardprofil(this.name,this.phone);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(name),
        SizedBox(width: 10,),
        Text(phone)
      ],
    );
  }
}