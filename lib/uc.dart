import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:proyecto_student_tool/resultados.dart';
import 'package:proyecto_student_tool/selectr.dart';

import 'carrera.dart';

class Uc extends StatefulWidget {

  Uc({this.aprobadas,this.listacarrera,this.boolcarrera});
  var aprobadas = new List();
  var listacarrera = new List();
  bool boolcarrera;

  @override
  UcState createState() => new UcState(aprobadas: aprobadas, listacarrera: listacarrera, boolcarrera: boolcarrera);

}

class UcState extends State<Uc> {

  UcState({this.aprobadas, this.listacarrera, this.boolcarrera});

  var aprobadas = new List();
  var listacarrera = new List();

  var resultados = new List();
  bool boolcarrera;
  int verde = 0xFF018629;

  String ucredito;
  String dolar= "gey";
  bool booldolar=false;
  final formKey = new GlobalKey<FormState>();


  bool emailUcab(String correo) {
    String email = correo;

    if (email.endsWith("@est.ucab.edu.ve") || email.endsWith("@ucab.edu.ve"))
      return true;
    else
      return false;
  }

  String validadorCorreo(String value) {
    if (value.isEmpty)
      return "Campo vacío";
    //if (!emailUcab(value))
      //return "Correo Invalido (ejemplo@est.ucab.edu.ve)";
  }

  String validadorPassword(String value) {
    if (value.isEmpty);

  }

  bool validateAndSave() {

    if(dolar=='gey')
      booldolar = true;

    final form = formKey.currentState;
    if (form.validate()) {

      form.save();
      if(booldolar == true) {
        setState(() {
          if (dolar == '')
            dolar = '0';
        });
      }
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return new
    //WillPopScope(
        //onWillPop: () async => false,
    //child:
    Scaffold(
        appBar: AppBar(
          title: Text('Paso 2'),
          backgroundColor: Color(verde),
        ),
        resizeToAvoidBottomPadding: false,
        body: new SingleChildScrollView(
            child:
            Column(
                children: <Widget>[
                  Form(
                    key: formKey,
                    child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 40),
                        Container(
                            child: new Center(
                              child: new Image.asset('design/st.png',scale: 3,),
                            )),
                        Container(
                            padding: EdgeInsets.only(
                                top: 35.0, left: 20.0, right: 20.0),
                            child: Column(
                              children: <Widget>[
                                TextFormField(
                                  keyboardType: TextInputType.number,
                                  inputFormatters: <TextInputFormatter>[
                                    WhitelistingTextInputFormatter.digitsOnly
                                  ],
                                  decoration: InputDecoration(
                                      labelText: 'Precio de la unidad de credito (Obligatorio)',
                                      labelStyle: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.bold,
                                          color: Color(verde)),
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Theme
                                              .of(context)
                                              .primaryColor))),
                                  onSaved: (value) {
                                    ucredito = value;
                                  },
                                  validator: (value) => validadorCorreo(value),
                                ),
                                SizedBox(height: 20.0),
                                TextFormField(
                                  keyboardType: TextInputType.number,
                                  inputFormatters: <TextInputFormatter>[
                                    WhitelistingTextInputFormatter.digitsOnly
                                  ],
                                  decoration: InputDecoration(
                                      fillColor: Color(verde),
                                      labelText: 'Precio del dolar',
                                      labelStyle: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.bold,
                                          color: Color(verde)),
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Theme
                                              .of(context)
                                              .primaryColor))),
                                  onSaved: (val) {
                                      if(val==null)
                                        dolar='0';
                                      else
                                        dolar = val;
                                  },
                                ),
                                SizedBox(height: 40.0),
                                Container(
                                  height: 40.0,
                                  child: Material(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Color(verde),
                                    elevation: 7.0,
                                    child: InkWell(
                                      onTap: () {
                                        if(validateAndSave()) {
                                          Navigator.push(context,
                                              new MaterialPageRoute(builder: (context) =>
                                              new Selectr(aprobadas: aprobadas,listacarrera: listacarrera, boolcarrera: true, ucredito: int.parse(ucredito), dolar: int.parse(dolar),)));
                                        }
                                      },
                                      child: Center(
                                        child: Text(
                                          'Continuar',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Montserrat'),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15.0),
                              ],
                            )),
                        SizedBox(height: 15.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                           //Text(
                              //'¿No tienes cuenta?',
                              //style: TextStyle(fontFamily: 'Montserrat'),
                            //),
                            //SizedBox(width: 5.0),
                            InkWell(
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
                            )
                          ],
                        )
                      ],
                    ),),
                  SizedBox(height: 200,)

                ])));
    //);
  }

  void showToast(String alerta, bool color) {
    String error;

    if (alerta.contains(
        "There is no user record corresponding to this identifier."))
      alerta = "No existe alguna cuenta con esta direccion de correo";

    if (alerta.contains(
        "The password is invalid or the user does not have a password."))
      alerta = "La contraseña es invalida";

    Color colors;
    if (!color)
      colors = Colors.red;
    else
      colors = Colors.green;

    Fluttertoast.showToast(
        backgroundColor: colors,
        msg: alerta,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 2,
        textColor: Colors.white
    );
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
                  height: 140,
                  width: 120,
                  child:
                  Column(
                    children:<Widget>[
                      Text('¿Desea continuar sin agregar el precio de la unidad de credito?', textAlign: TextAlign.center,),
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
                                new Selectr(aprobadas: aprobadas,listacarrera: listacarrera, boolcarrera: true, ucredito: 0, dolar: 0,)));

                          }),
                      FlatButton(
                        child: Text('Regresar'),
                        color: Colors.white,
                        textColor: Color(verde),
                        onPressed: () {
                          Navigator.pop(context);
                        },),

                    ],
                  )));
        });
  }

}
  //@override
/*Widget build(BuildContext context) {
    return new  WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          backgroundColor: Color(verde),
          body: Center(
            child: Column(
              children: <Widget>[
                Text("Precio de la Unidad de Credito",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                TextField(
                  decoration: new InputDecoration(labelText: "Enter your number"),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    WhitelistingTextInputFormatter.digitsOnly
                ])]
            )
          ),
        ));
  }*/
