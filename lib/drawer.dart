import 'package:flutter/material.dart';
import './pages/calendar_page.dart';

class MyDrawer extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: Text("Xaver Schmitt", style: TextStyle(color: Colors.black)),
            accountEmail: Text("schmitt.xaver@googlemail.com", style: TextStyle(color: Colors.black)),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundImage: AssetImage("res/images/Schmitt_Xaver.png"),
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("res/images/KJ_logo.png")
              )
            ),
          ),
          new ListTile(
            title: new Text("Kalender"),
            trailing: new Icon(Icons.today),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new CalendarPage()));
            } 
          ),
          new ListTile(
            title: new Text("Umfragen"),
            trailing: Row(mainAxisSize: MainAxisSize.min,
                children: <Widget>[new Icon(Icons.done), new Icon(Icons.clear)]),
          ),
          new Divider(),
          new ListTile(
            title: new Text("Close"),
            trailing: new Icon(Icons.cancel),
            onTap: () => Navigator.of(context).pop()
          )
        ],
      ),
    );
  }

}