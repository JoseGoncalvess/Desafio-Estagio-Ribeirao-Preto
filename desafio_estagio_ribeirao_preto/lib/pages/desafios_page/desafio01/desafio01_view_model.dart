
import 'package:desafio_estagio_ribeirao_preto/pages/desafios_page/desafio01/desafio01.dart';
import 'package:flutter/material.dart';

abstract class Desafio01ViewModel extends State<Desafio01> {
//Dado a sequência de Fibonacci, onde se inicia por 0 e 1 e o próximo valor sempre será a soma dos 2 valores anteriores (exemplo: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34...), escreva um programa na linguagem que desejar onde, informado um número, ele calcule a sequência de Fibonacci e retorne uma mensagem avisando se o número informado pertence ou não a sequência.

// IMPORTANTE: Esse número pode ser informado através de qualquer entrada de sua preferência ou pode ser previamente definido no código;

  TextEditingController controler = TextEditingController();


  bool iscalc = false;
  String sequencia = "";
  String resultado = "";
  List<String> gerfibonacci(int n) {
    List<String> secFibo = [];
    int value1 = 0;
    int value2 = 1;
    int x;

    if (n < 2) {
      secFibo.add(n.toString());
      return secFibo;
    } else {
      for (int i = 2; i <= 30; i++) {
        x = value1 + value2;
        value1 = value2;
        value2 = x;
        secFibo.add(value2.toString());
      }
      return secFibo;
    }
  }

  Future<void> validatenumberlist(int n)async{

        String value = n.toString();
       List<String> secfi = gerfibonacci(n);
        if (!sequencia.contains(value)) {
          sequencia = secfi.toString();
          resultado = "O Numero $n  Não Consta na  Sequencia Abaixo";
            
        }else {
           sequencia = secfi.toString();
          resultado = "O Numero $n  Está Presente na  Sequencia Abaixo";
        }
    setState(() {
      iscalc = true;
    });
  }

  void reset(){
    setState(() {
      controler.text = "";
      iscalc = false;
    });
  }
}
