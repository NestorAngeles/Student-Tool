import 'dart:core';
import 'dart:core' as prefix0;
import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:proyecto_student_tool/home.dart';

class Automatico extends StatefulWidget {

  Automatico({this.aprobadas,this.listacarrera,this.acumuc,this.ucredito,this.dolar,this.limiteuc});
  var aprobadas = new List();
  var listacarrera = new List();
  int acumuc, acumbs, acumdolares, ucredito, dolar;
  int limiteuc;


  @override
  AutomaticoState createState() => new AutomaticoState(aprobadas: aprobadas,listacarrera: listacarrera,acumuc: acumuc, ucredito: ucredito, dolar:dolar, limiteuc: limiteuc);

}

class AutomaticoState extends State<Automatico>{

  AutomaticoState({this.aprobadas,this.listacarrera,this.acumuc,this.ucredito,this.dolar,this.limiteuc});
  var listacarrera = new List();
  var aprobadas = new List();
  var ordenada = new List();
  var clone = new List();
  int acumulador=0;
  int acumuc= 0;
  int acumbs = 0;
  int acumdolar = 0;
  int ucredito, dolar;
  int limiteuc;
  int verde = 0xFF018629;
  var resultado = new List();

  processmat(mataprob) {
    var priorMat = new List();
    var may = 0;
    var mind = 0;
    var i = 0;
    var fix = mataprob.length;


    while (priorMat.length != mataprob.length){
      if((i <= (mataprob.length - 1)) && (mataprob[i] != null)){
        if(mataprob[i]['Pre']>=may){
          mind = i;
          may = mataprob[i]['Pre'];
        }
      }else
      if((mataprob[mind] != null ) && (acumulador+mataprob[mind]['UC'])<limiteuc){
        priorMat.add(mataprob[mind]);
        acumulador+= mataprob[mind]['UC'];
        mataprob[mind] = null; ;
        mind = 0;
        may = 0;
        i = 0;
      }
      i++;
    }
    return(priorMat);
  }


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

    resultado = analizador(aprobadas, listacarrera);

    for(var i = 0; i< resultado.length;i++)
      clone.add(resultado[i]);

    ordenada = processmat(clone);

    for(var j =0; j< ordenada.length; j++){
      acumuc = acumuc + ordenada[j]['UC'];
      acumbs = acumbs + ((ordenada[j]['UC'] * ucredito));
      acumdolar = acumdolar + ((ordenada[j]['UC'] * ucredito) ~/ dolar);
    }

    print('FINAL'+acumuc.toString());
    print('FINAL'+acumbs.toString());
    print('FINAL'+acumdolar.toString());
    print('FINAL'+ucredito.toString());
    print('FINAL'+dolar.toString());
    print(ordenada.length);
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
              itemCount: ordenada.length,
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
                                          ordenada[index]['Asignatura'],
                                          style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                          //textAlign: TextAlign.center,
                                        ),),
                                      Container(
                                        padding: EdgeInsets.all(2),
                                        child:
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 5),
                                          child: Text("Unidades de Credito = "+ordenada[index]['UC'].toString(),
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
                                            Text(ordenada[index]['Tax'],
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
                                          child: Text("Precio aproximado "+ (ordenada[index]['UC']*ucredito).toString()+' BsS',
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
                                              : new Text(( (ordenada[index]['UC']*ucredito)~/dolar).toString()+' dolares'),
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