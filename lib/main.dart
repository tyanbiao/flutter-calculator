import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'src/screen.dart';
import 'src/keyboard.dart';

void main() {
  runApp(MediaQuery(
    data: MediaQueryData.fromWindow(window),
    child: const Directionality(
        textDirection: TextDirection.ltr, child: Calculator()),
  ));
}

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Column(
          children: [
            Expanded(
              child: CalculatorScreen(),
            ),
            const Expanded(
              child: CalculatorKeyBoard(),
            ),
          ],
        ));
  }
}
