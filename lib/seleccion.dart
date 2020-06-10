import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proyecto_student_tool/carrera.dart';
import 'package:proyecto_student_tool/manual.dart';
import 'package:proyecto_student_tool/pdf.dart';
import 'package:proyecto_student_tool/splash.dart';
import 'package:proyecto_student_tool/uc.dart';
import 'agregar_materias.dart';

class Seleccion extends StatelessWidget {
  int azul = 0xFF2C1656;
  int verde = 0xFF018629;
  int amarillo = 00 ;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          backgroundColor: Color(verde),
          title: Text("Student Tool UCAB",textAlign: prefix0.TextAlign.center),
        ),
        backgroundColor: Colors.white,
        body:  Container(
            child: Center(
                child: new Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new SizedBox(
                        height: 180,
                      ),
                      //Image.asset('design/st.png',scale: 2),
                      //SizedBox(height: 120),
                      Text("¿Cómo desea ingresar sus materias aprobadas?",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),textAlign: prefix0.TextAlign.center,),
                      SizedBox(height: 25),
                      new InkWell(
                          onTap: () {
                            print(
                                'checkpoint');
                            Navigator.push(context,
                                new MaterialPageRoute(builder: (context) =>
                                new Carrera()));
                          },
                          child: new Container(
                              width: 300.0,
                              height: 50.0,
                              decoration: new BoxDecoration(
                                  color: Color(verde), //Theme.of(context).accentColor,
                                  border: new Border.all(color: Colors.white, width: 1.5),
                                  borderRadius: new BorderRadius.circular(10.0)),
                              child:
                              Center(
                                  child:Row(
                                    //crossAxisAlignment: CrossAxisAlignment.center,
                                      children:<Widget>[
                                        SizedBox(width: 45,),
                                        new Icon(Icons.touch_app, color: Colors. white,),
                                        SizedBox(width: 20,),
                                        new Text('Manualmente',
                                            style: new TextStyle(
                                                fontSize: 24.0,
                                                color: Colors.white))
                                      ]
                                  )
                              ))),

                      new SizedBox(
                        height: 15,
                      ),
                      new InkWell(
                          onTap: () {
                            print(
                                'checkpoint');
                            Navigator.push(context,
                                new MaterialPageRoute(builder: (context) =>
                                new Uc()));
                          },
                          child: new Container(
                              width: 300.0,
                              height: 50.0,
                              decoration: new BoxDecoration(
                                  color: Color(verde),//Theme.of(context).accentColor,
                                  border: new Border.all(color: Colors.white, width: 1.5),
                                  borderRadius: new BorderRadius.circular(10.0)),
                              child: new Center(
                                  child: Row(
                                    //crossAxisAlignment: CrossAxisAlignment.center,
                                      children:<Widget>[
                                        SizedBox(width: 20),
                                        new Icon(Icons.insert_drive_file, color: Colors. white,),
                                        SizedBox(width: 15),
                                        new Text('PDF Record Academico',
                                            style: new TextStyle(
                                                fontSize: 20.0,
                                                color: Colors.white))
                                      ]
                                  )))),

                          ])),

                    ));
  }
}