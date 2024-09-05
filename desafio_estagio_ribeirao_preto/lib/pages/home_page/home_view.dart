
import 'package:desafio_estagio_ribeirao_preto/pages/home_page/home_view_model.dart';
import 'package:flutter/material.dart';

import '../../widgets/desafio_card.dart';

class HomeView  extends HomeViewModel{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text("Painel de Desafios", style: TextStyle(fontWeight: FontWeight.bold, fontSize: MediaQuery.of(context).size.height*0.04, color: Colors.white),),
      centerTitle: true,backgroundColor:const Color.fromARGB(210, 197, 113, 3)
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width * 0.6,
          height: MediaQuery.of(context).size.height ,
          child: GridView.count(
            scrollDirection: Axis.vertical,
          crossAxisCount: 2,
          mainAxisSpacing: 4,
          children: List.generate(5, (index) {
            return DesafioCard(titledesafio: desafio[index], page: pages[index],);
          },
                  ))
        ),
      ),
    );
  }
  
}