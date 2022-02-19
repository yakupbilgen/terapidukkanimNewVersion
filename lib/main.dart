import 'package:flutter/material.dart';

import 'screen/appointment_screen.dart';
import 'screen/homepage_screen.dart';

main() {
  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const HomePage(),
        "/appointmentScreen": (context) => const AppointmentScreen(),
      },
    ),
  );
}
