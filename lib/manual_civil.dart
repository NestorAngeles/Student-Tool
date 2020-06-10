import 'package:flutter/material.dart';
import 'package:proyecto_student_tool/resultados.dart';

class Manual_Civil extends StatefulWidget{
  @override
  Manual_CivilState createState() => new Manual_CivilState();
}

class Manual_CivilState extends State<Manual_Civil>{

  var registrociv = new List(68); /* del 0 al 67*/
  var aprobadas = new List();

  void initState(){
    super.initState();
    aprobadas.clear();



    registrociv[0]= {
      "Tipo":"civil",
      "Codigo":0053,
      "Asignatura": "Geometría Plana y Trigonometría",
      "UC": 5,
      "Tax": "TA‐6",
      "Requisitos":[0000],
      "Nota":20
    };
    registrociv[1]= {
      "Tipo":"civil",
      "Codigo":0054,
      "Asignatura": "Matemática Básica",
      "UC": 7,
      "Tax": "TA‐6",
      "Requisitos":[0000],
      "Nota":20
    };
    registrociv[2]= {
      "Tipo":"civil",
      "Codigo":0055,
      "Asignatura": "Dibujo",
      "UC": 3,
      "Tax": "TA‐9",
      "Requisitos":[0000],
      "Nota":20
    };
    registrociv[3]= {
      "Tipo":"civil",
      "Codigo":0056,
      "Asignatura": "Introdución a la Ingeniería Civil",
      "UC": 2,
      "Tax": "TA‐8",
      "Requisitos":[0000],
      "Nota":20
    };
    registrociv[4]= {
      "Tipo":"civil",
      "Codigo":0057,
      "Asignatura": "Comprensión y Producción de Textos",
      "UC": 5,
      "Tax": "TA‐6",
      "Requisitos":[0000],
      "Nota":20
    };
    registrociv[5]= {
      "Tipo":"civil",
      "Codigo":0058,
      "Asignatura": "Identidad, Liderazgo y Compromiso I",
      "UC": 3,
      "Tax": "TA‐1",
      "Requisitos":[0000],
      "Nota":20
    };
    registrociv[6]= {
      "Tipo":"civil",
      "Codigo":0059,
      "Asignatura": "Cálculo I",
      "UC": 9,
      "Tax": "TA‐4",
      "Requisitos":[0053,0054],
      "Nota":20
    };
    registrociv[7]= {
      "Tipo":"civil",
      "Codigo":0060,
      "Asignatura": "Geometría Descriptiva I",
      "UC": 8,
      "Tax": "TA‐4",
      "Requisitos":[0053,0055],
      "Nota":20
    };
    registrociv[8]= {
      "Tipo":"civil",
      "Codigo":0061,
      "Asignatura": "Física General",
      "UC": 6,
      "Tax": "TA‐4",
      "Requisitos":[0053,0054],
      "Nota":20
    };
    registrociv[9]= {
      "Tipo":"civil",
      "Codigo":0062,
      "Asignatura": "Química I",
      "UC": 6,
      "Tax": "TA‐4",
      "Requisitos":[0054],
      "Nota":20
    };
    registrociv[10]= {
      "Tipo":"civil",
      "Codigo":0063,
      "Asignatura": "Identidad, Liderazgo y Compromiso II",
      "UC": 3,
      "Tax": "TA‐1",
      "Requisitos":[0058],
      "Nota":20
    };
    registrociv[11]= {
      "Tipo":"civil",
      "Codigo":0064,
      "Asignatura": "Cálculo II",
      "UC": 8,
      "Tax": "TA‐4",
      "Requisitos":[0059],
      "Nota":20
    };
    registrociv[12]= {
      "Tipo":"civil",
      "Codigo":0065,
      "Asignatura": "Geometría Descriptiva II",
      "UC": 6,
      "Tax": "TA‐4",
      "Requisitos":[0060],
      "Nota":20
    };
    registrociv[13]= {
      "Tipo":"civil",
      "Codigo":0066,
      "Asignatura": "Laboratorio de Física General",
      "UC": 3,
      "Tax": "TA‐9",
      "Requisitos":[0061],
      "Nota":20
    };
    registrociv[14]= {
      "Tipo":"civil",
      "Codigo":0067,
      "Asignatura": "Estática",
      "UC": 5,
      "Tax": "TA‐4",
      "Requisitos":[0059,0061],
      "Nota":20
    };
    registrociv[15]= {
      "Tipo":"civil",
      "Codigo":0068,
      "Asignatura": "Química II",
      "UC": 6,
      "Tax": "TA‐4",
      "Requisitos":[0062],
      "Nota":20
    };
    registrociv[16]= {
      "Tipo":"civil",
      "Codigo":0069,
      "Asignatura": "Cálculo III",
      "UC": 7,
      "Tax": "TA‐4",
      "Requisitos":[0064],
      "Nota":20
    };
    registrociv[17]= {
      "Tipo":"civil",
      "Codigo":0070,
      "Asignatura": "Fundamentos de Programación",
      "UC": 5,
      "Tax": "TA‐9",
      "Requisitos":[1077],
      "Nota":20
    };
    registrociv[18]= {
      "Tipo":"civil",
      "Codigo":0071,
      "Asignatura": "Dinámica",
      "UC": 5,
      "Tax": "TA‐4",
      "Requisitos":[0064,0067],
      "Nota":20
    };
    registrociv[19]= {
      "Tipo":"civil",
      "Codigo":0072,
      "Asignatura": "Electricidad y Calorimetría",
      "UC": 5,
      "Tax": "TA‐4",
      "Requisitos":[0064,0067],
      "Nota":20
    };
    registrociv[20]= {
      "Tipo":"civil",
      "Codigo":0073,
      "Asignatura": "Laboratorio de Química",
      "UC": 3,
      "Tax": "TA‐9",
      "Requisitos":[0068],
      "Nota":20
    };
    registrociv[21]= {
      "Tipo":"civil",
      "Codigo":0074,
      "Asignatura": "Ecología, Ambiente y Sustentabilidad",
      "UC": 3,
      "Tax": "TA‐1",
      "Requisitos":[1077],
      "Nota":20
    };
    registrociv[22]= {
      "Tipo":"civil",
      "Codigo":0075,
      "Asignatura": "Calculo IV",
      "UC": 7,
      "Tax": "TA‐4",
      "Requisitos":[0069],
      "Nota":20
    };
    registrociv[23]= {
      "Tipo":"civil",
      "Codigo":0076,
      "Asignatura": "Topografía",
      "UC": 7,
      "Tax": "TA‐4",
      "Requisitos":[0065,0070],
      "Nota":20
    };
    registrociv[24]= {
      "Tipo":"civil",
      "Codigo":0077,
      "Asignatura": "Dibujo Asistido por Computadora",
      "UC": 2,
      "Tax": "TA‐9",
      "Requisitos":[0065,0070],
      "Nota":20
    };
    registrociv[25]= {
      "Tipo":"civil",
      "Codigo":0078,
      "Asignatura": "Instalaciones Eléctricas",
      "UC": 2,
      "Tax": "TA‐8",
      "Requisitos":[0072,0065,0070],
      "Nota":20
    };
    registrociv[26]= {
      "Tipo":"civil",
      "Codigo":0079,
      "Asignatura": "Resistencia de Materiales I",
      "UC": 5,
      "Tax": "TA‐4",
      "Requisitos":[0071],
      "Nota":20
    };
    registrociv[27]= {
      "Tipo":"civil",
      "Codigo":0080,
      "Asignatura": "Estadística y Probabilidades",
      "UC": 5,
      "Tax": "TA‐4",
      "Requisitos":[0069],
      "Nota":20
    };
    registrociv[28]= {
      "Tipo":"civil",
      "Codigo":0081,
      "Asignatura": "Contabilidad General",
      "UC": 4,
      "Tax": "TA‐6",
      "Requisitos":[1113],
      "Nota":20
    };
    registrociv[29]= {
      "Tipo":"civil",
      "Codigo":0082,
      "Asignatura": "Cálculo Numérico",
      "UC": 5,
      "Tax": "TA‐9",
      "Requisitos":[0075],
      "Nota":20
    };
    registrociv[30]= {
      "Tipo":"civil",
      "Codigo":0083,
      "Asignatura": "Resistencia de Materiales II",
      "UC": 5,
      "Tax": "TA‐4",
      "Requisitos":[0079],
      "Nota":20
    };
    registrociv[31]= {
      "Tipo":"civil",
      "Codigo":0084,
      "Asignatura": "Materiales de Construcción",
      "UC": 4,
      "Tax": "TA‐4",
      "Requisitos":[0079,0080],
      "Nota":20
    };
    registrociv[32]= {
      "Tipo":"civil",
      "Codigo":0085,
      "Asignatura": "Laboratorio de Materiales de Construcción",
      "UC": 2,
      "Tax": "TA‐9",
      "Requisitos":[0079,0080],
      "Nota":20
    };
    registrociv[33]= {
      "Tipo":"civil",
      "Codigo":0086,
      "Asignatura": "Ingeniería Económica",
      "UC": 4,
      "Tax": "TA‐4",
      "Requisitos":[0081],
      "Nota":20
    };
    registrociv[34]= {
      "Tipo":"civil",
      "Codigo":0087,
      "Asignatura": "Mecánica de los Fluidos I",
      "UC": 5,
      "Tax": "TA‐4",
      "Requisitos":[0071,0075],
      "Nota":20
    };
    registrociv[35]= {
      "Tipo":"civil",
      "Codigo":0088,
      "Asignatura": "Introducción a la Ingeniería Ambiental",
      "UC": 5,
      "Tax": "TA‐2",
      "Requisitos":[0073,0074],
      "Nota":20
    };
    registrociv[36]= {
      "Tipo":"civil",
      "Codigo":0089,
      "Asignatura": "Mecánica de Suelos I",
      "UC": 4,
      "Tax": "TA‐4",
      "Requisitos":[0079,0087],
      "Nota":20
    };
    registrociv[37]= {
      "Tipo":"civil",
      "Codigo":0090,
      "Asignatura": "Laboratorio Mecánica de Suelos I",
      "UC": 2,
      "Tax": "TA‐9",
      "Requisitos":[0079,0087],
      "Nota":20
    };
    registrociv[38]= {
      "Tipo":"civil",
      "Codigo":0091,
      "Asignatura": "Estructuras I",
      "UC": 5,
      "Tax": "TA‐4",
      "Requisitos":[0083],
      "Nota":20
    };
    registrociv[39]= {
      "Tipo":"civil",
      "Codigo":0092,
      "Asignatura": "Concreto Reforzado I",
      "UC": 4,
      "Tax": "TA‐4",
      "Requisitos":[0083,0084,0085],
      "Nota":20
    };
    registrociv[40]= {
      "Tipo":"civil",
      "Codigo":0093,
      "Asignatura": "Laboratorio de Mecánica de los Fluidos",
      "UC": 3,
      "Tax": "TA‐9",
      "Requisitos":[0087],
      "Nota":20
    };
    registrociv[41]= {
      "Tipo":"civil",
      "Codigo":0094,
      "Asignatura": "Mecánica de los Fluidos II",
      "UC": 5,
      "Tax": "TA‐4",
      "Requisitos":[0087],
      "Nota":20
    };
    registrociv[42]= {
      "Tipo":"civil",
      "Codigo":0095,
      "Asignatura": "Hidrología Básica",
      "UC": 4,
      "Tax": "TA‐4",
      "Requisitos":[0080,0087],
      "Nota":20
    };
    registrociv[43]= {
      "Tipo":"civil",
      "Codigo":0096,
      "Asignatura": "Ingeniería Sanitaria I",
      "UC": 4,
      "Tax": "TA‐4",
      "Requisitos":[0087,0088],
      "Nota":20
    };
    registrociv[44]= {
      "Tipo":"civil",
      "Codigo":0097,
      "Asignatura": "Vías de Comunicación I",
      "UC": 5,
      "Tax": "TA‐9",
      "Requisitos":[0076,0095],
      "Nota":20
    };
    registrociv[45]= {
      "Tipo":"civil",
      "Codigo":0098,
      "Asignatura": "Mecánica de Suelos II",
      "UC": 4,
      "Tax": "TA‐4",
      "Requisitos":[0089,0090],
      "Nota":20
    };
    registrociv[46]= {
      "Tipo":"civil",
      "Codigo":0099,
      "Asignatura": "Laboratorio Mecánica de Suelos II",
      "UC": 2,
      "Tax": "TA‐9",
      "Requisitos":[0089,0090],
      "Nota":20
    };
    registrociv[47]= {
      "Tipo":"civil",
      "Codigo":0100,
      "Asignatura": "Estructuras II",
      "UC": 5,
      "Tax": "TA‐4",
      "Requisitos":[0091],
      "Nota":20
    };
    registrociv[48]= {
      "Tipo":"civil",
      "Codigo":0101,
      "Asignatura": "Concreto Reforzado II",
      "UC": 4,
      "Tax": "TA‐4",
      "Requisitos":[0091,0092],
      "Nota":20
    };
    registrociv[49]= {
      "Tipo":"civil",
      "Codigo":0102,
      "Asignatura": "Hidráulica de Conducciones",
      "UC": 5,
      "Tax": "TA‐4",
      "Requisitos":[0083,0093,0094],
      "Nota":20
    };
    registrociv[50]= {
      "Tipo":"civil",
      "Codigo":0103,
      "Asignatura": "Laboratorio de Ingeniería Sanitaria",
      "UC": 3,
      "Tax": "TA‐9",
      "Requisitos":[0096],
      "Nota":20
    };
    registrociv[51]= {
      "Tipo":"civil",
      "Codigo":0104,
      "Asignatura": "Ingeniería Sanitaria II",
      "UC": 4,
      "Tax": "TA‐4",
      "Requisitos":[0096],
      "Nota":20
    };
    registrociv[52]= {
      "Tipo":"civil",
      "Codigo":0105,
      "Asignatura": "Etica Profesional",
      "UC": 3,
      "Tax": "TA‐2",
      "Requisitos":[1232],
      "Nota":20
    };
    registrociv[53]= {
      "Tipo":"civil",
      "Codigo":0106,
      "Asignatura": "Vías de Comunicación II",
      "UC": 5,
      "Tax": "TA‐9",
      "Requisitos":[0097],
      "Nota":20
    };
    registrociv[54]= {
      "Tipo":"civil",
      "Codigo":0107,
      "Asignatura": "Geología Aplicada",
      "UC": 6,
      "Tax": "TA‐9",
      "Requisitos":[0098,0099],
      "Nota":20
    };
    registrociv[55]= {
      "Tipo":"civil",
      "Codigo":0108,
      "Asignatura": "Estructuras de Acero",
      "UC": 3,
      "Tax": "TA‐4",
      "Requisitos":[0091],
      "Nota":20
    };
    registrociv[56]= {
      "Tipo":"civil",
      "Codigo":0109,
      "Asignatura": "Proyecto Estructural I",
      "UC": 5,
      "Tax": "TA‐9",
      "Requisitos":[0100,0101],
      "Nota":20
    };
    registrociv[57]= {
      "Tipo":"civil",
      "Codigo":0110,
      "Asignatura": "Ingeniería Hidráulica I",
      "UC": 6,
      "Tax": "TA‐4",
      "Requisitos":[0095,0098,0099,0102],
      "Nota":20
    };
    registrociv[58]= {
      "Tipo":"civil",
      "Codigo":0111,
      "Asignatura": "Infraestructuras hidráulicas en urbanismos",
      "UC": 4,
      "Tax": "TA‐4",
      "Requisitos":[0102,0103,0104],
      "Nota":20
    };
    registrociv[59]= {
      "Tipo":"civil",
      "Codigo":0112,
      "Asignatura": "Seminario de Trabajo de Grado",
      "UC": 2,
      "Tax": "TA‐9",
      "Requisitos":[1238],
      "Nota":20
    };
    registrociv[60]= {
      "Tipo":"civil",
      "Codigo":0113,
      "Asignatura": "Electiva",
      "UC": 4,
      "Tax": "TA‐8",
      "Requisitos":[1238],
      "Nota":20
    };
    registrociv[61]= {
      "Tipo":"civil",
      "Codigo":0114,
      "Asignatura": "Electiva o Pasantía",
      "UC": 4,
      "Tax": "TA‐8",
      "Requisitos":[1238],
      "Nota":20
    };
    registrociv[62]= {
      "Tipo":"civil",
      "Codigo":0115,
      "Asignatura": "Ingeniería de Fundaciones",
      "UC": 4,
      "Tax": "TA‐4",
      "Requisitos":[0098,0099,0101],
      "Nota":20
    };
    registrociv[63]= {
      "Tipo":"civil",
      "Codigo":0116,
      "Asignatura": "Pavimentos",
      "UC": 5,
      "Tax": "TA‐4",
      "Requisitos":[0098,0099],
      "Nota":20
    };
    registrociv[64]= {
      "Tipo":"civil",
      "Codigo":0117,
      "Asignatura": "Proyecto Estructural II",
      "UC": 5,
      "Tax": "TA‐9",
      "Requisitos":[0109],
      "Nota":20
    };
    registrociv[65]= {
      "Tipo":"civil",
      "Codigo":0118,
      "Asignatura": "Instalaciones Sanitarias para Edificaciones",
      "UC": 4,
      "Tax": "TA‐9",
      "Requisitos":[0102],
      "Nota":20
    };
    registrociv[66]= {
      "Tipo":"civil",
      "Codigo":0119,
      "Asignatura": "Ingeniería Hidráulica II",
      "UC": 6,
      "Tax": "TA‐4",
      "Requisitos":[0110],
      "Nota":20
    };
    registrociv[67]= {
      "Tipo":"civil",
      "Codigo":0120,
      "Asignatura": "Trabajo de Grado",
      "UC": 21,
      "Tax": "TA‐7",
      "Requisitos":[0112],
      "Nota":20
    };

    print(registrociv[1]);
  }

