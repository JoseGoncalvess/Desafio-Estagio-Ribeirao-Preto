
import 'package:desafio_estagio_ribeirao_preto/pages/desafios_page/desafio05/Desafio05.dart';
import 'package:flutter/material.dart';




abstract class Desafio05ViewModel extends State<Desafio05> {
  bool  iscalc = false;
  String resultado ="";




  Future<void> interruptores()async{
    setState(() {
      resultado = """Pensado de maneira ficarás aproveitando o que ja se tem em mão a melhor maneira de resolver isso seria \n
      1- Ligue primeiro interruptor por um certo tempo depois desligue.\n
      2 - Ligue o segundo interruptor e vá até a sala.\n
      Lá iria ter a seguinte situação a luz que estivesse apagada mais quente seria a do 1º interruptor, A ligada pertence ao 2º e apagada ao Terceiro \m
      
      Assim com o mínimo de idas se consegue identificar fazendo uso do calor emitido pelas lâmpadas.
""";
      iscalc = true;
    });
  }




  
  void reset(){
      setState(() {
          iscalc = true;
        });
  }


    }







