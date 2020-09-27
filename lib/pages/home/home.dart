import 'package:flutter/material.dart';

import 'buttons.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var scaffold = Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: new Image.asset(
              'assets/backgrounds/homePage.jpg',
              width: size.width,
              height: size.height,
              fit: BoxFit.fill,
            ),
          ),
          Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 200.0,
                height: 300.0,
                child: Image.asset('assets/others/logoAbo.png'),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Mot de passe',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              Row(
                children: <Widget>[
                  PrimaryButton(text: "Connexion"),
                  PrimaryButton(text: "Inscription"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
    return scaffold;
  }
}