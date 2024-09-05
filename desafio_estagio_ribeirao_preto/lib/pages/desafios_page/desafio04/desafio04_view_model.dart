
import 'package:flutter/material.dart';

import 'desafio04.dart';

abstract class Desafio04ViewModel extends State<Desafio04> {

  String resultA ="";
  String resultB ="";
  String resultC ="";
  String resultD ="";
  String resultE ="";
  String resultF ="";

  List<String> respostas = [];

// 4) Descubra a lógica e complete o próximo elemento: 
// a) 1, 3, 5, 7, ___ 
// b) 2, 4, 8, 16, 32, 64, ____ 
// c) 0, 1, 4, 9, 16, 25, 36, ____ 
// d) 4, 16, 36, 64, ____ 
// e) 1, 1, 2, 3, 5, 8, ____ 
// f) 2,10, 12, 16, 17, 18, 19, ____




  bool iscalc = false;
  String resultado = "";

    void mostralogic(){

setState(() {
        resultA = """ A) e uma sequência de números impar sendo cada número somado a 2 assim o próximo número  é 7 + 2 = 9""";
      resultB = """ B) Cada número e 2x o anterior, assim o próximo número é 64 * 2 = 128""";
      resultC = """ C) è uma sequência do quadrado de números naturais assim o próximo número é 7^ 2 = 49""";
      resultD = """ D) Sequência de quadrado, mas desta vez de números pares assim o próximo número é 10^ 2 = 100""";
      resultE = """ E) Aqui é a sequência de Fibonacci dada por Fn = (Fn-1) + (Fn-2) (Fn >2) assim o próximo número é 5 + 8 = 13""";
      resultF = """ F) Aqui é a sequência de diferença com continuidade se Subtrairmos o atual com seu antecessor temos umas diferenças sendo a seguinte: 10 - 2 = 8 |12 - 10 = 2 | 16 - 12 = 4 | 17 - 16 = 1 | 18 - 17 = 1 | 19 - 18 = 1, devido a repetição da diferença 1 a próxima deve ser 1 também. 
       Sendo assim o próximo número é 19 + 1 = 20.
       
       obs: Coincidentemente a sequência da letra "F" e formada por números começados por D... podendo ser 200 o próximo número... (Só uma observação)
""";

      respostas = [resultA,resultB,resultC,resultD,resultE,resultF];
      iscalc = true;
      });

    }


  void reset(){
      setState(() {
          iscalc = true;
        });
  }


    }







