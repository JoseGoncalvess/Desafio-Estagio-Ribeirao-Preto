import 'package:flutter/material.dart';

class DesafioCard extends StatefulWidget {
  final String titledesafio;
  final Widget page;

  const DesafioCard({ super.key, required this.titledesafio, required this.page });

  @override
  State<DesafioCard> createState() => _DesafioCardState();
}

class _DesafioCardState extends State<DesafioCard> {

   @override
   Widget build(BuildContext context) {
       return GestureDetector(
        onTap: () {
          Navigator.push(context,MaterialPageRoute(builder: (context) => widget.page,));
        },
         child: Container(
          decoration: BoxDecoration(color: const Color(0xD2A33806),
          borderRadius: BorderRadius.circular(12)),
          margin: const EdgeInsets.all(10),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.reset_tv_rounded,size:  MediaQuery.of(context).size.height* 0.1 ,color: Colors.white,),Text(widget.titledesafio,style: TextStyle(fontWeight: FontWeight.bold, fontSize: MediaQuery.of(context).size.width*0.015, color: Colors.white))],
          )
              ),
       );
  }
}