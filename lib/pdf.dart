import 'dart:io';
import 'dart:async';
//import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_student_tool/agregar_materias.dart';

class Pdf extends StatefulWidget {

  @override
  PdfState createState() => new PdfState();
}

class PdfState extends State<Pdf> {

  String next="";

  int indexActual = 1;
  File _image;
  Color siguiente = Colors.grey;
  bool isImage=false;

  int verde = 0xFF018629;


  Widget callPage(int index){
    switch(index){
      default: print("hola");
    }
  }

  //---FUNCIONES DE LOS 3 BOTONES-----------------------------------------------

  void getImage() async{
    //if(_image !=null)
    //showToast("Ya hay una imagen seleccionada");
    //else {
    //var image = await ImagePicker.pickImage(source: ImageSource.camera,maxHeight: 400,maxWidth: 400);
    setState(() {
      //if(image!=null)
        //_image = image;
      if(_image!=null) {
        siguiente = Colors.green;
        isImage = true;
        next = "Siguiente";
      }
    });
    //}

  }

  Future deleteImage() async {
    //if (_image == null)
    //showToast("No hay ninguna imagen para eliminar");
    //else {
    setState(() {
      _image = null;
    });
    //}
  }

  Future nextPage() async{
    //if(_image == null)
    //showToast("No a seleccionado ninguna imagen todavia");
    //else{
    //Pasar a la siguiente pagina.
    //showToast("next page");
    //}
  }
  //----------------------------------------------------------------------------


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Agregar PDF'),
        backgroundColor: Color(verde),
        actions: <Widget>[
          FlatButton(
            child: Text(next,style: TextStyle(color: siguiente,fontSize: 20)),
            onPressed: (){
              if(isImage) {
                Navigator.push(context,
                    new MaterialPageRoute(
                        builder: (context) => new agregar_materias()));
              }
            },
          )
        ],
      ),


      //CUERPO DONDE SE UBICA LA IMAGEN CAPTURADA---------------------------
      body: new Center(
        child: _image == null
            ? new Text('No has seleccionado ningún PDF')
            : new Image.file(_image),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(verde),
          child:Icon(Icons.picture_as_pdf),
          onPressed: () {
              editName(context);
          }),

    );
  }


  Future<bool> editName(BuildContext context) async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Center(child:
              Text('PROXIMAMENTE...', style: TextStyle(fontSize: 15.0)),),
              content:
              FlatButton(
                child: Text('Regresar'),
                color: Color(verde),
                textColor: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },),
          );
        });
  }

}