  int verde = 0xFF018629;
  var boolmat = List.filled(68, false);

  //SEMESTRES
  bool sm1 = false,sm2 = false ,sm3 = false,sm4 = false,sm5 = false,sm6 = false,sm7 = false,sm8 = false,sm9 = false,sm10 = false;

  //SEMESTRE 1
  bool mate = false, trigo = false, intro = false, textos = false, liderazgo1 = false;

  //SEMESTRE 2


  //SEMESTRE 1
  void f_sm1(bool value){
    setState(() {
      sm1 = value;

      if(sm1) {
        //boolmat.fillRange(0, 4, true);
        if(!boolmat[0])
          f_boolmat0(true);
        if(!boolmat[1])
          f_boolmat1(true);
        if(!boolmat[2])
          f_boolmat2(true);
        if(!boolmat[3])
          f_boolmat3(true);
        if(!boolmat[4])
          f_boolmat4(true);
        if(!boolmat[5])
          f_boolmat5(true);
      }
      if(!sm1) {
        //boolmat.fillRange(0, 4, false);
        f_boolmat0(false);
        f_boolmat1(false);
        f_boolmat2(false);
        f_boolmat3(false);
        f_boolmat4(false);
        f_boolmat5(false);
      }
    });
    print(aprobadas.length);
  }

