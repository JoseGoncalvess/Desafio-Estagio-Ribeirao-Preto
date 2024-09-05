
import 'package:desafio_estagio_ribeirao_preto/pages/desafios_page/desafio05/desafio05_view_model.dart';
import 'package:flutter/material.dart';


class Desafio05View extends Desafio05ViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Valor da Soma",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.width * 0.015,
                color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(210, 197, 113, 3),
          actions: [IconButton(onPressed: () => reset(), icon: Icon(Icons.refresh))],),
      body: Center(
        child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    "Dados o desafio abaixo:",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * 0.02,
                        color: Colors.black)),
                        Text(
                    """Você está em uma sala com três interruptores, cada um conectado a uma lâmpada em salas diferentes. Você não pode ver as lâmpadas da sala em que está, mas pode ligar e desligar os interruptores quantas vezes quiser. Seu objetivo é descobrir qual interruptor controla qual lâmpada. Como você faria para descobrir, usando apenas duas idas até uma das salas das lâmpadas, qual interruptor controla cada lâmpada?
        """,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: MediaQuery.of(context).size.width * 0.01,
                        color: Colors.black)),
                        
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: const BoxDecoration(color:  Color(0xD2A33806)),
                    child: TextButton(
                        onPressed: () =>{
                          interruptores()
                        }
                        ,
                        child: const Text(
                          "Mostra Resolução",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                  ),
                ),
                iscalc == false
                    ? Container()
                    : AnimatedContainer(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(210, 197, 113, 3),
                            borderRadius: BorderRadius.circular(8)),
                        duration: const Duration(seconds: 2),
                        curve: Curves.decelerate,
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: MediaQuery.of(context).size.height * 0.5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(resultado, style: TextStyle(fontWeight: FontWeight.w300, fontSize: MediaQuery.sizeOf(context).height * 0.027),),
                        )
                      )
              ],
            )),
      ),
    );
  }
}
