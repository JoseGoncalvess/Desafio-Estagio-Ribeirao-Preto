import 'package:desafio_estagio_ribeirao_preto/pages/desafios_page/desafio01/desafio01_view_model.dart';
import 'package:flutter/material.dart';

class Desafio01View extends Desafio01ViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Sequencia Fibonacci",
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
                    "Digite o número abaixo que deseja verificar se contem na sequncia de fibonacci !",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: MediaQuery.of(context).size.width * 0.02,
                        color: Colors.black)),
                Container(
                    width: MediaQuery.sizeOf(context).width * 0.5,
                    height: MediaQuery.sizeOf(context).height * 0.1,
                    child: TextField(
                      controller: controler,
                      keyboardType: TextInputType.number,
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(color: const Color(0xD2A33806)),
                    child: TextButton(
                        onPressed: () {
                          validatenumberlist(int.parse(controler.text));
                        },
                        child: const Text(
                          "Verificar!",
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
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(sequencia),
                            )
                          ],
                        ),
                      )
              ],
            )),
      ),
    );
  }
}