  void f_sm2(bool value){
    setState(() {
      sm2 = value;

      if(sm2) {
        //boolmat.fillRange(0, 4, true);
        if(!boolmat[6])
          f_boolmat6(true);
        if(!boolmat[7])
          f_boolmat7(true);
        if(!boolmat[8])
          f_boolmat8(true);
        if(!boolmat[9])
          f_boolmat9(true);
        if(!boolmat[10])
          f_boolmat10(true);
      }
      if(!sm2) {
        //boolmat.fillRange(0, 4, false);
        f_boolmat6(false);
        f_boolmat7(false);
        f_boolmat8(false);
        f_boolmat9(false);
        f_boolmat10(false);
      }
    });
    print(aprobadas.length);
  }

  void f_sm3(bool value){
    setState(() {
      sm3 = value;

      if(sm3) {
        //boolmat.fillRange(0, 4, true);
        if(!boolmat[11])
          f_boolmat11(true);
        if(!boolmat[12])
          f_boolmat12(true);
        if(!boolmat[13])
          f_boolmat13(true);
        if(!boolmat[14])
          f_boolmat14(true);
        if(!boolmat[15])
          f_boolmat15(true);
      }
      if(!sm3) {
        //boolmat.fillRange(0, 4, false);
        f_boolmat11(false);
        f_boolmat12(false);
        f_boolmat13(false);
        f_boolmat14(false);
        f_boolmat15(false);
      }
    });
    print(aprobadas.length);
  }

  void f_sm4(bool value){
    setState(() {
      sm4 = value;

      if(sm4) {
        //boolmat.fillRange(0, 4, true);
        if(!boolmat[16])
          f_boolmat16(true);
        if(!boolmat[17])
          f_boolmat17(true);
        if(!boolmat[18])
          f_boolmat18(true);
        if(!boolmat[19])
          f_boolmat19(true);
        if(!boolmat[20])
          f_boolmat20(true);
        if(!boolmat[21])
          f_boolmat21(true);
      }
      if(!sm4) {
        //boolmat.fillRange(0, 4, false);
        f_boolmat16(false);
        f_boolmat17(false);
        f_boolmat18(false);
        f_boolmat19(false);
        f_boolmat20(false);
        f_boolmat21(false);
      }
    });
    print(aprobadas.length);
  }

