import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cuali_green_calculator/pages/main_page/main_page.dart';
import 'package:cuali_green_calculator/pages/main_page/widgets/title.dart';
import 'package:cuali_green_calculator/widgets/customTextField.dart';
import 'package:cuali_green_calculator/widgets/errorDialog.dart';
import 'package:cuali_green_calculator/widgets/loadingDialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cuali_green_calculator/config/config.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailTextEditingController =
      TextEditingController();
  final TextEditingController _passwordTextEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width,
        _screenHeight = MediaQuery.of(context).size.height;
    return Material(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            MainTitle(title: "Bienvenido a Utili", subtitle: "BBVA"),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/png/tree.png",
                height: 230.0,
                width: 140.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  CustomTextField(
                    controller: _emailTextEditingController,
                    data: Icons.email_outlined,
                    hintText: "Correo",
                    isObsecure: false,
                  ),
                  CustomTextField(
                    controller: _passwordTextEditingController,
                    data: Icons.lock_open_outlined,
                    hintText: "Contraseña",
                    isObsecure: true,
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _emailTextEditingController.text.isNotEmpty &&
                        _passwordTextEditingController.text.isNotEmpty
                    ? loginUser()
                    : showDialog(
                        context: context,
                        builder: (c) {
                          return ErrorAlertDialog(
                            message: "Debes llenar todos los campos!",
                          );
                        });
              },
              child: Icon(Icons.arrow_forward_rounded),
              style: ElevatedButton.styleFrom(
                  primary: Colors.green[500],
                  fixedSize: Size(10, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(180))),
            ),
          ],
        ),
      ),
    );
  }

  FirebaseAuth _auth = FirebaseAuth.instance;
  void loginUser() async {
    showDialog(
        context: context,
        builder: (c) {
          return LoadingAlertDialog(
            message: "Verificando tu cuenta...",
          );
        });
    FirebaseUser firebaseUser;
    await _auth
        .signInWithEmailAndPassword(
      email: _emailTextEditingController.text.trim(),
      password: _passwordTextEditingController.text.trim(),
    )
        .then((authUser) {
      firebaseUser = authUser.user;
    }).catchError((error) {
      Navigator.pop(context);
      showDialog(
          context: context,
          builder: (c) {
            return ErrorAlertDialog(
              message: error.message.toString(),
            );
          });
    });
    if (firebaseUser != null) {
      readData(firebaseUser).then((s) {
        Navigator.pop(context);
        Route route = MaterialPageRoute(builder: (c) => MainPage());
        Navigator.pushReplacement(context, route);
      });
    }
  }

  Future readData(FirebaseUser firebaseUser) async {
    Firestore.instance
        .collection("users")
        .document(firebaseUser.uid)
        .get()
        .then((dataSnapshot) async {
      await CualliApp.sharedPreferences
          .setString("uid", dataSnapshot.data[CualliApp.userUID]);
      await CualliApp.sharedPreferences.setString(
          CualliApp.userEmail, dataSnapshot.data[CualliApp.userEmail]);
      await CualliApp.sharedPreferences
          .setString(CualliApp.userName, dataSnapshot.data[CualliApp.userName]);
      await CualliApp.sharedPreferences.setString(
          CualliApp.userAvatarUrl, dataSnapshot.data[CualliApp.userAvatarUrl]);
      List<String> categoria =
          dataSnapshot.data[CualliApp.userCatagoria].cast<String>();

      await CualliApp.sharedPreferences
          .setStringList(CualliApp.userCatagoria, categoria);
    });
  }
}
