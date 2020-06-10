import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:proyecto_student_tool/informacion.dart';
import 'package:proyecto_student_tool/resultados.dart';
import 'package:proyecto_student_tool/uc.dart';

class Manual extends StatefulWidget{
  @override
  ManualState createState() => new ManualState();
}

class ManualState extends State<Manual>{

  var registroinf = new List(53);  /* de 0 a 52 */
  var aprobadas = new List();

  void initState(){
    super.initState();
    aprobadas.clear();

    registroinf[0]= {
      "Tipo":"informatica",
      "Codigo": 0001,
      "Asignatura": "Geometría Plana y Trigonometría",
      "UC": 5,
      "Tax": "TA‐6",
      "Requisitos":[0000],
      "Nota":20,
      "Pre":2,
      "Semestre":1
    };
    registroinf[1]= {
      "Tipo":"informatica",
      "Codigo": 0002,
      "Asignatura": "Matemática Básica",
      "UC": 7,
      "Tax": "TA‐6",
      "Requisitos":[0000],
      "Nota":20,
      "Pre":3,
      "Semestre":1
    };
    registroinf[2]= {
      "Tipo":"informatica",
      "Codigo": 0003,
      "Asignatura": "Introducción a la Informática",
      "UC": 5,
      "Tax": "TA‐4",
      "Requisitos":[0000],
      "Nota":20,
      "Pre": 1,
      "Semestre":1

    };
    registroinf[3]= {
      "Tipo":"informatica",
      "Codigo": 0004,
      "Asignatura": "Comprensión y Producción de Textos",
      "UC": 5,
      "Tax": "TA‐6",
      "Requisitos":[0000],
      "Nota":20,
      "Pre":0,
      "Semestre":1
    };
    registroinf[4]= {
      "Tipo":"informatica",
      "Codigo": 0005,
      "Asignatura": "Identidad, Liderazgo y Compromiso I",
      "UC": 3,
      "Tax": "TA‐1",
      "Requisitos":[0000],
      "Nota":20,
      "Pre": 1,
      "Semestre":1
    };
    registroinf[5]= {
      "Tipo":"informatica",
      "Codigo": 0006,
      "Asignatura": "Cálculo I",
      "UC": 9,
      "Tax": "TA‐4",
      "Requisitos":[0001,0002],
      "Nota":20,
      "Pre":2,
      "Semestre":2
    };
    registroinf[6]= {
      "Tipo":"informatica",
      "Codigo": 0007,
      "Asignatura": "Lógica Computacional",
      "UC": 5,
      "Tax": "TA‐4",
      "Requisitos":[0002,0003],
      "Nota":20,
      "Pre":1,
      "Semestre":2
    };
    registroinf[7]= {
      "Tipo":"informatica",
      "Codigo": 0008,
      "Asignatura": "Algoritmos y Programación I",
      "UC": 8,
      "Tax": "TA‐9",
      "Requisitos":[0002,0003],
      "Nota":20,
      "Pre":1,
      "Semestre":2
    };
    registroinf[8]= {
      "Tipo":"informatica",
      "Codigo": 0009,
      "Asignatura": "Identidad, Liderazgo y Compromiso II",
      "UC": 3,
      "Tax": "TA‐1",
      "Requisitos":[0005],
      "Nota":20,
      "Pre":0,
      "Semestre":2
    };
    registroinf[9]= {
      "Tipo":"informatica",
      "Codigo": 0010,
      "Asignatura": "Cálculo II",
      "UC": 8,
      "Tax": "TA‐4",
      "Requisitos":[0006],
      "Nota":20,
      "Pre":2,
      "Semestre":3
    };
    registroinf[10]= {
      "Tipo":"informatica",
      "Codigo": 0011,
      "Asignatura": "Física General",
      "UC": 6,
      "Tax": "TA‐4",
      "Requisitos":[0001,0002],
      "Nota":20,
      "Pre":1,
      "Semestre":3
    };
    registroinf[11]= {
      "Tipo":"informatica",
      "Codigo": 0012,
      "Asignatura": "Matemáticas Discretas",
      "UC": 5,
      "Tax": "TA‐4",
      "Requisitos":[0006,0007],
      "Nota":20,
      "Pre":2,
      "Semestre":3
    };
    registroinf[12]= {
      "Tipo":"informatica",
      "Codigo": 0013,
      "Asignatura": "Algoritmos y Programación II",
      "UC": 8,
      "Tax": "TA‐9",
      "Requisitos":[0008],
      "Nota":20,
      "Pre":2,
      "Semestre":3
    };
    registroinf[13]= {
      "Tipo":"informatica",
      "Codigo": 0014,
      "Asignatura": "Cálculo III",
      "UC": 7,
      "Tax": "TA‐4",
      "Requisitos":[0010],
      "Nota":20,
      "Pre":2,
      "Semestre":4
    };
    registroinf[14]= {
      "Tipo":"informatica",
      "Codigo": 0015,
      "Asignatura": "Laboratorio de Física Eléctrica",
      "UC": 3,
      "Tax": "TA‐9",
      "Requisitos":[0006,0011],
      "Nota":20,
      "Pre":1,
      "Semestre":4
    };
    registroinf[15]= {
      "Tipo":"informatica",
      "Codigo": 0016,
      "Asignatura": "Física Eléctrica",
      "UC": 6,
      "Tax": "TA‐4",
      "Requisitos":[0006,0011],
      "Nota":20,
      "Pre":1,
      "Semestre":4
    };
    registroinf[16]= {
      "Tipo":"informatica",
      "Codigo": 0017,
      "Asignatura": "Estructura del Computador",
      "UC": 5,
      "Tax": "TA‐9",
      "Requisitos":[0013],
      "Nota":20,
      "Pre":1,
      "Semestre":4
    };
    registroinf[17]= {
      "Tipo":"informatica",
      "Codigo": 0018,
      "Asignatura": "Algoritmos y Programación III",
      "UC": 8,
      "Tax": "TA‐9",
      "Requisitos":[0012,0013],
      "Nota":20,
      "Pre":1,
      "Semestre":4
    };
    registroinf[18]= {
      "Tipo":"informatica",
      "Codigo": 0019,
      "Asignatura": "Ecología, Ambiente y Sustentabilidad",
      "UC": 3,
      "Tax": "TA‐1",
      "Requisitos":[1077],
      "Nota":20,
      "Pre":0,
      "Semestre":4
    };
    registroinf[19]= {
      "Tipo":"informatica",
      "Codigo": 0020,
      "Asignatura": "Cálculo IV",
      "UC": 7,
      "Tax": "TA‐4",
      "Requisitos":[0014],
      "Nota":20,
      "Pre":2,
      "Semestre":5
    };
    registroinf[20]= {
      "Tipo":"informatica",
      "Codigo": 0021,
      "Asignatura": "Circuitos Electrónicos",
      "UC": 8,
      "Tax": "TA‐9",
      "Requisitos":[0012,0015,0016],
      "Nota":20,
      "Pre":1,
      "Semestre":5
    };
    registroinf[21]= {
      "Tipo":"informatica",
      "Codigo": 0022,
      "Asignatura": "Sistemas de Operación",
      "UC": 5,
      "Tax": "TA‐9",
      "Requisitos":[0017],
      "Nota":20,
      "Pre":1,
      "Semestre":5
    };
    registroinf[22]= {
      "Tipo":"informatica",
      "Codigo": 0023,
      "Asignatura": "Ingeniería del Software",
      "UC": 5,
      "Tax": "TA‐9",
      "Requisitos":[0018],
      "Nota":20,
      "Pre":1,
      "Semestre":5
    };
    registroinf[23]= {
      "Tipo":"informatica",
      "Codigo": 0024,
      "Asignatura": "Interacción Humano Computador",
      "UC": 5,
      "Tax": "TA‐9",
      "Requisitos":[0018],
      "Nota":20,
      "Pre":1,
      "Semestre":5
    };
    registroinf[24]= {
      "Tipo":"informatica",
      "Codigo": 0025,
      "Asignatura": "Cálculo Numérico",
      "UC": 5,
      "Tax": "TA‐9",
      "Requisitos":[0020],
      "Nota":20,
      "Pre":1,
      "Semestre":6
    };
    registroinf[25]= {
      "Tipo":"informatica",
      "Codigo": 0026,
      "Asignatura": "Estadística y Probabilidades",
      "UC": 5,
      "Tax": "TA‐4",
      "Requisitos":[0014],
      "Nota":20,
      "Pre":1,
      "Semestre":6
    };
    registroinf[26]= {
      "Tipo":"informatica",
      "Codigo": 0027,
      "Asignatura": "Arquitectura del Computador",
      "UC": 8,
      "Tax": "TA‐9",
      "Requisitos":[0021],
      "Nota":20,
      "Pre":0,
      "Semestre":6
    };
    registroinf[27]= {
      "Tipo":"informatica",
      "Codigo": 0028,
      "Asignatura": "Redes de Computadores I",
      "UC": 8,
      "Tax": "TA‐9",
      "Requisitos":[0021,0022],
      "Nota":20,
      "Pre":2,
      "Semestre":6
    };
    registroinf[28]= {
      "Tipo":"informatica",
      "Codigo": 0029,
      "Asignatura": "Sistemas de Bases de Datos I",
      "UC": 5,
      "Tax": "TA‐9",
      "Requisitos":[0023],
      "Nota":20,
      "Pre":2,
      "Semestre":6
    };
    registroinf[31]= {
      "Tipo":"informatica",
      "Codigo": 0030,
      "Asignatura": "Programación Lineal",
      "UC": 5,
      "Tax": "TA‐4",
      "Requisitos":[0020],
      "Nota":20,
      "Pre":0,
      "Semestre":7
    };
    registroinf[32]= {
      "Tipo":"informatica",
      "Codigo": 0031,
      "Asignatura": "Redes de Computadores II",
      "UC": 8,
      "Tax": "TA‐9",
      "Requisitos":[0028],
      "Nota":20,
      "Pre":2,
      "Semestre":7
    };
    registroinf[34]= {
      "Tipo":"informatica",
      "Codigo": 0032,
      "Asignatura": "Metodologia del Software",
      "UC": 6,
      "Tax": "TA‐9",
      "Requisitos":[0024,0029],
      "Nota":20,
      "Pre":2,
      "Semestre":7
    };
    registroinf[33]= {
      "Tipo":"informatica",
      "Codigo": 0033,
      "Asignatura": "Sistemas de Bases de Datos II",
      "UC": 5,
      "Tax": "TA‐9",
      "Requisitos":[0029],
      "Nota":20,
      "Pre":1,
      "Semestre":7
    };
    registroinf[29]= {
      "Tipo":"informatica",
      "Codigo": 0034,
      "Asignatura": "Contabilidad General",
      "UC": 4,
      "Tax": "TA‐6",
      "Requisitos":[1113],
      "Nota":20,
      "Pre":1,
      "Semestre":7
    };
    registroinf[30]= {
      "Tipo":"informatica",
      "Codigo": 0035,
      "Asignatura": "Inglés I",
      "UC": 5,
      "Tax": "TA‐6",
      "Requisitos":[0000],
      "Nota":20,
      "Pre":1,
      "Semestre":7
    };
    registroinf[35]= {
      "Tipo":"informatica",
      "Codigo": 0036,
      "Asignatura": "Investigación de Operaciones",
      "UC": 5,
      "Tax": "TA‐4",
      "Requisitos":[0025,0026],
      "Nota":20,
      "Pre":1,
      "Semestre":8
    };
    registroinf[38]= {
      "Tipo":"informatica",
      "Codigo": 0037,
      "Asignatura": "Redes de Computadores III",
      "UC": 3,
      "Tax": "TA‐9",
      "Requisitos":[0031],
      "Nota":20,
      "Pre":0,
      "Semestre":8
    };
    registroinf[37]= {
      "Tipo":"informatica",
      "Codigo": 0038,
      "Asignatura": "Seminario de Trabajo de Grado",
      "UC": 3,
      "Tax": "TA‐9",
      "Requisitos":[0032],
      "Nota":20,
      "Pre":1,
      "Semestre":8
    };
    registroinf[39]= {
      "Tipo":"informatica",
      "Codigo": 0039,
      "Asignatura": "Desarrollo de Software",
      "UC": 5,
      "Tax": "TA‐9",
      "Requisitos":[0032,0033],
      "Nota":20,
      "Pre":1,
      "Semestre":8
    };
    registroinf[40]= {
      "Tipo":"informatica",
      "Codigo": 0040,
      "Asignatura": "Ingeniería Económica",
      "UC": 4,
      "Tax": "TA‐4",
      "Requisitos":[0034],
      "Nota":20,
      "Pre":2,
      "Semestre":8
    };
    registroinf[36]= {
      "Tipo":"informatica",
      "Codigo": 0041,
      "Asignatura": "Inglés II",
      "UC": 5,
      "Tax": "TA‐6",
      "Requisitos":[0035],
      "Nota":20,
      "Pre":1,
      "Semestre":8
    };
    registroinf[41]= {
      "Tipo":"informatica",
      "Codigo": 0042,
      "Asignatura": "Seguridad Computacional",
      "UC": 5,
      "Tax": "TA‐9",
      "Requisitos":[0028],
      "Nota":20,
      "Pre":0,
      "Semestre":9
    };
    registroinf[43]= {
      "Tipo":"informatica",
      "Codigo": 0043,
      "Asignatura": "Sistemas Distribuidos",
      "UC": 5,
      "Tax": "TA‐9",
      "Requisitos":[0031],
      "Nota":20,
      "Pre":0,
      "Semestre":9
    };
    registroinf[44]= {
      "Tipo":"informatica",
      "Codigo": 0044,
      "Asignatura": "Emprendimiento",
      "UC": 4,
      "Tax": "TA‐8",
      "Requisitos":[0040],
      "Nota":20,
      "Pre":0,
      "Semestre":9
    };
    registroinf[46]= {
      "Tipo":"informatica",
      "Codigo": 0045,
      "Asignatura": "Electiva",
      "UC": 4,
      "Tax": "TA‐8",
      "Requisitos":[1197],
      "Nota":20,
      "Pre":0,
      "Semestre":9
    };
    registroinf[42]= {
      "Tipo":"informatica",
      "Codigo": 0046,
      "Asignatura": "Inglés Técnico",
      "UC": 4,
      "Tax": "TA‐9",
      "Requisitos":[0041],
      "Nota":20,
      "Pre":0,
      "Semestre":9
    };
    registroinf[45]= {
      "Tipo":"informatica",
      "Codigo": 0047,
      "Asignatura": "Pasantía",
      "UC": 8,
      "Tax": "TA‐7",
      "Requisitos":[0039],
      "Nota":20,
      "Pre":0,
      "Semestre":9
    };
    registroinf[47]= {
      "Tipo":"informatica",
      "Codigo": 0048,
      "Asignatura": "Ética Profesional",
      "UC": 3,
      "Tax": "TA‐2",
      "Requisitos":[1232],
      "Nota":20,
      "Pre":0,
      "Semestre":10
    };
    registroinf[48]= {
      "Tipo":"informatica",
      "Codigo": 0049,
      "Asignatura": "Evaluación de Sistemas Informáticos",
      "UC": 5,
      "Tax": "TA‐4",
      "Requisitos":[0036],
      "Nota":20,
      "Pre":0,
      "Semestre":10
    };
    registroinf[49]= {
      "Tipo":"informatica",
      "Codigo": 0050,
      "Asignatura": "Gestión de Proyectos de Software",
      "UC": 5,
      "Tax": "TA‐9",
      "Requisitos":[0040,0032,0033],
      "Nota":20,
      "Pre":0,
      "Semestre":10
    };
    registroinf[50]= {
      "Tipo":"informatica",
      "Codigo":0051,
      "Asignatura": "Electiva",
      "UC": 4,
      "Tax": "TA‐8",
      "Requisitos":[1197],
      "Nota":20,
      "Pre":0,
      "Semestre":10
    };
    registroinf[51]= {
      "Tipo":"informatica",
      "Codigo":0052,
      "Asignatura": "Electiva",
      "UC": 4,
      "Tax": "TA‐8",
      "Requisitos":[1197],
      "Nota":20,
      "Pre":0,
      "Semestre":10
    };
    registroinf[52]= {
      "Tipo":"informatica",
      "Codigo":0053,
      "Asignatura": "Trabajo de Grado (TG) o",
      "UC": 21,
      "Tax": "TA‐7",
      "Requisitos":[0038,0032,0033],
      "Nota":20,
      "Pre":0,
      "Semestre":10
    };
    ;
  }

