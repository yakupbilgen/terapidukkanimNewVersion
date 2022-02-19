import 'package:flutter/material.dart';

class ContactScreenText extends StatelessWidget {
  final String text;
  const ContactScreenText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline5,
    );
  }
}
