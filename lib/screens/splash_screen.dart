import 'dart:async';
import 'package:day_task/screens/sign_in.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SignIn(),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 22.5, top: 33.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    image: AssetImage('assets/images/main_page_logo.png'),
                  )
                ],
              ),
            ),
            SizedBox(height: 25.0),
            Container(
              height: 350.0,
              // color: Colors.white,
              decoration: BoxDecoration(color: Colors.white),
              child: Image(image: AssetImage('assets/images/pana.png')),
            ),
            SizedBox(height: 1.0),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    textAlign: TextAlign.start,
                    "Manage your\nTask with",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'PilatExtended',
                      fontSize: 40.0,
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.start,
                    "DayTask",
                    style: TextStyle(
                        color: Color.fromRGBO(254, 211, 106, 1.0),
                        fontWeight: FontWeight.w900,
                        fontSize: 40.0),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              style: ButtonStyle(
                  minimumSize: MaterialStatePropertyAll(Size(600, 50)),
                  backgroundColor: MaterialStatePropertyAll(
                      Color.fromRGBO(254, 211, 106, 1.0)),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  )),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignIn(),
                    ));
              },
              child: Text("Let's Start",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            )
          ],
        ),
      ),
    );
  }
}
