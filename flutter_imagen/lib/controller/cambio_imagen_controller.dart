import 'package:get/get.dart';

class CambioImagenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    urlImg = lista[0];
  }

  int indexUrlImg = 0;
  List<String> lista = [
    'https://i0.wp.com/hipertextual.com/wp-content/uploads/2021/09/caballeros-del-zodiaco.jpg?fit=2073%2C1402&ssl=1',
    'https://as01.epimg.net/meristation/imagenes/2021/09/22/noticias/1632306045_959308_1632306082_noticia_normal.jpg',
    'https://images-na.ssl-images-amazon.com/images/S/pv-target-images/584b936f92606c93190e39ebe54e56bbcdf4dc7c7ab0b1c4fc2c98e73d48f617._RI_V_TTW_.jpg',
    'https://imagenes.20minutos.es/files/og_thumbnail/uploads/imagenes/2021/09/22/los-caballeros-del-zodiaco.jpeg',
    'https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_PokemonLegendsArceus_ES_image1600w.jpg',
  ];
  String urlImg = '';

  void cambioImgRight() {
    if (indexUrlImg == 3) {
      indexUrlImg = 0;
    } else {
      indexUrlImg++;
    }
    urlImg = lista[indexUrlImg];

    update();
  }

  void cambioImgLeft() {
    if (indexUrlImg == 0) {
      indexUrlImg = 4;
    } else {
      indexUrlImg--;
    }
    urlImg = lista[indexUrlImg];
    update();
  }
}
