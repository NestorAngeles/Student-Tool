import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proyecto_student_tool/manual.dart';
import 'package:proyecto_student_tool/manual_civil.dart';
import 'package:proyecto_student_tool/seleccion.dart';
import 'package:proyecto_student_tool/splash.dart';
import 'agregar_materias.dart';

class Carrera extends StatelessWidget {
  int azul = 0xFF2C1656;
  int verde = 0xFF018629;
  int amarillo = 00 ;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
            backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(verde),
          title: Text("Student Tool UCAB",textAlign: prefix0.TextAlign.center),
        ),
            body:  Container(
                child: Center(
                    child: new Column(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new SizedBox(
                            height: 200,
                          ),
                          //Image.asset('design/st.png',scale: 2),
                          //SizedBox(height: 120),
                          Text("Selecciona tu carrera",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                          SizedBox(height: 20),
                          new InkWell(
                              onTap: () {
                                print(
                                    'checkpoint');
                                Navigator.push(context,
                                    new MaterialPageRoute(builder: (context) =>
                                    new Manual()));
                              },
                              child: new Container(
                                  width: 300.0,
                                  height: 50.0,
                                  decoration: new BoxDecoration(
                                      color: Color(verde),//Theme.of(context).accentColor,
                                      border: new Border.all(color: Colors.white, width: 1.5),
                                      borderRadius: new BorderRadius.circular(10.0)),
                                  child: new Center(
                                      child: new Text('Ing. Informática',
                                          style: new TextStyle(
                                              fontSize: 24.0,
                                              color: Colors.white))))),
                          new SizedBox(
                            height: 15,
                          ),
                          new InkWell(
                              onTap: () {
                                print(
                                    'checkpoint');
                                Navigator.push(context,
                                    new MaterialPageRoute(builder: (context) =>
                                    new Manual_Civil()));
                              },
                              child: new Container(
                                  width: 300.0,
                                  height: 50.0,
                                  decoration: new BoxDecoration(
                                      color: Color(verde), //Theme.of(context).accentColor,
                                      border: new Border.all(color: Colors.white, width: 1.5),
                                      borderRadius: new BorderRadius.circular(10.0)),
                                  child: new Center(
                                      child: new Text('Ing. Civil',
                                          style: new TextStyle(
                                              fontSize: 24.0,
                                              color: Colors.white))))),

                        ]))));
  }
}
