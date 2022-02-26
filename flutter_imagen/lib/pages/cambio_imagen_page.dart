import 'package:flutter_imagen/controller/cambio_imagen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CambioImagenPage extends StatelessWidget {
  const CambioImagenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cambio de imagen'),
      ),
      body: Center(
        child: GetBuilder<CambioImagenController>(builder: (_) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  splashColor: Colors.amber,
                  iconSize: 80,
                  onPressed: () {
                    _.cambioImgLeft();
                  },
                  icon: const Icon(Icons.arrow_back)),
              CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(_.urlImg),
              ),
              IconButton(
                  splashColor: Colors.purple,
                  iconSize: 80,
                  onPressed: () {
                    _.cambioImgRight();
                  },
                  icon: const Icon(Icons.arrow_forward))
            ],
          );
        }),
      ),
    );
  }
}
