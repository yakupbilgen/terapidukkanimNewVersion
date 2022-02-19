import 'package:flutter/material.dart';

class AppointmentButton extends StatelessWidget {
  const AppointmentButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;

    return Container(
      width: deviceSize.width,
      height: deviceSize.height * 0.07,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          color: Colors.red),
      child: TextButton(
        onPressed: () => Navigator.pushNamed(context, "/appointmentScreen"),
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
