import 'package:flutter/material.dart';

import '../widgets/float_action_bottom.dart';
import '../widgets/appointment_card.dart';

class AppointmentScreen extends StatelessWidget {
  final String appBarTitle = 'Online Randevu Al';
  final String yetiskinLinkUrl =
      "https://www.terapidukkanim.com/bookings-checkout/bireysel-terapi-yeti%C5%9Fkin/book";
  final String ergenLinkUrl =
      "https://www.terapidukkanim.com/bookings-checkout/bireysel-terapi-ergen/book";
  final String ebeveynLinkUrl =
      "https://www.terapidukkanim.com/service-page/yap%C4%B1land%C4%B1r%C4%B1lm%C4%B1%C5%9F-oyun-terapisi-ebeveyn";

  const AppointmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          appBarTitle,
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(color: Colors.red, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              AppointmentCardWidget(
                  theraphyImage: 'bireysel_terapi_yetiskin.png',
                  therapyName: 'Bireysel Terapi - Yetişkin',
                  theraphyUrl: yetiskinLinkUrl),
              AppointmentCardWidget(
                theraphyImage: 'bireysel_terapi_ergen.png',
                therapyName: 'Bireysel Terapi - Ergen (13-18 Yaş)',
                theraphyUrl: ergenLinkUrl,
              ),
              AppointmentCardWidget(
                theraphyImage: 'bireysel_terapi_cocuk.png',
                therapyName: 'Bireysel Terapi - Çocuk (7-12 Yaş)',
                theraphyUrl: ergenLinkUrl,
              ),
              AppointmentCardWidget(
                theraphyImage: 'yapilandirilmis_oyun_terapisi.png',
                therapyName: 'Yapılandırılmış Oyun Terapisi (Ebeveyn)',
                theraphyUrl: ebeveynLinkUrl,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: const MyFAB(),
    );
  }
}
