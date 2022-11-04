import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:windowdesktopapp/left_side_screen.dart';
import 'package:windowdesktopapp/right_side_screen.dart';

void main(){
  runApp(const MyApp());
  doWhenWindowReady(() {
    var initialSize = Size(600, 450);
    appWindow.size = initialSize;
    appWindow.minSize = initialSize;
    appWindow.title = "Shakeeb Khan";
    appWindow.show();
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: WindowBorder(
          width: 1,
          color: Colors.grey,
          child: Row(
            children: [
              const LeftSideScreen(),
              RightSideScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
