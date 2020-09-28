import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Widget newPage;

  const Button(
      {@required this.text, @required this.backgroundColor, this.newPage})
      : super();

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this.text),
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => (this.newPage),
            ));
      },
      color: this.backgroundColor,
    );
  }
}

class PrimaryButton extends Button {
  PrimaryButton({String text, Widget newPage})
      : super(text: text, backgroundColor: Colors.green, newPage: newPage);
}

class DangerButton extends Button {
  DangerButton({String text}) : super(text: text, backgroundColor: Colors.red);
}