  int verde = 0xFF018629;

  var boolmat = List.filled(63, false);

  //SEMESTRES
  bool sm1 = false,sm2 = false ,sm3 = false,sm4 = false,sm5 = false,sm6 = false,sm7 = false,sm8 = false,sm9 = false,sm10 = false;

  //SEMESTRE 1
  bool mate = false, trigo = false, intro = false, textos = false, liderazgo1 = false;



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
      }
      if(!sm1) {
        //boolmat.fillRange(0, 4, false);
        f_boolmat0(false);
        f_boolmat1(false);
        f_boolmat2(false);
        f_boolmat3(false);
        f_boolmat4(false);
      }
    });
  }

  void f_sm2(bool value){
    setState(() {
      sm2 = value;

      if(sm2) {
        //boolmat.fillRange(0, 4, true);
        if(!boolmat[5])
          f_boolmat5(true);
        if(!boolmat[6])
          f_boolmat6(true);
        if(!boolmat[7])
          f_boolmat7(true);
        if(!boolmat[8])
          f_boolmat8(true);
      }
      if(!sm2) {
        //boolmat.fillRange(0, 4, false);
        f_boolmat5(false);
        f_boolmat6(false);
        f_boolmat7(false);
        f_boolmat8(false);
      }
    });
  }

  void f_sm3(bool value){
    setState(() {
      sm3 = value;

      if(sm3) {
        //boolmat.fillRange(0, 4, true);
        if(!boolmat[9])
          f_boolmat9(true);
        if(!boolmat[10])
          f_boolmat10(true);
        if(!boolmat[11])
          f_boolmat11(true);
        if(!boolmat[12])
          f_boolmat12(true);
      }
      if(!sm3) {
        //boolmat.fillRange(0, 4, false);
        f_boolmat9(false);
        f_boolmat10(false);
        f_boolmat11(false);
        f_boolmat12(false);
      }
    });
  }

  void f_sm4(bool value){
    setState(() {
      sm4 = value;

      if(sm4) {
        //boolmat.fillRange(0, 4, true);
        if(!boolmat[13])
          f_boolmat13(true);
        if(!boolmat[14])
          f_boolmat14(true);
        if(!boolmat[15])
          f_boolmat15(true);
        if(!boolmat[16])
          f_boolmat16(true);
        if(!boolmat[17])
          f_boolmat17(true);
        if(!boolmat[18])
          f_boolmat18(true);
      }
      if(!sm4) {
        //boolmat.fillRange(0, 4, false);
        f_boolmat13(false);
        f_boolmat14(false);
        f_boolmat15(false);
        f_boolmat16(false);
        f_boolmat17(false);
        f_boolmat18(false);
      }
    });
  }


  void f_sm5(bool value){
    setState(() {
      sm5 = value;

      if(sm5) {
        //boolmat.fillRange(0, 4, true);
        if(!boolmat[19])
          f_boolmat19(true);
        if(!boolmat[20])
          f_boolmat20(true);
        if(!boolmat[21])
          f_boolmat21(true);
        if(!boolmat[22])
          f_boolmat22(true);
        if(!boolmat[23])
          f_boolmat23(true);
      }
      if(!sm5) {
        //boolmat.fillRange(0, 4, false);
        f_boolmat19(false);
        f_boolmat20(false);
        f_boolmat21(false);
        f_boolmat22(false);
        f_boolmat23(false);
      }
    });
  }

  void f_sm6(bool value){
    setState(() {
      sm6 = value;

      if(sm6) {
        //boolmat.fillRange(0, 4, true);
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
      if(!sm6) {
        //boolmat.fillRange(0, 4, false);
        f_boolmat24(false);
        f_boolmat25(false);
        f_boolmat26(false);
        f_boolmat27(false);
        f_boolmat28(false);
      }
    });
  }

  void f_sm7(bool value){
    setState(() {
      sm7 = value;

      if(sm7) {
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
      }
      if(!sm7) {
        //boolmat.fillRange(0, 4, false);
        f_boolmat29(false);
        f_boolmat30(false);
        f_boolmat31(false);
        f_boolmat32(false);
        f_boolmat33(false);
        f_boolmat34(false);
      }
    });
  }

  void f_sm8(bool value){
    setState(() {
      sm8 = value;

      if(sm8) {
        //boolmat.fillRange(0, 4, true);
        if(!boolmat[35])
          f_boolmat35(true);
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
      }
      if(!sm8) {
        //boolmat.fillRange(0, 4, false);
        f_boolmat35(false);
        f_boolmat36(false);
        f_boolmat37(false);
        f_boolmat38(false);
        f_boolmat39(false);
        f_boolmat40(false);
      }
    });
  }

  void f_sm9(bool value){
    setState(() {
      sm9 = value;

      if(sm9) {
        //boolmat.fillRange(0, 4, true);
        if(!boolmat[41])
          f_boolmat41(true);
        if(!boolmat[42])
          f_boolmat42(true);
        if(!boolmat[43])
          f_boolmat43(true);
        if(!boolmat[44])
          f_boolmat44(true);
        if(!boolmat[45])
          f_boolmat45(true);
        if(!boolmat[46])
          f_boolmat46(true);
      }
      if(!sm9) {
        //boolmat.fillRange(0, 4, false);
        f_boolmat41(false);
        f_boolmat42(false);
        f_boolmat43(false);
        f_boolmat44(false);
        f_boolmat45(false);
        f_boolmat46(false);
      }
    });
  }

  void f_sm10(bool value){
    setState(() {
      sm10 = value;

      if(sm10) {
        //boolmat.fillRange(0, 4, true);
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
        if(!boolmat[52])
          f_boolmat52(true);
      }
      if(!sm10) {
        //boolmat.fillRange(0, 4, false);
        f_boolmat47(false);
        f_boolmat48(false);
        f_boolmat49(false);
        f_boolmat50(false);
        f_boolmat51(false);
        f_boolmat52(false);
      }
    });
  }


  void f_boolmat0(bool value){
    setState(() {
      boolmat[0] = value;

      if(boolmat[0]) {
        aprobadas.add(registroinf[0]);
        print(aprobadas);
      }else{
        f_boolmat5(false);
        f_boolmat10(false);
        aprobadas.remove(registroinf[0]);
        print(aprobadas);
      }

    });
  }
  void f_boolmat1(bool value){
    setState(() {
      boolmat[1] = value;
      print('1');

      if(boolmat[1]) {
        aprobadas.add(registroinf[1]);
        print(aprobadas);
      }else{
        f_boolmat5(false);
        f_boolmat6(false);
        f_boolmat10(false);
        f_boolmat7(false);

        aprobadas.remove(registroinf[1]);
        print(aprobadas);
      }
    });
  }
  void f_boolmat2(bool value){
    setState(() {
      boolmat[2] = value;
      print('2');
      if(boolmat[2]) {
        aprobadas.add(registroinf[2]);
        print(aprobadas);
      }else{
        f_boolmat6(false);
        f_boolmat7(false);
        aprobadas.remove(registroinf[2]);
        print(aprobadas);
      }
    });
  }
  void f_boolmat3(bool value){
    setState(() {
      boolmat[3] = value;
      print('3');
      if(boolmat[3]) {
        aprobadas.add(registroinf[3]);
        print(aprobadas);
      }else{
        aprobadas.remove(registroinf[3]);
        print(aprobadas);
      }
    });
  }
  void f_boolmat4(bool value){
    setState(() {
      boolmat[4] = value;
      print('4');
        if (boolmat[4]) {
          aprobadas.add(registroinf[4]);
          print(aprobadas);
        } else {
          f_boolmat8(false);
          aprobadas.remove(registroinf[4]);
          print(aprobadas);
        }
    });
  }

  void f_boolmat5(bool value){
    setState(() {
      boolmat[5] = value;

      if (boolmat[5]) {
        //Requisitos
        if(boolmat[0] && boolmat[1]) {
          aprobadas.add(registroinf[5]);
          print(aprobadas);
          //return;
        }else{
          if(!boolmat[0] || !boolmat[1]) {
            boolmat[5] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{
        //Prelaciones
        if(boolmat[9])
          f_boolmat9(false);
        if(boolmat[11])
          f_boolmat11(false);
        if(boolmat[14])
          f_boolmat14(false);
        if(boolmat[15])
          f_boolmat15(false);

        aprobadas.remove(registroinf[5]);
        print(aprobadas);
      }
      print(boolmat[5]);


    });
  }

  void f_boolmat6(bool value){
    setState(() {
      boolmat[6] = value;

      if (boolmat[6]) {

        //Requisitos
        if(boolmat[2]) {

          aprobadas.add(registroinf[6]);
          print(aprobadas);
          //return;
        }else{
          //Requisito
          if(!boolmat[2]) {

            boolmat[6] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{
        //Prelaciones
        if(boolmat[11])
          f_boolmat9(false);

        aprobadas.remove(registroinf[6]);
        print(aprobadas);
      }
      print(boolmat[6]);

    });
  }

  void f_boolmat7(bool value){
    setState(() {
      boolmat[7] = value;

      if (boolmat[7]) {
        //Requisitos
        if(boolmat[1] && boolmat[2]) {
          aprobadas.add(registroinf[7]);
          print(aprobadas);
          //return;
        }else{
          if(!boolmat[1] || !boolmat[2]) {
            boolmat[7] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{
        //Prelaciones
        if(boolmat[12])
          f_boolmat12(false);


        aprobadas.remove(registroinf[7]);
        print(aprobadas);
      }
      print(boolmat[7]);

    });
  }

  void f_boolmat8(bool value){
    setState(() {
      boolmat[8] = value;

      if (boolmat[8]) {

        //Requisitos
        if(boolmat[4]) {

          aprobadas.add(registroinf[8]);
          print(aprobadas);
          //return;
        }else{
          //Requisito
          if(!boolmat[4]) {

            boolmat[8] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{

        aprobadas.remove(registroinf[8]);
        print(aprobadas);
      }
      print(boolmat[8]);

    });
  }


  void f_boolmat9(bool value){
    setState(() {
      boolmat[9] = value;

      if (boolmat[9]) {

        //Requisitos
        if(boolmat[5]) {

          aprobadas.add(registroinf[9]);
          print(aprobadas);
          //return;
        }else{
          //Requisito
          if(!boolmat[5]) {

            boolmat[9] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{
        //Prelaciones
        if(boolmat[13])
          f_boolmat13(false);

        aprobadas.remove(registroinf[9]);
        print(aprobadas);
      }
      print(boolmat[9]);
    });
  }

  void f_boolmat10(bool value){
    setState(() {
      boolmat[10] = value;

      if (boolmat[10]) {
        //Requisitos
        if(boolmat[0] && boolmat[1]) {
          aprobadas.add(registroinf[10]);
          print(aprobadas);
          //return;
        }else{
          if(!boolmat[0] || !boolmat[1]) {
            boolmat[10] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{
        //Prelaciones
        if(boolmat[14])
          f_boolmat14(false);
        if(boolmat[15])
          f_boolmat15(false);

        aprobadas.remove(registroinf[10]);
        print(aprobadas);
      }
      print(boolmat[10]);
    });
  }

  void f_boolmat11(bool value){
    setState(() {
      boolmat[11] = value;

      if (boolmat[11]) {
        //Requisitos
        if(boolmat[1] && boolmat[6]) {
          aprobadas.add(registroinf[11]);
          print(aprobadas);
          //return;
        }else{
          if(!boolmat[1] || !boolmat[6]) {
            boolmat[11] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{
        //Prelaciones
        if(boolmat[17])
          f_boolmat17(false);

        aprobadas.remove(registroinf[11]);
        print(aprobadas);
      }
      print(boolmat[11]);
    });
  }

  void f_boolmat12(bool value){
    setState(() {
      boolmat[12] = value;

      if (boolmat[12]) {
        //Requisitos
        if(boolmat[0] && boolmat[1]) {
          aprobadas.add(registroinf[12]);
          print(aprobadas);
          //return;
        }else{
          if(!boolmat[0] || !boolmat[1]) {
            boolmat[12] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{
        //Prelaciones
        if(boolmat[16])
          f_boolmat16(false);
        if(boolmat[17])
          f_boolmat17(false);


        aprobadas.remove(registroinf[12]);
        print(aprobadas);
      }
      print(boolmat[12]);
    });
  }



  void f_boolmat13(bool value){
    setState(() {
      boolmat[13] = value;

      if (boolmat[13]) {
        //Requisitos
        if(boolmat[9]) {
          aprobadas.add(registroinf[13]);
          print(aprobadas);
          //return;
        }else{
          if(!boolmat[9]) {
            boolmat[13] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{
        //Prelaciones
        if(boolmat[19])
          f_boolmat19(false);
        if(boolmat[25])
          f_boolmat25(false);

        aprobadas.remove(registroinf[13]);
        print(aprobadas);
      }
      print(boolmat[13]);

    });
  }

  void f_boolmat14(bool value){
    setState(() {
      boolmat[14] = value;

      if (boolmat[14]) {
        //Requisitos
        if(boolmat[0] && boolmat[1]) {
          aprobadas.add(registroinf[14]);
          print(aprobadas);
          //return;
        }else{
          if(!boolmat[0] || !boolmat[1]) {
            boolmat[14] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{
        //Prelaciones
        if(boolmat[20])
          f_boolmat20(false);

        aprobadas.remove(registroinf[14]);
        print(aprobadas);
      }
      print(boolmat[14]);

    });
  }

  void f_boolmat15(bool value){
    setState(() {
      boolmat[15] = value;

      if (boolmat[15]) {
        //Requisitos
        if(boolmat[5] && boolmat[10]) {
          aprobadas.add(registroinf[15]);
          print(aprobadas);
          //return;
        }else{
          if(!boolmat[5] || !boolmat[10]) {
            boolmat[15] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{
        //Prelaciones
        if(boolmat[20])
          f_boolmat20(false);

        aprobadas.remove(registroinf[15]);
        print(aprobadas);
      }
      print(boolmat[15]);
    });
  }

  void f_boolmat16(bool value){
    setState(() {
      boolmat[16] = value;

      if (boolmat[16]) {
        //Requisitos
        if(boolmat[12]) {
          aprobadas.add(registroinf[16]);
          print(aprobadas);
          //return;
        }else{
          if(!boolmat[12]) {
            boolmat[16] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{
        //Prelaciones
        if(boolmat[21])
          f_boolmat21(false);

        aprobadas.remove(registroinf[16]);
        print(aprobadas);
      }
      print(boolmat[16]);
    });
  }

  void f_boolmat17(bool value){
    setState(() {
      boolmat[17] = value;

      if (boolmat[17]) {
        //Requisitos
        if(boolmat[11] && boolmat[12]) {
          aprobadas.add(registroinf[17]);
          print(aprobadas);
          //return;
        }else{
          if(!boolmat[11] || !boolmat[12]) {
            boolmat[17] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{
        //Prelaciones
        if(boolmat[22])
          f_boolmat22(false);
        if(boolmat[23])
          f_boolmat23(false);

        aprobadas.remove(registroinf[17]);
        print(aprobadas);
      }
      print(boolmat[17]);

    });
  }

  void f_boolmat18(bool value){
    setState(() {
      boolmat[18] = value;

      if (boolmat[18]) {
        //Requisitos
        //if(boolmat[0] && boolmat[1]) {
          aprobadas.add(registroinf[18]);
          print(aprobadas);
          //return;
        //}else{
          //if(!boolmat[0] || !boolmat[1]) {
            //boolmat[5] = false;
            //showToast(
                //'No has seleccionado los requisitos para una materia', false);
            //print(aprobadas);
          //}
        //}
      }else{

        aprobadas.remove(registroinf[18]);
        print(aprobadas);
      }
      print(boolmat[18]);
    });
  }


  void f_boolmat19(bool value){
    setState(() {
      boolmat[19] = value;

      if (boolmat[19]) {
        //Requisitos
        if(boolmat[13]) {
          aprobadas.add(registroinf[19]);
          print(aprobadas);
          //return;
        }else{
          if(!boolmat[13]) {
            boolmat[19] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{
        //Prelaciones
        if(boolmat[24])
          f_boolmat24(false);
        if(boolmat[31])
          f_boolmat31(false);

        aprobadas.remove(registroinf[19]);
        print(aprobadas);
      }
      print(boolmat[19]);

    });
  }

    void f_boolmat20(bool value){
    setState(() {
      boolmat[20] = value;

      if (boolmat[20]) {
        //Requisitos
        if(boolmat[11] && boolmat[14] && boolmat[15]) {
          aprobadas.add(registroinf[20]);
          print(aprobadas);
          //return;
        }else{
          if(!boolmat[11] || !boolmat[14] || boolmat[15]) {
            boolmat[20] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{
        //Prelaciones
        if(boolmat[26])
          f_boolmat26(false);
        if(boolmat[27])
          f_boolmat27(false);

        aprobadas.remove(registroinf[20]);
        print(aprobadas);
      }
      print(boolmat[20]);
    });
  }

  void f_boolmat21(bool value){
    setState(() {
      boolmat[21] = value;

      if (boolmat[21]) {
        //Requisitos
        if(boolmat[16]) {
          aprobadas.add(registroinf[21]);
          print(aprobadas);
          //return;
        }else{
          if(!boolmat[16]) {
            boolmat[21] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{
        //Prelaciones
        if(boolmat[27])
          f_boolmat27(false);

        aprobadas.remove(registroinf[21]);
        print(aprobadas);
      }
      print(boolmat[21]);
    });
  }

  void f_boolmat22(bool value){
    setState(() {
      boolmat[22] = value;

      if (boolmat[22]) {
        //Requisitos
        if(boolmat[17]) {
          aprobadas.add(registroinf[22]);
          print(aprobadas);
          //return;
        }else{
          if(!boolmat[17]) {
            boolmat[22] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{
        //Prelaciones
        if(boolmat[28])
          f_boolmat28(false);

        aprobadas.remove(registroinf[22]);
        print(aprobadas);
      }
      print(boolmat[22]);
    });
  }

  void f_boolmat23(bool value){
    setState(() {
      boolmat[23] = value;

      if (boolmat[23]) {
        //Requisitos
        if(boolmat[17]) {
          aprobadas.add(registroinf[23]);
          print(aprobadas);
          //return;
        }else{
          if(!boolmat[17]) {
            boolmat[23] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{
        //Prelaciones
        if(boolmat[34])
          f_boolmat34(false);

        aprobadas.remove(registroinf[23]);
        print(aprobadas);
      }
      print(boolmat[23]);
    });
  }



  void f_boolmat24(bool value){
    setState(() {
      boolmat[24] = value;

      if (boolmat[24]) {
        //Requisitos
        if(boolmat[19]) {
          aprobadas.add(registroinf[24]);
          print(aprobadas);
          //return;
        }else{
          if(!boolmat[19]) {
            boolmat[24] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{
        //Prelaciones
        if(boolmat[35])
          f_boolmat35(false);

        aprobadas.remove(registroinf[24]);
        print(aprobadas);
      }
      print(boolmat[24]);
    });
  }

  void f_boolmat25(bool value){
    setState(() {
      boolmat[25] = value;

      if (boolmat[25]) {
        //Requisitos
        if(boolmat[13]) {
          aprobadas.add(registroinf[25]);
          print(aprobadas);
          //return;
        }else{
          if(!boolmat[13]) {
            boolmat[25] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{
        //Prelaciones
        if(boolmat[35])
          f_boolmat35(false);

        aprobadas.remove(registroinf[25]);
        print(aprobadas);
      }
      print(boolmat[25]);
    });
  }

  void f_boolmat26(bool value){
    setState(() {
      boolmat[26] = value;

      if (boolmat[26]) {
        //Requisitos
        if(boolmat[20]) {
          aprobadas.add(registroinf[26]);
          print(aprobadas);
          //return;
        }else{
          if(!boolmat[20]) {
            boolmat[26] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{

        aprobadas.remove(registroinf[26]);
        print(aprobadas);
      }
      print(boolmat[26]);
    });
  }

  void f_boolmat27(bool value){
    setState(() {
      boolmat[27] = value;

      if (boolmat[27]) {
        //Requisitos
        if(boolmat[20] && boolmat[21]) {
          aprobadas.add(registroinf[27]);
          print(aprobadas);
          //return;
        }else{
          if(!boolmat[20] || !boolmat[21]) {
            boolmat[27] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{
        //Prelaciones
        if(boolmat[32])
          f_boolmat32(false);

        aprobadas.remove(registroinf[27]);
        print(aprobadas);
      }
      print(boolmat[27]);
    });
  }

  void f_boolmat28(bool value){
    setState(() {
      boolmat[28] = value;

      if (boolmat[28]) {
        //Requisitos
        if(boolmat[22]) {
          aprobadas.add(registroinf[28]);
          print(aprobadas);
          //return;
        }else{
          if(!boolmat[22]) {
            boolmat[28] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{
        //Prelaciones
        if(boolmat[33])
          f_boolmat33(false);
        if(boolmat[34])
          f_boolmat34(false);

        aprobadas.remove(registroinf[28]);
        print(aprobadas);
      }
      print(boolmat[28]);

    });
  }


  void f_boolmat29(bool value){
    setState(() {
      boolmat[29] = value;

      if (boolmat[29]) {
        //Requisitos
        //if(boolmat[22]) {
          aprobadas.add(registroinf[29]);
          print(aprobadas);
          //return;
        //}else{
          //if(!boolmat[22]) {
            //boolmat[29] = false;
            //showToast(
              //  'No has seleccionado los requisitos para una materia', false);
            //print(aprobadas);
          //}
        //}
      }else{
        //Prelaciones
        if(boolmat[40])
          f_boolmat40(false);

        aprobadas.remove(registroinf[29]);
        print(aprobadas);
      }
      print(boolmat[29]);

    });
  }

  void f_boolmat30(bool value){
    setState(() {
      boolmat[30] = value;

      if(boolmat[30]) {
        aprobadas.add(registroinf[30]);
        print(aprobadas);
      }else{
        if(boolmat[36])
          f_boolmat36(false);

        aprobadas.remove(registroinf[30]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat31(bool value){
    setState(() {
      boolmat[31] = value;

      if (boolmat[31]) {
        //Requisitos
        if(boolmat[19]) {
          aprobadas.add(registroinf[31]);
          print(aprobadas);
          //return;
        }else{
          if(!boolmat[19]) {
            boolmat[31] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{
        aprobadas.remove(registroinf[31]);
        print(aprobadas);
      }
      print(boolmat[31]);
    });
  }

  void f_boolmat32(bool value){
    setState(() {
      boolmat[32] = value;

      if (boolmat[32]) {
        //Requisitos
        if(boolmat[27]) {
          aprobadas.add(registroinf[32]);
          print(aprobadas);
          //return;
        }else{
          if(!boolmat[27]) {
            boolmat[32] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{
        //Prelaciones
        if(boolmat[38])
          f_boolmat38(false);
        if(boolmat[43])
          f_boolmat43(false);

        aprobadas.remove(registroinf[32]);
        print(aprobadas);
      }
      print(boolmat[32]);

    });
  }

  void f_boolmat33(bool value){
    setState(() {
      boolmat[33] = value;

      if (boolmat[33]) {
        //Requisitos
        if(boolmat[28]) {
          aprobadas.add(registroinf[33]);
          print(aprobadas);
          //return;
        }else{
          if(!boolmat[28]) {
            boolmat[33] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{
        //Prelaciones
        if(boolmat[39])
          f_boolmat39(false);
        if(boolmat[49])
          f_boolmat49(false);
        if(boolmat[52])
          f_boolmat52(false);

        aprobadas.remove(registroinf[33]);
        print(aprobadas);
      }
      print(boolmat[33]);

    });
  }

  void f_boolmat34(bool value){
    setState(() {
      boolmat[34] = value;

      if (boolmat[34]) {
        //Requisitos
        if(boolmat[23] && boolmat[28]) {
          aprobadas.add(registroinf[34]);
          print(aprobadas);
          //return;
        }else{
          if(!boolmat[23] || !boolmat[28]) {
            boolmat[34] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{
        //Prelaciones
        if(boolmat[37])
          f_boolmat37(false);
        if(boolmat[39])
          f_boolmat39(false);
        if(boolmat[49])
          f_boolmat49(false);
        if(boolmat[52])
          f_boolmat52(false);

        aprobadas.remove(registroinf[34]);
        print(aprobadas);
      }
      print(boolmat[34]);

    });
  }

  void f_boolmat35(bool value){
    setState(() {
      boolmat[35] = value;

      if (boolmat[35]) {
        //Requisitos
        if(boolmat[24] && boolmat[25]) {
          aprobadas.add(registroinf[35]);
          print(aprobadas);
          //return;
        }else{
          if(!boolmat[24] || !boolmat[25]) {
            boolmat[35] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{
        //Prelaciones
        if(boolmat[48])
          f_boolmat48(false);

        aprobadas.remove(registroinf[35]);
        print(aprobadas);
      }
      print(boolmat[35]);

    });
  }

  void f_boolmat36(bool value){
    setState(() {
      boolmat[36] = value;

      if (boolmat[36]) {
        //Requisitos
        if(boolmat[30]) {
          aprobadas.add(registroinf[36]);
          print(aprobadas);
          //return;
        }else{
          if(!boolmat[30]) {
            boolmat[36] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{
        //Prelaciones
        if(boolmat[42])
          f_boolmat42(false);

        aprobadas.remove(registroinf[36]);
        print(aprobadas);
      }
      print(boolmat[36]);

    });
  }

  void f_boolmat37(bool value){
    setState(() {
      boolmat[37] = value;

      if (boolmat[37]) {
        //Requisitos
        if(boolmat[34]) {
          aprobadas.add(registroinf[37]);
          print(aprobadas);
          //return;
        }else{
          if(!boolmat[34]) {
            boolmat[37] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{
        //Prelaciones
        if(boolmat[52])
          f_boolmat52(false);

        aprobadas.remove(registroinf[37]);
        print(aprobadas);
      }
      print(boolmat[37]);

    });
  }

  void f_boolmat38(bool value){
    setState(() {
      boolmat[38] = value;

      if (boolmat[38]) {
        //Requisitos
        if(boolmat[32]) {
          aprobadas.add(registroinf[38]);
          print(aprobadas);
          //return;
        }else{
          if(!boolmat[32]) {
            boolmat[38] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{

        aprobadas.remove(registroinf[38]);
        print(aprobadas);
      }
      print(boolmat[38]);

    });
  }

  void f_boolmat39(bool value){
    setState(() {
      boolmat[39] = value;

      if (boolmat[39]) {
        //Requisitos
        if(boolmat[33] && boolmat[34]) {
          aprobadas.add(registroinf[39]);
          print(aprobadas);
          //return;
        }else{
          if(!boolmat[33] || !boolmat[34]) {
            boolmat[39] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{
        //Prelaciones
        if(boolmat[45])
          f_boolmat45(false);

        aprobadas.remove(registroinf[39]);
        print(aprobadas);
      }
      print(boolmat[39]);

    });
  }

  void f_boolmat40(bool value){
    setState(() {
      boolmat[40] = value;

      if (boolmat[40]) {
        //Requisitos
        if(boolmat[29]) {
          aprobadas.add(registroinf[40]);
          print(aprobadas);
          //return;
        }else{
          if(!boolmat[29]) {
            boolmat[40] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{
        //Prelaciones
        if(boolmat[44])
          f_boolmat44(false);
        if(boolmat[49])
          f_boolmat49(false);

        aprobadas.remove(registroinf[40]);
        print(aprobadas);
      }
      print(boolmat[40]);

    });
  }

  void f_boolmat41(bool value){
    setState(() {
      boolmat[41] = value;

      if (boolmat[41]) {
        //Requisitos
        if(boolmat[27]) {
          aprobadas.add(registroinf[41]);
          print(aprobadas);
          //return;
        }else{
          if(!boolmat[27]) {
            boolmat[41] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{

        aprobadas.remove(registroinf[41]);
        print(aprobadas);
      }
      print(boolmat[41]);

    });
  }

  void f_boolmat42(bool value){
    setState(() {
      boolmat[42] = value;

      if (boolmat[42]) {
        //Requisitos
        if(boolmat[36]) {
          aprobadas.add(registroinf[42]);
          print(aprobadas);
          //return;
        }else{
          if(!boolmat[36]) {
            boolmat[42] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{

        aprobadas.remove(registroinf[42]);
        print(aprobadas);
      }
      print(boolmat[42]);
    });
  }

  void f_boolmat43(bool value){
    setState(() {
      boolmat[43] = value;

      if (boolmat[43]) {
        //Requisitos
        if(boolmat[32]) {
          aprobadas.add(registroinf[43]);
          print(aprobadas);
          //return;
        }else{
          if(!boolmat[32]) {
            boolmat[43] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{

        aprobadas.remove(registroinf[43]);
        print(aprobadas);
      }
      print(boolmat[43]);

    });
  }

  void f_boolmat44(bool value){
    setState(() {
      boolmat[44] = value;

      if (boolmat[44]) {
        //Requisitos
        if(boolmat[40]) {
          aprobadas.add(registroinf[44]);
          print(aprobadas);
          //return;
        }else{
          if(!boolmat[40]) {
            boolmat[44] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{

        aprobadas.remove(registroinf[44]);
        print(aprobadas);
      }
      print(boolmat[44]);

    });
  }

  void f_boolmat45(bool value){
    setState(() {
      boolmat[45] = value;

      if (boolmat[45]) {
        //Requisitos
        if(boolmat[39]) {
          aprobadas.add(registroinf[45]);
          print(aprobadas);
          //return;
        }else{
          if(!boolmat[39]) {
            boolmat[45] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{

        aprobadas.remove(registroinf[45]);
        print(aprobadas);
      }
      print(boolmat[45]);

    });
  }

  void f_boolmat46(bool value){
    setState(() {
      boolmat[46] = value;

      if(boolmat[46]) {
        aprobadas.add(registroinf[46]);
        print(aprobadas);
      }else{
        aprobadas.remove(registroinf[46]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat47(bool value){
    setState(() {
      boolmat[47] = value;

      if(boolmat[47]) {
        aprobadas.add(registroinf[47]);
        print(aprobadas);
      }else{
        aprobadas.remove(registroinf[47]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat48(bool value){
    setState(() {
      boolmat[48] = value;

      if (boolmat[48]) {
        //Requisitos
        if(boolmat[35]) {
          aprobadas.add(registroinf[48]);
          print(aprobadas);
          //return;
        }else{
          if(!boolmat[35]) {
            boolmat[48] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{

        aprobadas.remove(registroinf[48]);
        print(aprobadas);
      }
      print(boolmat[48]);

    });
  }

  void f_boolmat49(bool value){
    setState(() {
      boolmat[49] = value;

      if (boolmat[49]) {
        //Requisitos
        if(boolmat[33] && boolmat[34] && boolmat[40]) {
          aprobadas.add(registroinf[49]);
          print(aprobadas);
          //return;
        }else{
          if(!boolmat[33] || !boolmat[34] || boolmat[40]) {
            boolmat[49] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{

        aprobadas.remove(registroinf[49]);
        print(aprobadas);
      }
      print(boolmat[49]);

    });
  }

  void f_boolmat50(bool value){
    setState(() {
      boolmat[50] = value;
      if(boolmat[50]) {
        aprobadas.add(registroinf[50]);
        print(aprobadas);
      }else{
        aprobadas.remove(registroinf[50]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat51(bool value){
    setState(() {
      boolmat[51] = value;
      if(boolmat[51]) {
        aprobadas.add(registroinf[51]);
        print(aprobadas);
      }else{
        aprobadas.remove(registroinf[51]);
        print(aprobadas);
      }
    });
  }

  void f_boolmat52(bool value){
    setState(() {
      boolmat[52] = value;

      if (boolmat[52]) {
        //Requisitos
        if(boolmat[33] && boolmat[34] && boolmat[37]) {
          aprobadas.add(registroinf[52]);
          print(aprobadas);
          //return;
        }else{
          if(!boolmat[33] || !boolmat[34] || boolmat[37]) {
            boolmat[52] = false;
            showToast(
                'No has seleccionado los requisitos para una materia', false);
            print(aprobadas);
          }
        }
      }else{

        aprobadas.remove(registroinf[52]);
        print(aprobadas);
      }
      print(boolmat[52]);

    });
  }




  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(verde),
        title: Text("Paso 1"),
          actions: <Widget>[
            FlatButton(
              onPressed: (){
                editName(context);
                //Navigator.push(context,
                  //new MaterialPageRoute(builder: (context) =>
                  //new Informacion(aprobadas: aprobadas,listacarrera: registroinf, boolcarrera: true,)));
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
                  onChanged: (bool value){f_sm1(value);},
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
                  title: new Text("Introducción a la Informática"),
                  activeColor: Colors.green,
                  value: boolmat[2] ,
                  onChanged: (bool value){f_boolmat2(value);}
              ),
              CheckboxListTile(
                  title: new Text("Comprensión y Producción de Textos"),
                  activeColor: Colors.green,
                  value: boolmat[3] ,
                  onChanged: (bool value){f_boolmat3(value);}
              ),
              CheckboxListTile(
                  title: new Text("Identidad, Liderazgo y Compromiso I"),
                  activeColor: Colors.green,
                  value: boolmat[4] ,
                  onChanged: (bool value){f_boolmat4(value);}
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
                  value: boolmat[5] ,
                  onChanged: (bool value){

                      f_boolmat5(value);
                  }
              ),
              CheckboxListTile(
                  title: new Text("Lógica Computacional"),
                  activeColor: Colors.green,
                  value: boolmat[6] ,
                  onChanged: (bool value){f_boolmat6(value);}
              ),
              CheckboxListTile(
                  title: new Text("Algoritmos y Programación I"),
                  activeColor: Colors.green,
                  value: boolmat[7] ,
                  onChanged: (bool value){f_boolmat7(value);}
              ),
              CheckboxListTile(
                  title: new Text("Identidad, Liderazgo y Compromiso II"),
                  activeColor: Colors.green,
                  value: boolmat[8] ,
                  onChanged: (bool value){f_boolmat8(value);}
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
                  value: boolmat[9] ,
                  onChanged: (bool value){f_boolmat9(value);}
              ),
              CheckboxListTile(
                  title: new Text("Física General"),
                  activeColor: Colors.green,
                  value: boolmat[10] ,
                  onChanged: (bool value){f_boolmat10(value);}
              ),
              CheckboxListTile(
                  title: new Text("Matemáticas Discretas"),
                  activeColor: Colors.green,
                  value: boolmat[11] ,
                  onChanged: (bool value){f_boolmat11(value);}
              ),
              CheckboxListTile(
                  title: new Text("Algoritmos y Programación II"),
                  activeColor: Colors.green,
                  value: boolmat[12] ,
                  onChanged: (bool value){f_boolmat12(value);}
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
                  value: boolmat[13] ,
                  onChanged: (bool value){f_boolmat13(value);}
              ),
              CheckboxListTile(
                  title: new Text("Laboratorio de Física Eléctrica"),
                  activeColor: Colors.green,
                  value: boolmat[14] ,
                  onChanged: (bool value){f_boolmat14(value);}
              ),
              CheckboxListTile(
                  title: new Text("Física Eléctrica"),
                  activeColor: Colors.green,
                  value: boolmat[15] ,
                  onChanged: (bool value){f_boolmat15(value);}
              ),
              CheckboxListTile(
                  title: new Text("Estructura del Computador"),
                  activeColor: Colors.green,
                  value: boolmat[16] ,
                  onChanged: (bool value){f_boolmat16(value);}
              ),
              CheckboxListTile(
                  title: new Text("Algoritmos y Programación III"),
                  activeColor: Colors.green,
                  value: boolmat[17] ,
                  onChanged: (bool value){f_boolmat17(value);}
              ),
              CheckboxListTile(
                  title: new Text("Ecología, Ambiente y Sustentabilidad"),
                  activeColor: Colors.green,
                  value: boolmat[18] ,
                  onChanged: (bool value){f_boolmat18(value);}
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
                  value: boolmat[19] ,
                  onChanged: (bool value){f_boolmat19(value);}
              ),
              CheckboxListTile(
                  title: new Text("Circuitos Electrónicos"),
                  activeColor: Colors.green,
                  value: boolmat[20] ,
                  onChanged: (bool value){f_boolmat20(value);}
              ),
              CheckboxListTile(
                  title: new Text("Sistemas de Operación"),
                  activeColor: Colors.green,
                  value: boolmat[21] ,
                  onChanged: (bool value){f_boolmat21(value);}
              ),
              CheckboxListTile(
                  title: new Text("Ingeniería del Software"),
                  activeColor: Colors.green,
                  value: boolmat[22] ,
                  onChanged: (bool value){f_boolmat22(value);}
              ),
              CheckboxListTile(
                  title: new Text("Interacción Humano Computador"),
                  activeColor: Colors.green,
                  value: boolmat[23] ,
                  onChanged: (bool value){f_boolmat23(value);}
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
                  value: boolmat[24] ,
                  onChanged: (bool value){f_boolmat24(value);}
              ),
              CheckboxListTile(
                  title: new Text("Estadística y Probabilidades"),
                  activeColor: Colors.green,
                  value: boolmat[25] ,
                  onChanged: (bool value){f_boolmat25(value);}
              ),
              CheckboxListTile(
                  title: new Text("Arquitectura del Computador"),
                  activeColor: Colors.green,
                  value: boolmat[26] ,
                  onChanged: (bool value){f_boolmat26(value);}
              ),
              CheckboxListTile(
                  title: new Text("Redes de Computadores I"),
                  activeColor: Colors.green,
                  value: boolmat[27] ,
                  onChanged: (bool value){f_boolmat27(value);}
              ),
              CheckboxListTile(
                  title: new Text("Sistemas de Bases de Datos I"),
                  activeColor: Colors.green,
                  value: boolmat[28] ,
                  onChanged: (bool value){f_boolmat28(value);}
              ),





              CheckboxListTile(
                title: new Text("Semestre 7", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                activeColor: Colors.blue,
                secondary: const Icon(Icons.school),
                value: sm7,
                onChanged: (bool value){f_sm7(value);}
              ),
              CheckboxListTile(
                  title: new Text("Contabilidad General"),
                  activeColor: Colors.green,
                  value: boolmat[29] ,
                  onChanged: (bool value){f_boolmat29(value);}
              ),
              CheckboxListTile(
                  title: new Text("Inglés I"),
                  activeColor: Colors.green,
                  value: boolmat[30] ,
                  onChanged: (bool value){f_boolmat30(value);}
              ),
              CheckboxListTile(
                  title: new Text("Programación Lineal"),
                  activeColor: Colors.green,
                  value: boolmat[31] ,
                  onChanged: (bool value){f_boolmat31(value);}
              ),
              CheckboxListTile(
                  title: new Text("Redes de Computadores II"),
                  activeColor: Colors.green,
                  value: boolmat[32] ,
                  onChanged: (bool value){f_boolmat32(value);}
              ),
              CheckboxListTile(
                  title: new Text("Sistemas de Bases de Datos II"),
                  activeColor: Colors.green,
                  value: boolmat[33] ,
                  onChanged: (bool value){f_boolmat33(value);}
              )
              ,CheckboxListTile(
                  title: new Text("Metodologia del Software"),
                  activeColor: Colors.green,
                  value: boolmat[34] ,
                  onChanged: (bool value){f_boolmat34(value);}
              ),



              CheckboxListTile(
                  title: new Text("Semestre 8", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  activeColor: Colors.blue,
                  secondary: const Icon(Icons.school),
                  value: sm8,
                  onChanged: (bool value){f_sm8(value);}
              ),
              CheckboxListTile(
                  title: new Text("Investigacíon de Operaciones"),
                  activeColor: Colors.green,
                  value: boolmat[35] ,
                  onChanged: (bool value){f_boolmat35(value);}
              ),
              CheckboxListTile(
                  title: new Text("Inglés II"),
                  activeColor: Colors.green,
                  value: boolmat[36] ,
                  onChanged: (bool value){f_boolmat36(value);}
              ),
              CheckboxListTile(
                  title: new Text("Seminario de Trabajo de Grado"),
                  activeColor: Colors.green,
                  value: boolmat[37] ,
                  onChanged: (bool value){f_boolmat37(value);}
              ),
              CheckboxListTile(
                  title: new Text("Redes de Computadores III"),
                  activeColor: Colors.green,
                  value: boolmat[38] ,
                  onChanged: (bool value){f_boolmat38(value);}
              ),
              CheckboxListTile(
                  title: new Text("Desarrollo de Software"),
                  activeColor: Colors.green,
                  value: boolmat[39] ,
                  onChanged: (bool value){f_boolmat39(value);}
              )
              ,CheckboxListTile(
                  title: new Text("Ingeniería Económica"),
                  activeColor: Colors.green,
                  value: boolmat[40] ,
                  onChanged: (bool value){f_boolmat40(value);}
              ),





              CheckboxListTile(
                  title: new Text("Semestre 9", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  activeColor: Colors.blue,
                  secondary: const Icon(Icons.school),
                  value: sm9,
                  onChanged: (bool value){f_sm9(value);}
              ),
              CheckboxListTile(
                  title: new Text("Seguridad Computacional"),
                  activeColor: Colors.green,
                  value: boolmat[41] ,
                  onChanged: (bool value){f_boolmat41(value);}
              ),
              CheckboxListTile(
                  title: new Text("Inglés Tecnico"),
                  activeColor: Colors.green,
                  value: boolmat[42] ,
                  onChanged: (bool value){f_boolmat42(value);}
              ),
              CheckboxListTile(
                  title: new Text("Sistemas Distribuidos"),
                  activeColor: Colors.green,
                  value: boolmat[43] ,
                  onChanged: (bool value){f_boolmat43(value);}
              ),
              CheckboxListTile(
                  title: new Text("Emprendimiento"),
                  activeColor: Colors.green,
                  value: boolmat[44] ,
                  onChanged: (bool value){f_boolmat44(value);}
              ),
              CheckboxListTile(
                  title: new Text("Pasantía"),
                  activeColor: Colors.green,
                  value: boolmat[45] ,
                  onChanged: (bool value){f_boolmat45(value);}
              )
              ,CheckboxListTile(
                  title: new Text("Electiva"),
                  activeColor: Colors.green,
                  value: boolmat[46] ,
                  onChanged: (bool value){f_boolmat46(value);}
              ),





              CheckboxListTile(
                  title: new Text("Semestre 10", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  activeColor: Colors.blue,
                  secondary: const Icon(Icons.school),
                  value: sm10,
                  onChanged: (bool value){f_sm10(value);}
              ),
              CheckboxListTile(
                  title: new Text("Ética Profesional"),
                  activeColor: Colors.green,
                  value: boolmat[47] ,
                  onChanged: (bool value){f_boolmat47(value);}
              ),
              CheckboxListTile(
                  title: new Text("Evaluación de Sistemas Informáticos"),
                  activeColor: Colors.green,
                  value: boolmat[48] ,
                  onChanged: (bool value){f_boolmat48(value);}
              ),
              CheckboxListTile(
                  title: new Text("Gestión de Proyectos de Software"),
                  activeColor: Colors.green,
                  value: boolmat[49] ,
                  onChanged: (bool value){f_boolmat49(value);}
              ),
              CheckboxListTile(
                  title: new Text("Electiva"),
                  activeColor: Colors.green,
                  value: boolmat[50] ,
                  onChanged: (bool value){f_boolmat50(value);showToast('gey', true);}
              ),
              CheckboxListTile(
                  title: new Text("Electiva"),
                  activeColor: Colors.green,
                  value: boolmat[51] ,
                  onChanged: (bool value){f_boolmat51(value);}
              )
              ,CheckboxListTile(
                  title: new Text("Trabajo de Grado"),
                  activeColor: Colors.green,
                  value: boolmat[52] ,
                  onChanged: (bool value){f_boolmat52(value);}
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
                  height: 180,
                  width: 120,
                  child:
                  Column(
                    children:<Widget>[
                      Text('- Has aprobado ('+aprobadas.length.toString()+'/53) materias y '+ uc().toString() +' unidades de crédito.', textAlign: TextAlign.center,),
                      //SizedBox(height: 5),
                      //SizedBox(height: 16),
                      FlatButton(
                          color: Color(verde),
                          child: Text('Continuar',style: TextStyle(color: Colors.white),),
                          textColor: Color(verde),
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(context,
                                new MaterialPageRoute(builder: (context) =>
                                new Uc(aprobadas: aprobadas,listacarrera: registroinf, boolcarrera: true,)));
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

  void showToast (String alerta, bool color) {
    String error;

    Color colors;
    if(!color)
      colors = Colors.red;
    else
      colors = Colors.green;

    Fluttertoast.showToast(
        backgroundColor: colors,
        msg: alerta,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
        textColor: Colors.white
    );
  }

}