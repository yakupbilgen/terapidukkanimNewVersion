import 'package:flutter/material.dart';

import 'appointment_button.dart';

class PersonelWidget extends StatelessWidget {
  final String image;
  final String title;
  final String name;
  final String desc;

  const PersonelWidget(
      {Key? key,
      required this.image,
      required this.title,
      required this.name,
      required this.desc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            SizedBox(
              width: deviceSize.width,
              height: deviceSize.height * 0.2,
              child: Image.asset(image),
            ),
            const SizedBox(height: 20),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(fontWeight: FontWeight.bold, color: Colors.red),
            ),
            const SizedBox(height: 20),
            Text(
              name,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(fontWeight: FontWeight.bold, color: Colors.red),
            ),
            const SizedBox(height: 20),
            Text(desc, style: Theme.of(context).textTheme.headline5),
            const SizedBox(height: 20),
            const AppointmentButton(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
