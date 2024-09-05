
import 'package:flutter/material.dart';
import 'desafio04_view_model.dart';


class Desafio04View extends Desafio04ViewModel {
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
                    "Dados as sequencias abaixo:",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * 0.02,
                        color: Colors.black)),
                        Text(
                    """Descubra a lógica e complete o próximo elemento: 
        a) 1, 3, 5, 7, ___ 
        b) 2, 4, 8, 16, 32, 64, ____ 
        c) 0, 1, 4, 9, 16, 25, 36, ____ 
        d) 4, 16, 36, 64, ____ 
        e) 1, 1, 2, 3, 5, 8, ____ 
        f) 2,10, 12, 16, 17, 18, 19, ____
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
                          mostralogic()
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: respostas.map((e) =>                             Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(e,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.01,
                                      color: Colors.black)),
                            ),).toList(),
                        ),
                      )
              ],
            )),
      ),
    );
  }
}
