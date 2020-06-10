import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proyecto_student_tool/carrera.dart';
import 'package:proyecto_student_tool/seleccion.dart';
import 'package:proyecto_student_tool/splash.dart';
import 'agregar_materias.dart';

class Home extends StatelessWidget {
  int azul = 0xFF2C1656;
  int verde = 0xFF018629;
  int amarillo = 00 ;

  @override
  Widget build(BuildContext context) {
    return new  WillPopScope(
        onWillPop: () async => false,
    child:MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
            body:  Container(
                child: Center(
                    child: new Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new SizedBox(
                            height: 140,
                          ),
                          Image.asset('design/st.png',scale: 2),
                          SizedBox(
                            height: 130,
                          ),
                          new InkWell(
                              onTap: () {
                                Navigator.push(context,
                                    new MaterialPageRoute(builder: (context) =>
                                    new Seleccion()));
                              },
                              child: new Container(
                                  width: 200.0,
                                  height: 50.0,
                                  decoration: new BoxDecoration(
                                      color: Color(verde), //Theme.of(context).accentColor,
                                      border: new Border.all(color: Colors.white, width: 1.5),
                                      borderRadius: new BorderRadius.circular(10.0)),
                                  child: new Center(
                                      child: new Text('Comenzar',
                                          style: new TextStyle(
                                              fontSize: 24.0,
                                              color: Colors.white))))),
                          new SizedBox(
                            height: 15,
                          ),
                        ]))))));
  }
}
