import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../screen/bottomappbar/contact.dart';
import '../screen/bottomappbar/home.dart';
import '../screen/bottomappbar/personel.dart';
import '../widgets/float_action_bottom.dart';
import '../widgets/open_url_widget.dart';
import 'bottomappbar/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  bottomNavigatorBarSelectedItem(int selectedIndex) {
    switch (selectedIndex) {
      case 0:
        return const HomeScreenBottomBar();
      case 1:
        return const PersonelScreenBottomBar();
      case 2:
        return const ServicesScreenBottomBar();
      case 3:
        return const ContactScreenBottomBar();
      default:
        return const HomeScreenBottomBar();
    }
  }

  @override
  Widget build(BuildContext context) {
    String instagramUrl = "https://www.instagram.com/terapidukkaniofficial/";

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              FontAwesomeIcons.instagram,
              color: Colors.red,
            ),
            onPressed: () => openUrl(instagramUrl),
          )
        ],
        title: Text(
          'TerapiDukkanim.com',
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(color: Colors.red, fontWeight: FontWeight.bold),
        ),
      ),
      body: bottomNavigatorBarSelectedItem(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: selectedIndex,
        backgroundColor: Colors.red,
        selectedItemColor: Colors.red,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.home),
            label: 'Anasayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.users),
            label: 'Personel',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.star),
            label: 'Hizmetlerimiz',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.mailBulk),
            label: 'İletişim',
          ),
        ],
        onTap: (int index) {
          selectedIndex = index;
          setState(() {});
        },
      ),
      floatingActionButton: const MyFAB(),
    );
  }
}
