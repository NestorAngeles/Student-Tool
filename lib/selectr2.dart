import 'dart:core';
import 'dart:core' as prefix0;
import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:proyecto_student_tool/automatico.dart';
import 'package:proyecto_student_tool/home.dart';
import 'package:proyecto_student_tool/informacion.dart';
import 'package:proyecto_student_tool/resultados.dart';

class Selectr2 extends StatefulWidget {

  Selectr2({this.aprobadas,this.listacarrera,this.boolcarrera,this.dolar,this.ucredito,this.limiteuc});
  var aprobadas = new List();
  var listacarrera = new List();
  bool boolcarrera;
  int ucredito,dolar;
  int limiteuc;

  @override
  Selectr2State createState() => new Selectr2State(aprobadas: aprobadas, listacarrera: listacarrera, boolcarrera: boolcarrera, ucredito: ucredito, dolar: dolar, limiteuc: limiteuc);

}

class Selectr2State extends State<Selectr2>{

  Selectr2State({this.aprobadas,this.listacarrera,this.boolcarrera, this.ucredito, this.dolar, this.limiteuc});
  var aprobadas = new List();
  var listacarrera = new List();
  var checks = new List.filled(100, false);

  var resultados = new List();
  bool boolcarrera,boollimite;
  int verde = 0xFF018629;
  int ucredito,dolar;
  int acumuc=0;
  int limiteuc;
  Color colorsito = Color(0xFF018629);



  analizador (materias,listaCarrera) {
    /* ------------------------------------------ Inicio del Algoritmo ------------------------------------------------------------------*/
    if (materias!=null) {        /* Si hay materias guardadas en la lista */
      var cantidad = materias.length;
      /* contando las materias que se han aprobado */
      var aprobadas=0;
      for (int i = 0; i < materias.length; i++) {
        if (materias[i]["Nota"]>=10) {
          aprobadas++;
        }
      }
      /* buscando todas las materias que no ha visto el estudiante aun y calculando las UC acumuladas*/
      var materiasPend = new List (listaCarrera.length-aprobadas);
      var contadorMaterias= 0;
      var flag= 0;
      var UC=0;
      for (int i = 0; i < listaCarrera.length; i++) {
        for (int j = 0; j < cantidad; j++) {
          if(listaCarrera[i]["Codigo"]==materias[j]["Codigo"] && materias[j]["Nota"]>=10 ) {
            flag=1;
            UC=UC+materias[j]["UC"];
          }
        }
        if (flag==1) {
          flag=0;
        } else {
          materiasPend[contadorMaterias] = listaCarrera[i];
          contadorMaterias++;
          flag=0;
        }
      }
      /* buscando las materias que puede ver el estudiante a futuro */
      var materiasVer=0;
      contadorMaterias=0;

      for (int i = 0; i < materiasPend.length; i++) {/* Contando la cantidad de materias que se pueden ver y volviendolas elegibles */
        for (int j = 0; j < materias.length; j++) {
          for (int k = 0; (k < (materiasPend[i]["Requisitos"]).length); k++) {
            print(materiasPend[i]["Requisitos"].length);
            print(i);

            print(k);
            print(materiasPend[i]['Asignatura']);
            if(materiasPend[i]["Requisitos"][k]==materias[j]["Codigo"] && materias[j]["Nota"]>=10 ) {
              materiasPend[i]["Requisitos"][k]=0000;

            }
          }
        }
        var requisitosContador=0;
        for (int j = 0; j < materiasPend[i]["Requisitos"].length; j++)
        {
          requisitosContador=requisitosContador+materiasPend[i]["Requisitos"][j];
        }
        if (requisitosContador==0) {
          materiasVer++;
        }
        if(requisitosContador>1000 ) {
          var totalReq=requisitosContador-1000;
          if(UC>=totalReq) {
            materiasVer++;
          }
        }
      }
      var materiasFuturas= new List(materiasVer);
      for (int i = 0; i < materiasPend.length; i++) {
        var requisitosContador=0;
        for (int j = 0; j < materiasPend[i]["Requisitos"].length; j++)
        {
          requisitosContador=requisitosContador+materiasPend[i]["Requisitos"][j];
        }
        if (requisitosContador==0) {
          materiasFuturas[contadorMaterias]=materiasPend[i];
          var valorf=materiasFuturas[contadorMaterias]["Asignatura"];
          print("$contadorMaterias""- $valorf");
          contadorMaterias++;
        }
        if (requisitosContador>1000) {
          if(UC>=requisitosContador-1000) {
            materiasFuturas[contadorMaterias]=materiasPend[i];
            var valorf=materiasFuturas[contadorMaterias]["Asignatura"];
            print("$contadorMaterias""- $valorf");
            contadorMaterias++;
          }
        }
      }
      return materiasFuturas;
    } else if(materias==null) { /* Si no existe una lista (no ha visto ninguna materia), se guardan las asignaturas con requisitos 0000 */
      var flagR=0;
      var contadorM=0;
      for (int i = 0; flagR!=1; i++) {
        if (listaCarrera[i]["Requisitos"]==0) {
          var valorg=listaCarrera[i]["Asignatura"];
          print(" $valorg");
          contadorM++;
        } else {
          flagR=1;
        }
      }
      var materiasFuturas= new List(contadorM);
      for (int i = 0; i<listaCarrera.length; i++) {
        if (listaCarrera[i]["Requisitos"]==0) {
          materiasFuturas[i]=listaCarrera[i];
        } else {
          flagR=1;
        }
      }
      return materiasFuturas;
    }
    /* ------------------------------------------ Fin del Algoritmo ------------------------------------------------------------------*
         */
  }

