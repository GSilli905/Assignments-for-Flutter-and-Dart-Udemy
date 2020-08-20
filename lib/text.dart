import 'package:flutter/material.dart';
import 'textcontrol.dart';

class UsedText extends StatelessWidget {
  final String textToDisplay;
  final Function selectHandler;

  UsedText(this.textToDisplay, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text(textToDisplay), TextControl(selectHandler)],
    );
  }
}
