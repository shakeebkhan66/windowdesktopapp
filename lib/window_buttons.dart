import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/cupertino.dart';

var buttonColors = WindowButtonColors(
  iconNormal: const Color(0xff805306),
  mouseOver: const Color(0xffF6A00C),
  mouseDown: const Color(0xff805306),
  iconMouseOver: const Color(0xff805306),
  iconMouseDown: const Color(0xffFFD500),
  
);



class WindowButtons extends StatelessWidget {
  const WindowButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MinimizeWindowButton(colors: buttonColors),
        MaximizeWindowButton(colors: buttonColors),
        CloseWindowButton(),
      ],
    );
  }
}
