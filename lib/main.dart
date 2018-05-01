import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'newpage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.deepPurple),
      home: new HomePage(),
      routes: <String, WidgetBuilder>{
        "/newpage": (BuildContext context) => new NewPage("New Page")
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Dawer App"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountEmail: new Text("hello2himanshusingh@gmail.com"),
              accountName: new Text("Himanshu Singh"),
              currentAccountPicture: new CircleAvatar(
                  backgroundColor: Colors.white, child: new Text("H")),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                    backgroundColor: Colors.white, child: new Text("S"))
              ],
            ),
            new ListTile(
              title: new Text("Page One"),
              trailing: new Icon(Icons.arrow_upward),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("/newpage");
              },
            ),
            new ListTile(
              title: new Text("Page Two"),
              trailing: new Icon(Icons.arrow_downward),
            ),
            new Divider(),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
              //click on close to close the naviagtion bar
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      body: new Container(
        child: new Center(
          child: new Text("Home Page"),
        ),
      ),
    );
  }
}
