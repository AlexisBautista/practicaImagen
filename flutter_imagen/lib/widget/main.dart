import 'package:flutter/material.dart';
import 'package:flutter_imagen/controller/cambio_imagen_controller.dart';
import 'package:flutter_imagen/pages/cambio_imagen_page.dart';
import 'package:get/get.dart';

void main() {
  Get.lazyPut(() => CambioImagenController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cambio imagen',
        initialRoute: '/cambio/imagen',
        routes: {'/cambio/imagen': (context) => const CambioImagenPage()});
  }
}
