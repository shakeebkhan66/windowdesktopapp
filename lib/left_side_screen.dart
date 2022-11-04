import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';

class LeftSideScreen extends StatelessWidget {
  const LeftSideScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    var sideBarColor = const Color(0xffF6A00C);
    
    return SizedBox(
      width: 200,
      child: Container(
        color: sideBarColor,
        child: Column(
          children: [
            WindowTitleBarBox(
              child: MoveWindow(),
            )
          ],
        ),
      ),
    );
  }
}
