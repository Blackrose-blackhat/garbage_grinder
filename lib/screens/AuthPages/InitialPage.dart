import 'package:flutter/material.dart';
import 'package:garbage_grinder/utils/constant.dart';

class InitialPage extends StatefulWidget {
  static const routeName = "/";
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Flexible(
              child: Container(),
              flex: 2,
            ),
            //ICON HERE
            Container(
              child: const Text(
                'Icon here',
                style: TextStyle(
                  fontSize: 32,
                ),
              ),
            ),
            Container(
              height: 330,
              width: 330,
              child: Image(
                image: AssetImage("assets/Logo.png"),
              ),
            ),
            Container(
              child: const Text(
                'Welcome',
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            Container(
              child: const Text(
                'Create an account and get reilief from your garbage',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 19,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(17),
              width: double.infinity,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(9),
                ),
              ),
              child: const Text(
                "Getting Started!",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 29,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an Account?"),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            Flexible(
              child: Container(),
              flex: 2,
            ),
          ],
        ),
      ),
    ));
  }
}