  void f_sm5(bool value){
    setState(() {
      sm5 = value;

      if(sm5) {
        //boolmat.fillRange(0, 4, true);
        if(!boolmat[22])
          f_boolmat22(true);
        if(!boolmat[23])
          f_boolmat23(true);
        if(!boolmat[24])
          f_boolmat24(true);
        if(!boolmat[25])
          f_boolmat25(true);
        if(!boolmat[26])
          f_boolmat26(true);
        if(!boolmat[27])
          f_boolmat27(true);
        if(!boolmat[28])
          f_boolmat28(true);
      }
      if(!sm5) {
        //boolmat.fillRange(0, 4, false);
        f_boolmat22(false);
        f_boolmat23(false);
        f_boolmat24(false);
        f_boolmat25(false);
        f_boolmat26(false);
        f_boolmat27(false);
        f_boolmat28(false);
      }
    });
    print(aprobadas.length);
  }

  void f_sm6(bool value){
    setState(() {
      sm6 = value;

      if(sm6) {
        //boolmat.fillRange(0, 4, true);
        if(!boolmat[29])
          f_boolmat29(true);
        if(!boolmat[30])
          f_boolmat30(true);
        if(!boolmat[31])
          f_boolmat31(true);
        if(!boolmat[32])
          f_boolmat32(true);
        if(!boolmat[33])
          f_boolmat33(true);
        if(!boolmat[34])
          f_boolmat34(true);
        if(!boolmat[35])
          f_boolmat35(true);
      }
      if(!sm6) {
        //boolmat.fillRange(0, 4, false);
        f_boolmat29(false);
        f_boolmat30(false);
        f_boolmat31(false);
        f_boolmat32(false);
        f_boolmat33(false);
        f_boolmat34(false);
        f_boolmat35(false);
      }
    });
    print(aprobadas.length);
  }

  void f_sm7(bool value){
    setState(() {
      sm7 = value;

      if(sm7) {
        //boolmat.fillRange(0, 4, true);
        if(!boolmat[36])
          f_boolmat36(true);
        if(!boolmat[37])
          f_boolmat37(true);
        if(!boolmat[38])
          f_boolmat38(true);
        if(!boolmat[39])
          f_boolmat39(true);
        if(!boolmat[40])
          f_boolmat40(true);
        if(!boolmat[41])
          f_boolmat41(true);
        if(!boolmat[42])
          f_boolmat42(true);
        if(!boolmat[43])
          f_boolmat43(true);
      }
      if(!sm7) {
        //boolmat.fillRange(0, 4, false);
        f_boolmat36(false);
        f_boolmat37(false);
        f_boolmat38(false);
        f_boolmat39(false);
        f_boolmat40(false);
        f_boolmat41(false);
        f_boolmat42(false);
        f_boolmat43(false);
      }
    });
    print(aprobadas.length);
  }

  void f_sm8(bool value){
    setState(() {
      sm8 = value;

      if(sm8) {
        //boolmat.fillRange(0, 4, true);
        if(!boolmat[44])
          f_boolmat44(true);
        if(!boolmat[45])
          f_boolmat45(true);
        if(!boolmat[46])
          f_boolmat46(true);
        if(!boolmat[47])
          f_boolmat47(true);
        if(!boolmat[48])
          f_boolmat48(true);
        if(!boolmat[49])
          f_boolmat49(true);
        if(!boolmat[50])
          f_boolmat50(true);
        if(!boolmat[51])
          f_boolmat51(true);
      }
      if(!sm8) {
        //boolmat.fillRange(0, 4, false);
        f_boolmat44(false);
        f_boolmat45(false);
        f_boolmat46(false);
        f_boolmat47(false);
        f_boolmat48(false);
        f_boolmat49(false);
        f_boolmat50(false);
        f_boolmat51(false);
      }
    });
    print(aprobadas.length);
  }

  void f_sm9(bool value){
    setState(() {
      sm9 = value;

      if(sm9) {
        //boolmat.fillRange(0, 4, true);
        if(!boolmat[52])
          f_boolmat52(true);
        if(!boolmat[53])
          f_boolmat53(true);
        if(!boolmat[54])
          f_boolmat54(true);
        if(!boolmat[55])
          f_boolmat55(true);
        if(!boolmat[56])
          f_boolmat56(true);
        if(!boolmat[57])
          f_boolmat57(true);
        if(!boolmat[58])
          f_boolmat58(true);
        if(!boolmat[59])
          f_boolmat59(true);
      }
      if(!sm9) {
        //boolmat.fillRange(0, 4, false);
        f_boolmat52(false);
        f_boolmat53(false);
        f_boolmat54(false);
        f_boolmat55(false);
        f_boolmat56(false);
        f_boolmat57(false);
        f_boolmat58(false);
        f_boolmat59(false);
      }
    });
    print(aprobadas.length);
  }

  void f_sm10(bool value){
    setState(() {
      sm10 = value;

      if(sm10) {
        //boolmat.fillRange(0, 4, true);
        if(!boolmat[60])
          f_boolmat60(true);
        if(!boolmat[61])
          f_boolmat61(true);
        if(!boolmat[62])
          f_boolmat62(true);
        if(!boolmat[63])
          f_boolmat63(true);
        if(!boolmat[64])
          f_boolmat64(true);
        if(!boolmat[65])
          f_boolmat65(true);
        if(!boolmat[66])
          f_boolmat66(true);
        if(!boolmat[67])
          f_boolmat67(true);
      }
      if(!sm10) {
        //boolmat.fillRange(0, 4, false);
        f_boolmat60(false);
        f_boolmat61(false);
        f_boolmat62(false);
        f_boolmat63(false);
        f_boolmat64(false);
        f_boolmat65(false);
        f_boolmat66(false);
        f_boolmat67(false);
      }
    });
    print(aprobadas.length);
  }

