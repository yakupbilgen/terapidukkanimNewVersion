import 'package:flutter/material.dart';

import '../widgets/open_url_widget.dart';

class AppointmentCardWidget extends StatelessWidget {
  const AppointmentCardWidget(
      {Key? key,
      required this.theraphyImage,
      required this.therapyName,
      required this.theraphyUrl})
      : super(key: key);

  final String theraphyImage;
  final String therapyName;
  final String theraphyUrl;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        child: Column(
          children: [
            Image.asset("assets/images/$theraphyImage"),
            const SizedBox(height: 10),
            Center(
              child: Text(therapyName,
                  style: Theme.of(context).textTheme.headline5),
            ),
            const SizedBox(height: 10),
            CustomButton(theraphyUrl: theraphyUrl),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String theraphyUrl;
  const CustomButton({Key? key, required this.theraphyUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;

    return Container(
      width: deviceSize.width,
      height: deviceSize.height * 0.06,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          color: Colors.red),
      child: TextButton(
        onPressed: () => openUrl(theraphyUrl),
        child: Text(
          'Randevu Almak İçin Tıklayın',
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
