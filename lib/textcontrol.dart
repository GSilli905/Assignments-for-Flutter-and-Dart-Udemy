import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function selectText;

  TextControl(this.selectText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text('Switch Text'),
        onPressed: selectText,
      ),
    );
  }
}
