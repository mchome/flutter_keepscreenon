import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_keepscreenon/flutter_keepscreenon.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool activeFlag = false;
  String errMsg = '';

  toggleFlag() async {
    try {
      if (activeFlag) {
        await FlutterKeepscreenon.deactivateKeepScreenOn;
      } else {
        await FlutterKeepscreenon.activateKeepScreenOn;
      }
      setState(() => activeFlag = !activeFlag);
    } on PlatformException catch (e) {
      print(e);
      setState(() => errMsg = e.message);
    }

    if (!mounted) return;
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Flutter_keepscreenon plugin example app'),
        ),
        body: new Center(
          child: new Container(
            height: 100.0,
            child: new Column(
              children: <Widget>[
                new Switch(
                  onChanged: (bool value) => toggleFlag(),
                  value: activeFlag,),
                new Text(activeFlag ? 'It\'s on!' : 'It\'s off!',),
                new Text(errMsg,),
              ],
            ),
          )
        ),
      ),
    );
  }
}
