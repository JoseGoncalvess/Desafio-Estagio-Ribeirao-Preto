
import 'package:flutter/material.dart';

import 'desafio03.dart';

abstract class Desafio03ViewModel extends State<Desafio03> {

// 3) Observe o trecho de código abaixo: int INDICE = 12, SOMA = 0, K = 1; enquanto K < INDICE faça { K = K + 1; SOMA = SOMA + K; } imprimir(SOMA); 

// Ao final do processamento, qual será o valor da variável SOMA?



  bool iscalc = false;
  String resultado = "";


    Future<void> valorsoma() async{
       int indice = 13;
        int soma = 0;
        int k = 0;

        while (k < indice){
            k += 1;
            soma += k;
        }
        setState(() {
          resultado = "O valor da soma é  $soma";
          iscalc = true;
        });
    }


  void reset(){
      setState(() {
          iscalc = true;
        });
  }


    }