  void f_boolmat0(bool value){
    setState(() {
      boolmat[0] = value;
      if(boolmat[0]) {
        aprobadas.add(registrociv[0]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[0]);
        print(aprobadas);
      }
    });
  }
  void f_boolmat1(bool value){
    setState(() {
      boolmat[1] = value;
      if(boolmat[1]) {
        aprobadas.add(registrociv[1]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[1]);
        print(aprobadas);
      }
    });
  }
  void f_boolmat2(bool value){
    setState(() {
      boolmat[2] = value;
      if(boolmat[2]) {
        aprobadas.add(registrociv[2]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[2]);
        print(aprobadas);
      }
    });
  }
  void f_boolmat3(bool value){
    setState(() {
      boolmat[3] = value;
      if(boolmat[3]) {
        aprobadas.add(registrociv[3]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[3]);
        print(aprobadas);
      }
    });
  }
  void f_boolmat4(bool value){
    setState(() {
      boolmat[4] = value;
      if(boolmat[4]) {
        aprobadas.add(registrociv[4]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[4]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat5(bool value){
    setState(() {
      boolmat[5] = value;
      if(boolmat[5]) {
        aprobadas.add(registrociv[5]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[5]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat6(bool value){
    setState(() {
      boolmat[6] = value;
      if(boolmat[6]) {
        aprobadas.add(registrociv[6]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[6]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat7(bool value){
    setState(() {
      boolmat[7] = value;
      if(boolmat[7]) {
        aprobadas.add(registrociv[7]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[7]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat8(bool value){
    setState(() {
      boolmat[8] = value;
      if(boolmat[8]) {
        aprobadas.add(registrociv[8]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[8]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat9(bool value){
    setState(() {
      boolmat[9] = value;
      if(boolmat[9]) {
        aprobadas.add(registrociv[9]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[9]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat10(bool value){
    setState(() {
      boolmat[10] = value;
      if(boolmat[10]) {
        aprobadas.add(registrociv[10]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[10]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat11(bool value){
    setState(() {
      boolmat[11] = value;
      if(boolmat[11]) {
        aprobadas.add(registrociv[11]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[11]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat12(bool value){
    setState(() {
      boolmat[12] = value;
      if(boolmat[12]) {
        aprobadas.add(registrociv[12]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[12]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat13(bool value){
    setState(() {
      boolmat[13] = value;
      if(boolmat[13]) {
        aprobadas.add(registrociv[13]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[13]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat14(bool value){
    setState(() {
      boolmat[14] = value;
      if(boolmat[14]) {
        aprobadas.add(registrociv[14]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[14]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat15(bool value){
    setState(() {
      boolmat[15] = value;
      if(boolmat[15]) {
        aprobadas.add(registrociv[15]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[15]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat16(bool value){
    setState(() {
      boolmat[16] = value;
      if(boolmat[16]) {
        aprobadas.add(registrociv[16]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[16]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat17(bool value){
    setState(() {
      boolmat[17] = value;
      if(boolmat[17]) {
        aprobadas.add(registrociv[17]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[17]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat18(bool value){
    setState(() {
      boolmat[18] = value;
      if(boolmat[18]) {
        aprobadas.add(registrociv[18]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[18]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat19(bool value){
    setState(() {
      boolmat[19] = value;
      if(boolmat[19]) {
        aprobadas.add(registrociv[19]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[19]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat20(bool value){
    setState(() {
      boolmat[20] = value;
      if(boolmat[20]) {
        aprobadas.add(registrociv[20]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[20]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat21(bool value){
    setState(() {
      boolmat[21] = value;
      if(boolmat[21]) {
        aprobadas.add(registrociv[21]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[21]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat22(bool value){
    setState(() {
      boolmat[22] = value;
      if(boolmat[22]) {
        aprobadas.add(registrociv[22]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[22]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat23(bool value){
    setState(() {
      boolmat[23] = value;
      if(boolmat[23]) {
        aprobadas.add(registrociv[23]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[23]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat24(bool value){
    setState(() {
      boolmat[24] = value;
      if(boolmat[24]) {
        aprobadas.add(registrociv[24]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[24]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat25(bool value){
    setState(() {
      boolmat[25] = value;
      if(boolmat[25]) {
        aprobadas.add(registrociv[25]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[25]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat26(bool value){
    setState(() {
      boolmat[26] = value;
      if(boolmat[26]) {
        aprobadas.add(registrociv[27]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[27]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat27(bool value){
    setState(() {
      boolmat[27] = value;
      if(boolmat[27]) {
        aprobadas.add(registrociv[26]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[26]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat28(bool value){
    setState(() {
      boolmat[28] = value;
      if(boolmat[28]) {
        aprobadas.add(registrociv[28]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[28]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat29(bool value){
    setState(() {
      boolmat[29] = value;
      if(boolmat[29]) {
        aprobadas.add(registrociv[29]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[29]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat30(bool value){
    setState(() {
      boolmat[30] = value;
      if(boolmat[30]) {
        aprobadas.add(registrociv[30]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[30]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat31(bool value){
    setState(() {
      boolmat[31] = value;
      if(boolmat[31]) {
        aprobadas.add(registrociv[31]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[31]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat32(bool value){
    setState(() {
      boolmat[32] = value;
      if(boolmat[32]) {
        aprobadas.add(registrociv[32]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[32]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat33(bool value){
    setState(() {
      boolmat[33] = value;
      if(boolmat[33]) {
        aprobadas.add(registrociv[33]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[33]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat34(bool value){
    setState(() {
      boolmat[34] = value;
      if(boolmat[34]) {
        aprobadas.add(registrociv[34]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[34]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat35(bool value){
    setState(() {
      boolmat[35] = value;
      if(boolmat[35]) {
        aprobadas.add(registrociv[35]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[35]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat36(bool value){
    setState(() {
      boolmat[36] = value;
      if(boolmat[36]) {
        aprobadas.add(registrociv[36]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[36]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat37(bool value){
    setState(() {
      boolmat[37] = value;
      if(boolmat[37]) {
        aprobadas.add(registrociv[37]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[37]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat38(bool value){
    setState(() {
      boolmat[38] = value;
      if(boolmat[38]) {
        aprobadas.add(registrociv[38]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[38]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat39(bool value){
    setState(() {
      boolmat[39] = value;
      if(boolmat[39]) {
        aprobadas.add(registrociv[39]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[39]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat40(bool value){
    setState(() {
      boolmat[40] = value;
      if(boolmat[40]) {
        aprobadas.add(registrociv[40]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[40]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat41(bool value){
    setState(() {
      boolmat[41] = value;
      if(boolmat[41]) {
        aprobadas.add(registrociv[41]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[41]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat42(bool value){
    setState(() {
      boolmat[42] = value;
      if(boolmat[42]) {
        aprobadas.add(registrociv[42]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[42]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat43(bool value){
    setState(() {
      boolmat[43] = value;
      if(boolmat[43]) {
        aprobadas.add(registrociv[43]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[43]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat44(bool value){
    setState(() {
      boolmat[44] = value;
      if(boolmat[44]) {
        aprobadas.add(registrociv[44]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[44]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat45(bool value){
    setState(() {
      boolmat[45] = value;
      if(boolmat[45]) {
        aprobadas.add(registrociv[45]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[45]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat46(bool value){
    setState(() {
      boolmat[46] = value;
      if(boolmat[46]) {
        aprobadas.add(registrociv[46]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[46]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat47(bool value){
    setState(() {
      boolmat[47] = value;
      if(boolmat[47]) {
        aprobadas.add(registrociv[47]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[47]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat48(bool value){
    setState(() {
      boolmat[48] = value;
      if(boolmat[48]) {
        aprobadas.add(registrociv[48]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[48]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat49(bool value){
    setState(() {
      boolmat[49] = value;
      if(boolmat[49]) {
        aprobadas.add(registrociv[49]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[49]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat50(bool value){
    setState(() {
      boolmat[50] = value;
      if(boolmat[50]) {
        aprobadas.add(registrociv[50]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[50]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat51(bool value){
    setState(() {
      boolmat[51] = value;
      if(boolmat[51]) {
        aprobadas.add(registrociv[51]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[51]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat52(bool value){
    setState(() {
      boolmat[52] = value;
      if(boolmat[52]) {
        aprobadas.add(registrociv[52]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[52]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat53(bool value){
    setState(() {
      boolmat[53] = value;
      if(boolmat[53]) {
        aprobadas.add(registrociv[53]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[53]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat54(bool value){
    setState(() {
      boolmat[54] = value;
      if(boolmat[54]) {
        aprobadas.add(registrociv[54]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[54]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat55(bool value){
    setState(() {
      boolmat[55] = value;
      if(boolmat[55]) {
        aprobadas.add(registrociv[55]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[55]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat56(bool value){
    setState(() {
      boolmat[56] = value;
      if(boolmat[56]) {
        aprobadas.add(registrociv[56]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[56]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat57(bool value){
    setState(() {
      boolmat[57] = value;
      if(boolmat[57]) {
        aprobadas.add(registrociv[57]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[57]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat58(bool value){
    setState(() {
      boolmat[58] = value;
      if(boolmat[58]) {
        aprobadas.add(registrociv[58]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[58]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat59(bool value){
    setState(() {
      boolmat[59] = value;
      if(boolmat[59]) {
        aprobadas.add(registrociv[59]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[59]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat60(bool value){
    setState(() {
      boolmat[60] = value;
      if(boolmat[60]) {
        aprobadas.add(registrociv[60]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[60]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat61(bool value){
    setState(() {
      boolmat[61] = value;
      if(boolmat[61]) {
        aprobadas.add(registrociv[61]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[61]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat62(bool value){
    setState(() {
      boolmat[62] = value;
      if(boolmat[62]) {
        aprobadas.add(registrociv[62]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[62]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat63(bool value){
    setState(() {
      boolmat[63] = value;
      if(boolmat[63]) {
        aprobadas.add(registrociv[63]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[63]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat64(bool value){
    setState(() {
      boolmat[64] = value;
      if(boolmat[64]) {
        aprobadas.add(registrociv[64]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[64]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat65(bool value){
    setState(() {
      boolmat[65] = value;
      if(boolmat[65]) {
        aprobadas.add(registrociv[65]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[65]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat66(bool value){
    setState(() {
      boolmat[66] = value;
      if(boolmat[66]) {
        aprobadas.add(registrociv[66]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[66]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat67(bool value){
    setState(() {
      boolmat[67] = value;
      if(boolmat[67]) {
        aprobadas.add(registrociv[67]);
        print(aprobadas);
      }else{
        aprobadas.remove(registrociv[67]);
        print(aprobadas);
      }
    });
  }




  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(verde),
        title: Text("Materias"),
          actions: <Widget>[
            FlatButton(
                onPressed: (){
                  editName(context);
                  //avigator.push(context,
                      //new MaterialPageRoute(builder: (context) =>
                      //new Resultados(aprobadas: aprobadas,listacarrera: registrociv, boolcarrera: true)));
                },
                child:
                Row(
                    children: <Widget>[
                      Text('Siguiente',style: TextStyle(color: Colors.white,fontSize: 18)),
                      Icon(Icons.navigate_next,color: Colors.white,)
                    ]
                ))]
      ),
      body: new Container(
        padding: new EdgeInsets.all(10.0),
        child: Center(
          child: ListView(
            children: <Widget>[


              CheckboxListTile(
                  title: new Text("Semestre 1", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  activeColor: Colors.blue,
                  secondary: const Icon(Icons.school),
                  value: sm1,
                  onChanged: (bool value){f_sm1(value);}
                  ),
              CheckboxListTile(
                  title: new Text("Geometría Plana y Trigonometría"),
                  activeColor: Colors.green,
                  value: boolmat[0] ,
                  onChanged: (bool value){f_boolmat0(value);}
              ),
              CheckboxListTile(
                  title: new Text("Matemática Básica"),
                  activeColor: Colors.green,
                  value: boolmat[1] ,
                  onChanged: (bool value){f_boolmat1(value);}
              ),
              CheckboxListTile(
                  title: new Text("Dibujo"),
                  activeColor: Colors.green,
                  value: boolmat[2] ,
                  onChanged: (bool value){f_boolmat2(value);}
              ),
              CheckboxListTile(
                  title: new Text("Introducción a la Ingeniería Civil"),
                  activeColor: Colors.green,
                  value: boolmat[3] ,
                  onChanged: (bool value){f_boolmat3(value);}
              ),
              CheckboxListTile(
                  title: new Text("Comprensión y Producción de Textos"),
                  activeColor: Colors.green,
                  value: boolmat[4] ,
                  onChanged: (bool value){f_boolmat4(value);}
              ),
              CheckboxListTile(
                  title: new Text("Identidad, Liderazgo y Compromiso I"),
                  activeColor: Colors.green,
                  value: boolmat[5] ,
                  onChanged: (bool value){f_boolmat5(value);}
              ),





              CheckboxListTile(
                  title: new Text("Semestre 2", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  activeColor: Colors.blue,
                  secondary: const Icon(Icons.school),
                  value: sm2,
                  onChanged: (bool value){f_sm2(value);}
              ),
              CheckboxListTile(
                  title: new Text("Cálculo I"),
                  activeColor: Colors.green,
                  value: boolmat[6] ,
                  onChanged: (bool value){f_boolmat6(value);}
              ),
              CheckboxListTile(
                  title: new Text("Geometría Descriptiva I"),
                  activeColor: Colors.green,
                  value: boolmat[7] ,
                  onChanged: (bool value){f_boolmat7(value);}
              ),
              CheckboxListTile(
                  title: new Text("Física General"),
                  activeColor: Colors.green,
                  value: boolmat[8] ,
                  onChanged: (bool value){f_boolmat8(value);}
              ),
              CheckboxListTile(
                  title: new Text("Química I"),
                  activeColor: Colors.green,
                  value: boolmat[9] ,
                  onChanged: (bool value){f_boolmat9(value);}
              ),
              CheckboxListTile(
                  title: new Text("Identidad, Liderazgo y Compromiso II"),
                  activeColor: Colors.green,
                  value: boolmat[10] ,
                  onChanged: (bool value){f_boolmat10(value);}
              ),





              CheckboxListTile(
                  title: new Text("Semestre 3", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  activeColor: Colors.blue,
                  secondary: const Icon(Icons.school),
                  value: sm3,
                  onChanged: (bool value){f_sm3(value);}
              ),
              CheckboxListTile(
                  title: new Text("Cálculo II"),
                  activeColor: Colors.green,
                  value: boolmat[11] ,
                  onChanged: (bool value){f_boolmat11(value);}
              ),
              CheckboxListTile(
                  title: new Text("Geometría Descriptiva II"),
                  activeColor: Colors.green,
                  value: boolmat[12] ,
                  onChanged: (bool value){f_boolmat12(value);}
              ),
              CheckboxListTile(
                  title: new Text("Laboratorio de Física General"),
                  activeColor: Colors.green,
                  value: boolmat[13] ,
                  onChanged: (bool value){f_boolmat13(value);}
              ),
              CheckboxListTile(
                  title: new Text("Estática"),
                  activeColor: Colors.green,
                  value: boolmat[14] ,
                  onChanged: (bool value){f_boolmat14(value);}
              ),
              CheckboxListTile(
                  title: new Text("Química II"),
                  activeColor: Colors.green,
                  value: boolmat[15] ,
                  onChanged: (bool value){f_boolmat15(value);}
              ),




              CheckboxListTile(
                title: new Text("Semestre 4", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                activeColor: Colors.blue,
                secondary: const Icon(Icons.school),
                value: sm4,
                onChanged: (bool value){f_sm4(value);}
              ),
              CheckboxListTile(
                  title: new Text("Cálculo III"),
                  activeColor: Colors.green,
                  value: boolmat[16] ,
                  onChanged: (bool value){f_boolmat16(value);}
              ),
              CheckboxListTile(
                  title: new Text("Fundamentos de Programación"),
                  activeColor: Colors.green,
                  value: boolmat[17] ,
                  onChanged: (bool value){f_boolmat17(value);}
              ),
              CheckboxListTile(
                  title: new Text("Dinámica"),
                  activeColor: Colors.green,
                  value: boolmat[18] ,
                  onChanged: (bool value){f_boolmat18(value);}
              ),
              CheckboxListTile(
                  title: new Text("Electricidad y Calorimetría"),
                  activeColor: Colors.green,
                  value: boolmat[19] ,
                  onChanged: (bool value){f_boolmat19(value);}
              ),
              CheckboxListTile(
                  title: new Text("Laboratorio de Química"),
                  activeColor: Colors.green,
                  value: boolmat[20] ,
                  onChanged: (bool value){f_boolmat20(value);}
              ),
              CheckboxListTile(
                  title: new Text("Ecología, Ambiente y Sustentabilidad"),
                  activeColor: Colors.green,
                  value: boolmat[21] ,
                  onChanged: (bool value){f_boolmat21(value);}
              ),



              CheckboxListTile(
                title: new Text("Semestre 5", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                activeColor: Colors.blue,
                secondary: const Icon(Icons.school),
                value: sm5,
                onChanged: (bool value){f_sm5(value);}
              ),
              CheckboxListTile(
                  title: new Text("Cálculo IV"),
                  activeColor: Colors.green,
                  value: boolmat[22] ,
                  onChanged: (bool value){f_boolmat22(value);}
              ),
              CheckboxListTile(
                  title: new Text("Topografía"),
                  activeColor: Colors.green,
                  value: boolmat[23] ,
                  onChanged: (bool value){f_boolmat23(value);}
              ),
              CheckboxListTile(
                  title: new Text("Dibujo Asistido por Computadora"),
                  activeColor: Colors.green,
                  value: boolmat[24] ,
                  onChanged: (bool value){f_boolmat24(value);}
              ),
              CheckboxListTile(
                  title: new Text("Instalaciones Eléctricas"),
                  activeColor: Colors.green,
                  value: boolmat[25] ,
                  onChanged: (bool value){f_boolmat25(value);}
              ),
              CheckboxListTile(
                  title: new Text("Estadística y Probabilidades"),
                  activeColor: Colors.green,
                  value: boolmat[26] ,
                  onChanged: (bool value){f_boolmat26(value);}
              ),
              CheckboxListTile(
                  title: new Text("Resistencia de Materiales I"),
                  activeColor: Colors.green,
                  value: boolmat[27] ,
                  onChanged: (bool value){f_boolmat27(value);}
              ),
              CheckboxListTile(
                  title: new Text("Contabilidad General"),
                  activeColor: Colors.green,
                  value: boolmat[28] ,
                  onChanged: (bool value){f_boolmat28(value);}
              ),




              CheckboxListTile(
                title: new Text("Semestre 6", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                activeColor: Colors.blue,
                secondary: const Icon(Icons.school),
                value: sm6,
                onChanged: (bool value){f_sm6(value);}
              ),
              CheckboxListTile(
                  title: new Text("Cálculo Numérico"),
                  activeColor: Colors.green,
                  value: boolmat[29] ,
                  onChanged: (bool value){f_boolmat29(value);}
              ),
              CheckboxListTile(
                  title: new Text("Resistencia de Materiales II"),
                  activeColor: Colors.green,
                  value: boolmat[30] ,
                  onChanged: (bool value){f_boolmat30(value);}
              ),
              CheckboxListTile(
                  title: new Text("Materiales de Construcción"),
                  activeColor: Colors.green,
                  value: boolmat[31] ,
                  onChanged: (bool value){f_boolmat31(value);}
              ),
              CheckboxListTile(
                  title: new Text("Laboratorio de Materiales de Construcción"),
                  activeColor: Colors.green,
                  value: boolmat[32] ,
                  onChanged: (bool value){f_boolmat32(value);}
              ),
              CheckboxListTile(
                  title: new Text("Ingeniería Económica"),
                  activeColor: Colors.green,
                  value: boolmat[33] ,
                  onChanged: (bool value){f_boolmat33(value);}
              ),
              CheckboxListTile(
                  title: new Text("Mecánica de los Fluidos I"),
                  activeColor: Colors.green,
                  value: boolmat[34] ,
                  onChanged: (bool value){f_boolmat34(value);}
              ),
              CheckboxListTile(
                  title: new Text("Introducción a la Ingeniería Ambiental"),
                  activeColor: Colors.green,
                  value: boolmat[35] ,
                  onChanged: (bool value){f_boolmat35(value);}
              ),



              CheckboxListTile(
                title: new Text("Semestre 7", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                activeColor: Colors.blue,
                secondary: const Icon(Icons.school),
                value: sm7,
                onChanged: (bool value){f_sm7(value);}
              ),
              CheckboxListTile(
                  title: new Text("Mecánica de Suelos I"),
                  activeColor: Colors.green,
                  value: boolmat[36] ,
                  onChanged: (bool value){f_boolmat36(value);}
              ),
              CheckboxListTile(
                  title: new Text("Laboratorio de Mecánica de Suelos I"),
                  activeColor: Colors.green,
                  value: boolmat[37] ,
                  onChanged: (bool value){f_boolmat37(value);}
              ),
              CheckboxListTile(
                  title: new Text("Estructuras I"),
                  activeColor: Colors.green,
                  value: boolmat[38] ,
                  onChanged: (bool value){f_boolmat38(value);}
              ),
              CheckboxListTile(
                  title: new Text("Concreto Reforzado I"),
                  activeColor: Colors.green,
                  value: boolmat[39] ,
                  onChanged: (bool value){f_boolmat39(value);}
              ),
              CheckboxListTile(
                  title: new Text("Laboratorio de Mecánica de los Fluidos"),
                  activeColor: Colors.green,
                  value: boolmat[40] ,
                  onChanged: (bool value){f_boolmat40(value);}
              ),
              CheckboxListTile(
                  title: new Text("Mecánica de los Fluidos II"),
                  activeColor: Colors.green,
                  value: boolmat[41] ,
                  onChanged: (bool value){f_boolmat41(value);}
              ),
              CheckboxListTile(
                  title: new Text("Hidrología Básica"),
                  activeColor: Colors.green,
                  value: boolmat[42] ,
                  onChanged: (bool value){f_boolmat42(value);}
              ),
              CheckboxListTile(
                  title: new Text("Ingeniería Sanitaria I"),
                  activeColor: Colors.green,
                  value: boolmat[43] ,
                  onChanged: (bool value){f_boolmat43(value);}
              ),



              CheckboxListTile(
                  title: new Text("Semestre 8", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  activeColor: Colors.blue,
                  secondary: const Icon(Icons.school),
                  value: sm8,
                  onChanged: (bool value){f_sm8(value);}
              ),
              CheckboxListTile(
                  title: new Text("Vías de Comunicación I"),
                  activeColor: Colors.green,
                  value: boolmat[44] ,
                  onChanged: (bool value){f_boolmat44(value);}
              ),
              CheckboxListTile(
                  title: new Text("Mecánica de Suelos II"),
                  activeColor: Colors.green,
                  value: boolmat[45] ,
                  onChanged: (bool value){f_boolmat45(value);}
              ),
              CheckboxListTile(
                  title: new Text("Laboratorio de Mecánica de Suelos II"),
                  activeColor: Colors.green,
                  value: boolmat[46] ,
                  onChanged: (bool value){f_boolmat46(value);}
              ),
              CheckboxListTile(
                  title: new Text("Estructuras II"),
                  activeColor: Colors.green,
                  value: boolmat[47] ,
                  onChanged: (bool value){f_boolmat47(value);}
              ),
              CheckboxListTile(
                  title: new Text("Concreto Reforzado II"),
                  activeColor: Colors.green,
                  value: boolmat[48] ,
                  onChanged: (bool value){f_boolmat48(value);}
              ),
              CheckboxListTile(
                  title: new Text("Hidráulica de Conducciones"),
                  activeColor: Colors.green,
                  value: boolmat[49] ,
                  onChanged: (bool value){f_boolmat49(value);}
              ),
              CheckboxListTile(
                  title: new Text("Laboratorio de Ingeniería Sanitaria"),
                  activeColor: Colors.green,
                  value: boolmat[50] ,
                  onChanged: (bool value){f_boolmat50(value);}
              ),
              CheckboxListTile(
                  title: new Text("Ingeniería Sanitaria II"),
                  activeColor: Colors.green,
                  value: boolmat[51] ,
                  onChanged: (bool value){f_boolmat51(value);}
              ),



              CheckboxListTile(
                  title: new Text("Semestre 9", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  activeColor: Colors.blue,
                  secondary: const Icon(Icons.school),
                  value: sm9,
                  onChanged: (bool value){f_sm9(value);}
              ),
              CheckboxListTile(
                  title: new Text("Etica Profesional"),
                  activeColor: Colors.green,
                  value: boolmat[52] ,
                  onChanged: (bool value){f_boolmat52(value);}
              ),
              CheckboxListTile(
                  title: new Text("Vías de Comunicación II"),
                  activeColor: Colors.green,
                  value: boolmat[53] ,
                  onChanged: (bool value){f_boolmat53(value);}
              ),
              CheckboxListTile(
                  title: new Text("Geología Aplicada"),
                  activeColor: Colors.green,
                  value: boolmat[54] ,
                  onChanged: (bool value){f_boolmat54(value);}
              ),
              CheckboxListTile(
                  title: new Text("Estructuras de Acero"),
                  activeColor: Colors.green,
                  value: boolmat[55] ,
                  onChanged: (bool value){f_boolmat55(value);}
              ),
              CheckboxListTile(
                  title: new Text("Proyecto Estructural I"),
                  activeColor: Colors.green,
                  value: boolmat[56] ,
                  onChanged: (bool value){f_boolmat56(value);}
              ),
              CheckboxListTile(
                  title: new Text("Ingeniería Hidráulica I"),
                  activeColor: Colors.green,
                  value: boolmat[57] ,
                  onChanged: (bool value){f_boolmat57(value);}
              ),
              CheckboxListTile(
                  title: new Text("Infraestructuras Hidráulicas en Urbanismos"),
                  activeColor: Colors.green,
                  value: boolmat[58] ,
                  onChanged: (bool value){f_boolmat58(value);}
              ),
              CheckboxListTile(
                  title: new Text("Seminario de Trabajo de Grado"),
                  activeColor: Colors.green,
                  value: boolmat[59] ,
                  onChanged: (bool value){f_boolmat59(value);}
              ),


              CheckboxListTile(
                  title: new Text("Semestre 10", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  activeColor: Colors.blue,
                  secondary: const Icon(Icons.school),
                  value: sm10,
                  onChanged: (bool value){f_sm10(value);}
              ),
              CheckboxListTile(
                  title: new Text("Electiva"),
                  activeColor: Colors.green,
                  value: boolmat[60] ,
                  onChanged: (bool value){f_boolmat60(value);}
              ),
              CheckboxListTile(
                  title: new Text("Electiva o Pasantía"),
                  activeColor: Colors.green,
                  value: boolmat[61] ,
                  onChanged: (bool value){f_boolmat61(value);}
              ),
              CheckboxListTile(
                  title: new Text("Ingeniería de Fundaciones"),
                  activeColor: Colors.green,
                  value: boolmat[62] ,
                  onChanged: (bool value){f_boolmat62(value);}
              ),
              CheckboxListTile(
                  title: new Text("Pavimentos"),
                  activeColor: Colors.green,
                  value: boolmat[63] ,
                  onChanged: (bool value){f_boolmat63(value);}
              ),
              CheckboxListTile(
                  title: new Text("Proyecto Estructural II"),
                  activeColor: Colors.green,
                  value: boolmat[64] ,
                  onChanged: (bool value){f_boolmat64(value);}
              ),
              CheckboxListTile(
                  title: new Text("Instalaciones Sanitarias para Edificaciones"),
                  activeColor: Colors.green,
                  value: boolmat[65] ,
                  onChanged: (bool value){f_boolmat65(value);}
              ),
              CheckboxListTile(
                  title: new Text("Ingeniería Hidráulica II"),
                  activeColor: Colors.green,
                  value: boolmat[66] ,
                  onChanged: (bool value){f_boolmat66(value);}
              ),
              CheckboxListTile(
                  title: new Text("Trabajo de Grado"),
                  activeColor: Colors.green,
                  value: boolmat[67] ,
                  onChanged: (bool value){f_boolmat67(value);}
              ),

            ],
          ),
        ),
      ),
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
                  height: 170,
                  width: 120,
                  child:
                  Column(
                    children:<Widget>[
                      Text('- Has aprobado ('+aprobadas.length.toString()+'/53) materias y '+ uc().toString() +' unidades de crédito.', textAlign: TextAlign.center,),
                      //SizedBox(height: 5),
                      //SizedBox(height: 30),
                      FlatButton(
                          color: Color(verde),
                          child: Text('Continuar',style: TextStyle(color: Colors.white),),
                          textColor: Color(verde),
                          onPressed: () {
                            Navigator.push(context,
                                new MaterialPageRoute(builder: (context) =>
                                new Resultados(aprobadas: aprobadas,listacarrera: registrociv, boolcarrera: true,)));
                          }),
                      FlatButton(
                        child: Text('Regresar'),
                        color: Colors.grey,
                        textColor: Colors.white,
                        onPressed: () {
                          Navigator.pop(context);
                        },),

                    ],
                  )));
        });
  }


  int uc(){
    int aux=0;

    for (int i = 0; i < aprobadas.length; i++) {
      aux=aux+aprobadas[i]['UC'];
    }
    return aux;
  }

}