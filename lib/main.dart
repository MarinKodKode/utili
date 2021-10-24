import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cuali_green_calculator/pages/login/main_login.dart';
import 'package:cuali_green_calculator/pages/main_page/main_page.dart';
import 'package:cuali_green_calculator/pages/splash_screen/splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'config/config.dart';
import 'dart:async';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  CualliApp.auth = FirebaseAuth.instance;
  CualliApp.sharedPreferences = await SharedPreferences.getInstance();
  CualliApp.firestore = Firestore.instance;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cuali',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Lato',
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    displaySplash();
  }

  displaySplash() {
    /*Durante la ejecución del SplashScreen, de manera asincrona verificamos si ya existe una sesión inciada
    * dependiendo del resultado dirigimos al usuario al panel de inicio o al Login*/
    Timer(Duration(seconds: 6), () async {
      if (await CualliApp.auth.currentUser() != null) {
        Route route = MaterialPageRoute(builder: (_) => Logino());
        Navigator.pushReplacement(context, route);
      } else {
        Route route = MaterialPageRoute(builder: (_) => Logino());
        Navigator.pushReplacement(context, route);
      }
    });
  }

  /*Diseño del widget principal del splashScreen*/
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, Colors.white],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 300,
                  width: 300,
                  child: Lottie.asset(
                    'assets/lottie/life.json',
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Cualli",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                    fontFamily: 'Lato',
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
