import 'package:flutter/material.dart';
import 'package:untitled21/view.my%20account.dart';
import 'add.dart';
import 'delete.dart';

class myaccount extends StatefulWidget {
  @override
  State<myaccount> createState() => _MyaccountPageState();
}

class _MyaccountPageState extends State<myaccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Add_New()));
              },
              child: Text('add new')),
          SizedBox(
            height: 5,
          ),
          FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => viewall()));
              },
              child: Text('View all')),
          SizedBox(
            height: 5,
          ),
          FlatButton(onPressed: () {}, child: Text('Edit')),
          SizedBox(
            height: 5,
          ),
          FlatButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Delete()));
              },
              child: Text('Delete'))
        ],
      ),
    );
  }
}
