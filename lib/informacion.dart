import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:proyecto_student_tool/home.dart';

class Informacion extends StatefulWidget {

  Informacion({this.aprobadas});
  var aprobadas = new List();


  @override
  InformacionState createState() => new InformacionState(aprobadas: aprobadas);

}

class InformacionState extends State<Informacion>{

  InformacionState({this.aprobadas});

  var aprobadas = new List();
  int uc=0;
  int verde = 0xFF018629;
  String eco,conta,etica='';
  int ecoi,contai,eticai;

  @override
  void initState() {
    super.initState();

    for (int i = 0; i < aprobadas.length; i++) {
      uc=uc+aprobadas[i]['UC'];
    }

    print('UCCCC'+uc.toString());

    if(uc>72 && uc<77) {
      ecoi = 77 - uc;
      eco= 'Te faltan '+ecoi.toString()+'uc para inscribir Ecologia';
    }else{
      eco="No hay información disponible";
    }

    if(uc>108 && uc<113) {
      contai = 113 - uc;
      conta= 'Te faltan '+contai.toString()+'uc para inscribir Contabilidad';
    }else{
      conta="No hay información disponible";
    }

    if(uc>225 && uc<232) {
      eticai = 232 - uc;
      etica= 'Te faltan '+eticai.toString()+'uc para inscribir Empredimiento';
    }else{
      etica="No hay información disponible";
    }
    print(uc.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(verde),
        title: Text('Información'),
      ),
      body: Column(
        children: <Widget>[
          Card(
              margin: EdgeInsets.all(5),
              elevation: 10.0,
              child:
              Container(
                  padding: EdgeInsets.all(5),
                  child:
                  Row(
                    //mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      new Flexible(
                        //padding: new EdgeInsets.all(20.0),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[

                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12.0),
                              child: Row(children: <Widget>[
                                Icon(Icons.info,size: 14,),
                                Text(
                                eco,
                                style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                                //textAlign: TextAlign.center,
                              ),]),
                            ),

                          ],
                        ),
                      ),
                    ],
                  )),
          ),

          Card(
            margin: EdgeInsets.all(5),
            elevation: 10.0,
            child:
            Container(
                padding: EdgeInsets.all(5),
                child:
                Row(
                  //mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Flexible(
                      //padding: new EdgeInsets.all(20.0),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[


                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12.0),
                            child: Row(children: <Widget>[
                              Icon(Icons.info,size: 14,),
                              Text(
                                conta,
                                style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                                //textAlign: TextAlign.center,
                              ),]),
                          ),


                        ],
                      ),
                    ),
                  ],
                )),
          ),


          Card(
            margin: EdgeInsets.all(5),
            elevation: 10.0,
            child:
            Container(
                padding: EdgeInsets.all(5),
                child:
                Row(
                  //mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Flexible(
                      //padding: new EdgeInsets.all(20.0),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[


                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12.0),
                            child: Row(children: <Widget>[
                              Icon(Icons.info,size: 14,),
                              Text(
                                etica,
                                style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                                //textAlign: TextAlign.center,
                              ),]),
                          ),

                        ],
                      ),
                    ),
                  ],
                )),
          ),




          //Text()
        ],
      ),
    );
  }

}
