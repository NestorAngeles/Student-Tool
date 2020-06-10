
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_student_tool/home.dart';

import 'agregar_materias.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  int dkPurple = 0xFF2C1656;
  int lgPurple = 0xFF423261;
  int verde = 0xFF018629;

  //FUNCION QUE CALCULA EL TIEMPO DE LA PANTALLA SPLASH-------------------------
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () => Navigator.push(context,
        new MaterialPageRoute(builder: (context) => new Home())));

  }

  //PANTALLA SPLASH-------------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Container(
                  decoration: BoxDecoration(color: Colors.white)),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                        //flex: 2,
                        child: Container(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(height: 200,),
                                  Image.asset('design/st.png',scale: 3),
                                  Padding(
                                      padding: EdgeInsets.only(top: 10.0)),
                                  SizedBox(height: 150),
                                  Text("from",style: TextStyle(color: Colors.grey),),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text("UCAB",style: TextStyle(color: Color(verde),fontWeight: FontWeight.bold,fontSize: 25),)
                                ]))),

                  ])]));
  }

}