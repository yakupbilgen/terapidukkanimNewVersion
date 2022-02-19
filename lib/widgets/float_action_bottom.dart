import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'open_url_widget.dart';

class MyFAB extends StatelessWidget {
  const MyFAB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String whatsappNumber = "https://api.whatsapp.com/send?phone=905453798993";

    return FloatingActionButton(
      child: const Icon(FontAwesomeIcons.whatsapp),
      backgroundColor: Colors.green,
      onPressed: () => openUrl(whatsappNumber),
    );
  }
}
