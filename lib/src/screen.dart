import 'package:flutter/cupertino.dart';

class CalculatorScreen extends StatelessWidget {
  String result;
  CalculatorScreen({Key? key, this.result = '0'}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(result),
      color: const Color.fromARGB(255, 255, 255, 255),
    );
  }
}
