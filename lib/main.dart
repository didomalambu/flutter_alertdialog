
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyHome(),
  ));
}

class MyHome extends StatefulWidget {
  @override
  MyHomeState createState() => new MyHomeState();
}

enum MyDialogAction {
  yes,
  no,
  maybe
}

void _dialogResult(MyDialogAction value) {
  print('You selected $value');

}


class MyHomeState extends State<MyHome> {




  // Generate dialog
  AlertDialog dialog = new AlertDialog(
      content: new Text(
        "Lets go out nonite",
        style: new TextStyle(fontSize: 30.0),),
        actions: <Widget>[
          new FlatButton(onPressed: (){_dialogResult(MyDialogAction.yes);}, child: new Text('Yes')),
          new FlatButton(onPressed: (){_dialogResult(MyDialogAction.no);}, child: new Text('No')),
          new FlatButton(onPressed: (){_dialogResult(MyDialogAction.maybe);}, child: new Text('Maybe')),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Alert Dialog"),
        ),
        body: new Container(
          child: new Center(
            child: new RaisedButton(
                child: new Text("Touch the boutton"),
                // On press of the button
                onPressed: () {
                  // Show dialog
                  showDialog(context: context, child: dialog);
                }),
          ),
        ));
  }
}