import 'package:flutter/material.dart';

import '../../widgets/contact_screen_text.dart';
import '../../widgets/open_url_widget.dart';

class ContactScreenBottomBar extends StatelessWidget {
  final String mailAdress = "iletisim@terapidukkanim.com";

  const ContactScreenBottomBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Expanded(
            flex: 1,
            child: SizedBox(),
          ),
          Expanded(
            child: Column(
              children: [
                const ContactScreenText(text: 'Bizlere'),
                TextButton(
                  onPressed: () => openUrl("mailto:$mailAdress"),
                  child: Text(
                    'iletisim@terapidukkanim.com',
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        color: Colors.white, backgroundColor: Colors.red),
                  ),
                ),
                const ContactScreenText(text: 'Adresinden ulabilirsiniz.'),
                const ContactScreenText(text: '\nUnutmayın!'),
                const ContactScreenText(text: 'Sizler için buradayız.'),
              ],
            ),
          ),
          const Expanded(
            flex: 1,
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
