import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:windowdesktopapp/window_buttons.dart';

class RightSideScreen   extends StatelessWidget {
  RightSideScreen({Key? key}) : super(key: key);

  var backgroundStartColor = const Color(0xffFFD500);
  var backgroundEndColor = const Color(0xffF6A00C);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.0, 1.0],
            colors: [
              backgroundStartColor,
              backgroundEndColor,
            ]
          )
        ),
        child: Column(
          children: [
            WindowTitleBarBox(
              child: Row(
                children: [
                  Expanded(child: MoveWindow()),
                  const WindowButtons(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

