import 'package:flutter/cupertino.dart';

class CalculatorKeyBoard extends StatelessWidget {
  const CalculatorKeyBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            // color: Color(0x76a1a1a1),
            gradient: LinearGradient(
                colors: [Color(0x76A2A2A2), Color(0x766B6B6B)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 16,
          bottom: 16,
        ),
        height: 372,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              CircleButton(
                label: 'AC',
                color: Color(0xFFececec),
                textColor: Color(0xff000000),
              ),
              CircleButton(
                label: '( )',
                color: Color(0xFFececec),
                textColor: Color(0xff000000),
              ),
              CircleButton(
                label: '%',
                color: Color(0xFFececec),
                textColor: Color(0xff000000),
              ),
              CircleButton(
                label: '/',
                color: Color(0xffffa41e),
                textColor: Color(0xff000000),
              ),
            ],
          )),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CircleButton(label: '7'),
                CircleButton(label: '8'),
                CircleButton(label: '9'),
                CircleButton(
                  label: 'X',
                  color: Color(0xffffa41e),
                  textColor: Color(0xff000000),
                ),
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
                CircleButton(
                  label: '-',
                  color: Color(0xffffa41e),
                  textColor: Color(0xff000000),
                ),
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
                CircleButton(
                  label: '+',
                  color: Color(0xffffa41e),
                  textColor: Color(0xff000000),
                ),
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
                CircleButton(
                  label: '=',
                  color: Color(0xffffa41e),
                  textColor: Color(0xff000000),
                ),
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
        borderRadius: const BorderRadius.all(Radius.circular(31)),
        color: color,
      ),
      // margin: const EdgeInsets.all(4),
      child: Text(
        label,
        style: TextStyle(color: textColor, fontSize: 24),
      ),
      alignment: Alignment.center,
      height: 62,
      width: 62,
    );
  }
}
