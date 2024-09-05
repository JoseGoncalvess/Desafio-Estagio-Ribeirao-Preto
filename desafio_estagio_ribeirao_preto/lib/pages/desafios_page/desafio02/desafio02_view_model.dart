
import 'package:desafio_estagio_ribeirao_preto/pages/desafios_page/desafio02/desafio02.dart';
import 'package:flutter/material.dart';

abstract class Desafio02ViewModel extends State<Desafio02> {
// 2) Escreva um programa que verifique, em uma string, a existência da letra ‘a’, seja maiúscula ou minúscula, além de informar a quantidade de vezes em que ela ocorre.

// IMPORTANTE: Essa string pode ser informada através de qualquer entrada de sua preferência ou pode ser previamente definida no código;

  TextEditingController controler = TextEditingController();


  bool isverific = false;
  String resultado = "";
Future<void> ocorrenciaInword(String palavra)async{
  String novapalavra = palavra.toLowerCase();
  int ocorrencia = 0;

  if (novapalavra.contains("a")) {
    while (novapalavra.contains('a')) {
    ocorrencia ++;
      novapalavra =  novapalavra.replaceFirst("a", '');
    }
    
    setState(() {
      resultado = "A palavra $palavra possuin $ocorrencia ocorrencia da letra 'A'";
      isverific = true;
    });
  }else{
      setState(() {
      resultado = "A palavra $palavra não possuin ocorrencia da letra 'A'";
      isverific = true;
    });
    }

}



  void reset(){
    setState(() {
      controler.text = "";
      isverific = false;
    });
  }
}
