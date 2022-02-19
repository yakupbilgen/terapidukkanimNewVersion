import 'package:flutter/material.dart';

class FirstText extends StatelessWidget {
  const FirstText({Key? key, required this.firstText}) : super(key: key);
  final String firstText;
  @override
  Widget build(BuildContext context) {
    return Text(
      firstText,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(fontWeight: FontWeight.bold, color: Colors.red),
    );
  }
}

class SubText extends StatelessWidget {
  const SubText({Key? key, required this.subText}) : super(key: key);
  final String subText;
  @override
  Widget build(BuildContext context) {
    return Text(subText,
        style: Theme.of(context)
            .textTheme
            .headline6
            ?.copyWith(fontStyle: FontStyle.italic));
  }
}
