import 'dart:core';
import 'dart:core' as prefix0;
import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:proyecto_student_tool/home.dart';

class Final extends StatefulWidget {

  Final({this.aprobadas,this.acumuc,this.acumbs,this.acumdolares,this.ucredito,this.dolar});
  var aprobadas = new List();
  int acumuc, acumbs, acumdolares, ucredito, dolar;

  @override
  FinalState createState() => new FinalState(aprobadas: aprobadas,acumuc: acumuc, acumbs: acumbs, acumdolares:acumdolares, ucredito: ucredito, dolar:dolar);

}

class FinalState extends State<Final>{

  FinalState({this.aprobadas,this.acumuc,this.acumbs, this.acumdolares,this.ucredito,this.dolar});
  var aprobadas = new List();
  int acumuc,acumbs,acumdolares, ucredito, dolar;
  int verde = 0xFF018629;

  void initState() {
    super.initState();
    print('FINAL'+acumuc.toString());
    print('FINAL'+acumbs.toString());
    print('FINAL'+acumdolares.toString());
    print('FINAL'+ucredito.toString());
    print('FINAL'+dolar.toString());
    print(aprobadas.length);
  }

  @override
  Widget build(BuildContext context) {
    return new  Scaffold(
        appBar: AppBar(
            title: Text('Resultado Final '),
            backgroundColor: Color(verde),
            actions: <Widget>[
              FlatButton(
                  onPressed: (){
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) =>
                        new Home()));
                  },
                  child:
                  Row(
                      children: <Widget>[
                        Text('Salir',style: TextStyle(color: Colors.red,fontSize: 15)),
                        Icon(Icons.exit_to_app,color: Colors.red,)
                      ]
                  ))]
        ),

        floatingActionButton: FloatingActionButton(
        backgroundColor: Color(verde),
        child:Icon(Icons.info),
        onPressed: () {
          editName(context);
        }),

        body: Container(
          child: new

          ListView.builder(
              itemCount: aprobadas.length,
              itemBuilder: (BuildContext context, int index){
                return Container(
                    child:
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
                                        child: Text(
                                          aprobadas[index]['Asignatura'],
                                          style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                          //textAlign: TextAlign.center,
                                        ),),
                                      Container(
                                        padding: EdgeInsets.all(2),
                                        child:
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 5),
                                          child: Text("Unidades de Credito = "+aprobadas[index]['UC'].toString(),
                                            style: TextStyle(),
                                            //textAlign: TextAlign.center,
                                          ),),),
                                      Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 5),
                                          child:
                                          Row(children: <Widget>[
                                            Icon(Icons.adb,size: 14,),
                                            SizedBox(
                                              width: 3,
                                            ),
                                            Text(aprobadas[index]['Tax'],
                                              style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),
                                              textAlign: TextAlign.justify,
                                            ),])),

                                      Container(
                                        padding: EdgeInsets.all(2),
                                        child:
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 5),
                                          child: Text("Precio aproximado: ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold
                                            ),
                                            //textAlign: TextAlign.center,
                                          ),),),
                                      Container(
                                        padding: EdgeInsets.all(2),
                                        child:
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 5),
                                          child: Text("Precio aproximado "+ (aprobadas[index]['UC']*ucredito).toString()+' BsS',
                                            style: TextStyle(),
                                            //textAlign: TextAlign.center,
                                          ),),),
                                      Container(
                                        padding: EdgeInsets.all(2),
                                        child:
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 5),
                                          child: dolar == 0
                                              ? new Text('')
                                              : new Text(( (aprobadas[index]['UC']*ucredito)~/dolar).toString()+' dolares'),
                                        ),),

                                    ],
                                  ),
                                ),
                              ],
                            ))
                      //crossAxisAlignment: CrossAxisAlignment.start,),
                    )

                );
              }),





        )
    );
  }

  Future<bool> editName(BuildContext context) async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Center(child:
              Text('Información Final:', style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),),
              content:
              Container(
                  height: 170,
                  width: 120,
                  child:
                  Column(
                    children:<Widget>[
                      Text('UC totales ='+acumuc.toString(), textAlign: TextAlign.center,),
                      SizedBox(height: 23,),
                      Text('Precio Total:', textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(acumbs.toString()+' BsS', textAlign: TextAlign.center,),
                      Text(acumuc.toString()+' USD', textAlign: TextAlign.center,),
                      SizedBox(height: 23,),

                      //SizedBox(height: 5),
                      //SizedBox(height: 16),
                      FlatButton(
                        child: Text('Volver'),
                        color: Colors.grey,
                        textColor: Colors.white,
                        onPressed: () {
                          Navigator.pop(context);
                        },),

                    ],
                  )));
        });
  }

}