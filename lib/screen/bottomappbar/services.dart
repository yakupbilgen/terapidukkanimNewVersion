import 'package:flutter/material.dart';

import '../../widgets/appointment_button.dart';
import '../../widgets/services_screen_text.dart';

class ServicesScreenBottomBar extends StatelessWidget {
  const ServicesScreenBottomBar({Key? key}) : super(key: key);

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
            flex: 2,
            child: Column(
              children: const [
                FirstText(firstText: 'Aile Terapisi'),
                SubText(subText: 'Nitelikli Hizmet'),
                SizedBox(
                  height: 20,
                ),
                FirstText(firstText: 'Çift Terapisi'),
                SubText(subText: 'Daha Sağlıklı, Daha Mutlu Bir Siz'),
                SizedBox(
                  height: 20,
                ),
                FirstText(firstText: 'Bireysel Terapi'),
                SubText(subText: 'Sizin İçin Buradayım'),
                SizedBox(
                  height: 20,
                ),
                AppointmentButton()
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
