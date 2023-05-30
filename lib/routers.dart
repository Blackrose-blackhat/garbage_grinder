import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:garbage_grinder/screens/AuthPages/InitialPage.dart';
import 'package:garbage_grinder/screens/MenuScreen/help.dart';
import 'package:garbage_grinder/screens/MenuScreen/privacy.dart';
import 'package:garbage_grinder/screens/MenuScreen/aboutUs.dart';
import 'package:garbage_grinder/screens/MenuScreen/contactUs.dart';
import 'package:garbage_grinder/screens/homeScreen/home.dart';
import 'package:garbage_grinder/screens/MenuScreen/profilePage.dart';
import 'package:garbage_grinder/screens/MenuScreen/settings.dart';

import 'main.dart';

class RouteGenerate {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case InitialPage.routeName:
        return MaterialPageRoute(builder: ((context) => const InitialPage()));
      case HomePage.routeName:
        return MaterialPageRoute(builder: ((context) => const HomePage()));
      case ProfilePage.routeName:
        return MaterialPageRoute(builder: ((context) => const ProfilePage()));
      case ContactUs.routeName:
        return MaterialPageRoute(builder: ((context) => const ContactUs()));
      case AboutUs.routeName:
        return MaterialPageRoute(builder: ((context) => const AboutUs()));
      case Settings.routeName:
        return MaterialPageRoute(builder: ((context) => const Settings()));
      case Privacy.routeName:
        return MaterialPageRoute(builder: ((context) => const Privacy()));
      case Help.routeName:
        return MaterialPageRoute(builder: ((context) => const Help()));
      default:
        return MaterialPageRoute(
          builder: ((context) => Scaffold(
                appBar: AppBar(
                  centerTitle: true,
                  title: Text('Error'),
                ),
                body: Center(
                  child: Text('Error 404 Page not Found'),
                ),
              )),
        );
    }
  }
}
