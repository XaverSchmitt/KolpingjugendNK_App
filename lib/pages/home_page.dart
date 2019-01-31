import 'package:flutter/material.dart';
import 'package:kolping_app/drawer.dart';


class HomePage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("Kolpingjugend NK"), backgroundColor: Colors.orange, ),
        drawer: MyDrawer(),
        body: new Center(
          child: new Text("Home Page", style: new TextStyle(fontSize: 35.0),),
        ),
    );
  }

}