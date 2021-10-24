import 'package:cuali_green_calculator/pages/login/main_register.dart';
import 'package:cuali_green_calculator/pages/login/main_signin.dart';
import 'package:cuali_green_calculator/pages/main_page/main_page.dart';
import 'package:flutter/material.dart';

class Logino extends StatelessWidget {
  const Logino({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 32.0),
                child: Image.asset("assets/png/tree.png"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Text(
                  "Bienvenido a Cualli",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black54,
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                "Cualli es una iniciativa de BBVA enfocada a calcular la huella verde de sus clientes basandose en las operaciones financieras de cada cliente.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0, color: Colors.black),
              ),
              SizedBox(
                height: 25.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return Login();
                      },
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(169, 176, 185, 0.42),
                        spreadRadius: 0,
                        blurRadius: 8,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      "Entrar",
                      style: TextStyle(
                        fontFamily: "lato",
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return Register();
                      },
                    ),
                  );
                },
                child: Text(
                  "Crea una cuenta",
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
