import 'package:flutter/cupertino.dart';

class CalculatorKeyBoard extends StatelessWidget {
  const CalculatorKeyBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 8,
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              CircleButton(label: 'AC'),
              CircleButton(label: '( )'),
              CircleButton(label: '%'),
              CircleButton(label: '/'),
            ],
          )),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CircleButton(label: '7'),
                CircleButton(label: '8'),
                CircleButton(label: '9'),
                CircleButton(label: 'X'),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CircleButton(label: '4'),
                CircleButton(label: '5'),
                CircleButton(label: '6'),
                CircleButton(label: '-'),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CircleButton(label: '1'),
                CircleButton(label: '2'),
                CircleButton(label: '3'),
                CircleButton(label: '+'),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CircleButton(label: '+/-'),
                CircleButton(label: '0'),
                CircleButton(label: '.'),
                CircleButton(label: '='),
              ],
            ),
          )
        ]));
  }
}

class CircleButton extends StatelessWidget {
  final String label;
  final Color color;
  final Color textColor;
  const CircleButton({
    Key? key,
    required this.label,
    this.color = const Color.fromARGB(255, 0, 0, 0),
    this.textColor = const Color.fromARGB(255, 255, 255, 255),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        color: color,
      ),
      margin: const EdgeInsets.all(4),
      child: Text(
        label,
        style: TextStyle(color: textColor),
      ),
      alignment: Alignment.center,
      height: 60,
      width: 60,
    );
  }
}
