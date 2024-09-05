import 'package:flutter/material.dart';
import 'desafio02_view_model.dart';

class Desafio02View extends Desafio02ViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Verificar e contar 'A'",
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
                    "Degite Abaixo a Palavra que Deseja Verificar as Ocorrencias da letra 'A'!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: MediaQuery.of(context).size.width * 0.02,
                        color: Colors.black)),
                SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.5,
                    height: MediaQuery.sizeOf(context).height * 0.1,
                    child: TextField(
                      controller: controler,
                      keyboardType: TextInputType.text,
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: const BoxDecoration(color:  Color(0xD2A33806)),
                    child: TextButton(
                        onPressed: () {
                          ocorrenciaInword(controler.text);
                        },
                        child: const Text(
                          "Verificar!",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                  ),
                ),
                isverific == false
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
