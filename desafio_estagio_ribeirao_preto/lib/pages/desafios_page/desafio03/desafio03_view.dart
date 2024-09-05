
import 'package:desafio_estagio_ribeirao_preto/pages/desafios_page/desafio03/Desafio03_view_model.dart';
import 'package:flutter/material.dart';


class Desafio03View extends Desafio03ViewModel {
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
                    "Valor da avriavel soma So probelma abaixo",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * 0.02,
                        color: Colors.black)),
                        Text(
                    "int INDICE = 12, SOMA = 0, K = 1; enquanto K < INDICE faça { K = K + 1; SOMA = SOMA + K; } imprimir(SOMA);",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: MediaQuery.of(context).size.width * 0.02,
                        color: Colors.black)),
                        
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: const BoxDecoration(color:  Color(0xD2A33806)),
                    child: TextButton(
                        onPressed: () =>
                         valorsoma()
                        ,
                        child: const Text(
                          "Mostra valor!",
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
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(resultado,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.02,
                                      color: Colors.black)),
                            ),
                          ],
                        ),
                      )
              ],
            )),
      ),
    );
  }
}
