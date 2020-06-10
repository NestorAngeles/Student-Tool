import 'dart:core';
import 'dart:core' as prefix0;
import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:proyecto_student_tool/home.dart';

class Resultados extends StatefulWidget {

  Resultados({this.aprobadas,this.listacarrera,this.boolcarrera,this.dolar,this.ucredito});
  var aprobadas = new List();
  var listacarrera = new List();
  bool boolcarrera;
  int ucredito,dolar;

  @override
  ResultadosState createState() => new ResultadosState(aprobadas: aprobadas, listacarrera: listacarrera, boolcarrera: boolcarrera, ucredito: ucredito, dolar: dolar);

}

class ResultadosState extends State<Resultados>{

  ResultadosState({this.aprobadas,this.listacarrera,this.boolcarrera, this.ucredito, this.dolar});
  var aprobadas = new List();
  var listacarrera = new List();
  var checks = new List.filled(100, false);

  var resultados = new List();
  bool boolcarrera;
  int verde = 0xFF018629;

  int ucredito,dolar;
  int acumuc=0;

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



  }

  @override
  Widget build(BuildContext context) {
    return new  WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
            appBar: AppBar(
                title: Text('UC= '+ acumuc.toString()),
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
                            Text('Salir  ',style: TextStyle(color: Colors.red,fontSize: 18)),
                            Icon(Icons.exit_to_app,color: Colors.red,)
                          ]
                      ))]
            ),
            body: Container(
              child: new ListView.builder(
                  itemCount: resultados.length,
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
                                              resultados[index]['Asignatura'],
                                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                              //textAlign: TextAlign.center,
                                            ),),
                                          Container(
                                            padding: EdgeInsets.all(2),
                                            child:
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 5),
                                              child: Text("Unidades de Credito = "+resultados[index]['UC'].toString(),
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
                                                Text(resultados[index]['Tax'],
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
                                              child: Text("Precio aproximado "+ (resultados[index]['UC']*ucredito).toString()+' BsS',
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
                                                  : new Text(( (resultados[index]['UC']*ucredito)~/dolar).toString()+' dolares'),
                                            ),),

                                        ],
                                      ),
                                    ),
                                    Checkbox(
                                      value: checks[index],
                                      onChanged: (bool value){
                                        //if((acumuc + resultados[index]['UC'])<40) {
                                        setState(() {
                                          checks[index] = value;
                                        });
                                        //}else{
                                        //checks[index] = false;
                                        //}
                                        acumularuc(index,value);
                                        //print(checks[index]);
                                        //el_check(value);
                                        //checks[index] = value;
                                        print(index);
                                      },
                                    )
                                  ],
                                ))
                          //crossAxisAlignment: CrossAxisAlignment.start,),
                        )

                    );
                  }),
            )
        ));
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

}