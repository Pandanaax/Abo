import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color backgroundColor;

  const Button({@required this.text, @required this.backgroundColor}) : super();

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this.text),
      onPressed: () => {},
      color: this.backgroundColor,
    );
  }
}

class PrimaryButton extends Button {
  PrimaryButton({String text})
      : super(text: text, backgroundColor: Colors.green);
}

class DangerButton extends Button {
  DangerButton({String text}) : super(text: text, backgroundColor: Colors.red);
}
