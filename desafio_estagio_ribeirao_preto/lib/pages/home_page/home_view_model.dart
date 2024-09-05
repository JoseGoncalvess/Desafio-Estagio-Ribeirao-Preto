import 'package:desafio_estagio_ribeirao_preto/pages/desafios_page/desafio01/desafio01.dart';
import 'package:desafio_estagio_ribeirao_preto/pages/desafios_page/desafio02/desafio02.dart';
import 'package:desafio_estagio_ribeirao_preto/pages/desafios_page/desafio03/desafio03.dart';
import 'package:desafio_estagio_ribeirao_preto/pages/desafios_page/desafio04/desafio04.dart';
import 'package:desafio_estagio_ribeirao_preto/pages/desafios_page/desafio05/Desafio05.dart';
import 'package:desafio_estagio_ribeirao_preto/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';


abstract class HomeViewModel extends State<HomePage> {
List<String> desafio =["Desafio 1 - Seqeuncia de finonacci","Desafio 2 - Verificar e contar 'A'","Desafio 3 - Valor da Soma","Desafio 4 - Próximo elemento","Desafio 4 - Interruptor"];

List<Widget> pages = [const Desafio01(),const Desafio02(),const Desafio03(),const Desafio04(),Desafio05()];

}