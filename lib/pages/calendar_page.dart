import 'package:flutter/material.dart';

class CalendarPage extends StatelessWidget
{
  final String pageText = "Calendar Page";


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(title: new Text("Kolpingjugend Kalender"), backgroundColor: Colors.orange, ),
      body: Center(
        child: Text(pageText),
      ),
    );
  }
}