  void initState() {
    super.initState();
    print('aprobadasss '+listacarrera[52].toString());
    resultados = analizador(aprobadas, listacarrera);
    print(resultados[0]);

    if(dolar==1){
      colorsito = Colors.white;
    }
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            title: Text('Paso 3'),
            backgroundColor: Color(verde),

        ),
        body: new SingleChildScrollView(
            child:
            Column(
                children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 40),
                        Container(
                            child: new Center(
                                child: Column(
                                  children: <Widget>[
                                    Text('Precio de la UC',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                                    Text(ucredito.toString()+' BsS',style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500,color: Colors.green)),
                                    Text((ucredito~/dolar).toString()+' USD',style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: colorsito)),
                                    Text('Limite de UC por inscribir',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                                    Text(limiteuc.toString()+'uc',style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500,color: Colors.green)),
                                  ],
                                )
                            )),
                        //SizedBox(height: 15.0),
                        Container(
                            padding: EdgeInsets.only(
                                top: 35.0, left: 20.0, right: 20.0),
                            child: Column(
                              children: <Widget>[
                                //SizedBox(height: 20.0),

                                SizedBox(height: 30.0),
                                Container(
                                  height: 40.0,
                                  child: Material(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Color(verde),
                                    elevation: 7.0,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(context,
                                            new MaterialPageRoute(builder: (context) =>
                                            new Resultados(aprobadas: aprobadas,listacarrera: listacarrera, boolcarrera: true, ucredito: ucredito, dolar: dolar,limiteuc: limiteuc,)));
                                      },
                                      child: Center(
                                        child: Text(
                                          'Selección manual',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Montserrat'),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                //SizedBox(height: 15.0),

                                /*Container(
                                  height: 40.0,
                                  child: Material(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Color(verde),
                                    elevation: 7.0,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(context,
                                            new MaterialPageRoute(builder: (context) => new Automatico(aprobadas: aprobadas,listacarrera: listacarrera,
                                          acumuc: acumuc,
                                          ucredito: ucredito,
                                          dolar: dolar,
                                                limiteuc:limiteuc)));
                                      },
                                      child: Center(
                                        child: Text(
                                          'Selección recomendada',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Montserrat'),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),*/
                                SizedBox(height: 15.0),
                                Container(
                                  height: 40.0,
                                  child: Material(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Color(verde),
                                    elevation: 7.0,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(context,
                                            new MaterialPageRoute(builder: (context) =>
                                        new Informacion(aprobadas:aprobadas)));
                                      },
                                      child: Center(
                                        child: Text(
                                          'Información Adicional',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Montserrat'),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),


                              ],
                            )),
                        SizedBox(height: 15.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            /*InkWell(
                              onTap: () {
                                editName(context);
                                //Navigator.of(context).pushNamed('/signup');
                              },
                              child: Text(
                                'Omitir',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline),
                              ),
                            )*/
                          ],
                        )
                      ],
                    ),
                  SizedBox(height: 200,)

                ])));
  }

  void el_check(bool i){
    setState(() {
    });
    checks[0] = i;
  }

  void acumularuc(int i, bool value){

    if(((acumuc + resultados[i]['UC'])>40) && value==true){
      setState(() {
        checks[i] = false;
      });
      Fluttertoast.showToast(
          backgroundColor: Colors.red,
          msg: 'No puedes inscribir mas de 40 unidades de creditos',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIos: 1,
          textColor: Colors.white
      );
    }

    if(!value) {
      print(acumuc);
      acumuc = acumuc - resultados[i]['UC'];

    }else {
      if (value && (acumuc + resultados[i]['UC']) <= 40)
        acumuc = acumuc + resultados[i]['UC'];
    }
  }

  Future<bool> editName(BuildContext context) async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Center(child:
              Text('Información:', style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),),
              content:
              Container(
                  height: 170,
                  width: 120,
                  child:
                  Column(
                    children:<Widget>[
                      Text('¿Desea continuar sin agregar un limite de unidad de credito?', textAlign: TextAlign.center,),
                      Text('El limite sera 40 uc por defecto',style: TextStyle(color: Color(verde)),),
                      //SizedBox(height: 5),
                      //SizedBox(height: 16),
                      FlatButton(
                          color: Colors.white,
                          child: Text('Continuar',style: TextStyle(color: Colors.red),),
                          textColor: Colors.red,
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(context,
                                new MaterialPageRoute(builder: (context) =>
                                new Resultados(aprobadas: aprobadas,listacarrera: listacarrera, boolcarrera: true, ucredito: 0, dolar: 0,limiteuc: 40,)));

                          }),
                      FlatButton(
                        child: Text('Regresar'),
                        color: Colors.white,
                        textColor: Colors.grey,
                        onPressed: () {
                          Navigator.pop(context);
                        },),

                    ],
                  )));
        });
  }


}