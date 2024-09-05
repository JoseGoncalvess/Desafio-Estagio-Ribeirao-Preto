import 'package:desafio_estagio_ribeirao_preto/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
    theme: ThemeData.light(useMaterial3: true),
      home:const  HomePage()
    );
  }
}
