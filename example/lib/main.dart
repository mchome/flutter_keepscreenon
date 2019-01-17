import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_keepscreenon/flutter_keepscreenon.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool activeFlag = false;
  String errMsg = '';

  toggleFlag() async {
    try {
      if (activeFlag)
        await FlutterKeepscreenon.keepScreenOn(false);
      else
        await FlutterKeepscreenon.keepScreenOn(true);
      setState(() => activeFlag = !activeFlag);
    } on PlatformException catch (e) {
      print(e);
      setState(() => errMsg = e.message);
    }

    if (!mounted) return;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter_keepscreenon plugin example app'),
        ),
        body: Center(
            child: Container(
          height: 100.0,
          child: Column(
            children: <Widget>[
              Switch(
                onChanged: (bool value) => toggleFlag(),
                value: activeFlag,
              ),
              Text(
                activeFlag ? 'It\'s on!' : 'It\'s off!',
              ),
              Text(
                errMsg,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
