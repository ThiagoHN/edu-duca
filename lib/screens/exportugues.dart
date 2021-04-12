import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ExPortugues extends StatefulWidget {
  static const routeName = 'ex_portugues';

  @override
  _ExPortuguesState createState() => _ExPortuguesState();
}

class _ExPortuguesState extends State<ExPortugues> {
  int current_image_index = 0;



  @override
  Widget build(BuildContext context) {
    final device_size = MediaQuery.of(context).size;

    List<String> letras = [
      'A',
      'B',
      'C',
      'D',
      'E',
      'F',
      'G',
      'H',
      'I',
      'J',
      'K',
      'L',
      'M',
      'N',
      'O',
      'P',
      'Q',
      'R',
      'S',
      'T',
      'U',
      'V',
      'W',
      'X',
      'Y',
      'Z'
    ];
    List<String> imagens = [
      'https://imagensemoldes.com.br/wp-content/uploads/2020/05/Desenho-de-Avi%C3%A3o-PNG-1024x584.png',
      'https://www.pinclipart.com/picdir/big/17-174336_http-kammytroquinhas-minus-com-i-zofkaul4ymi-desenho-bola.png',
      'https://freepikpsd.com/wp-content/uploads/2019/10/desenho-casa-png-Transparent-Images.png',
      'https://ntmblumenau.com.br/atvinfo2017/EBM%20JuliaS/Pre/Lportugues/Vogais/dado-hi.png',
      'https://images.vexels.com/media/users/3/140127/isolated/preview/63c85015331e4798842f47ffbe7189f9-desenho-de-elefante-by-vexels.png',
      'https://i.pinimg.com/originals/21/20/58/212058c9685f82f322c03daea3ed6863.png',      
      'https://i.pinimg.com/originals/22/a0/e6/22a0e6129d17edc735b2f5d54f158ed6.png', 
      'https://images.vexels.com/media/users/3/204728/isolated/preview/bb89b94eb1e6b30f5a0764bae0ba5a5b-hipop-oacute-tamo-fofo-animal-plano-by-vexels.png', 
      'https://images.vexels.com/media/users/3/192766/isolated/preview/4f88f359135b09c5e43ae3a420b6c7f1-ilustra-ccedil-atilde-o-da-ilha-da-palmeira-by-vexels.png', 
      'https://i.pinimg.com/originals/00/b2/76/00b276e8070e17b8d716eed1b31f54b4.png', 
      'https://images.emojiterra.com/google/android-oreo/512px/1f95d.png', 
      'https://freepikpsd.com/wp-content/uploads/2019/10/desenho-leao-png-Transparent-Images.png', 
      'https://images.emojiterra.com/google/android-11/512px/1f412.png', 
      'https://imagensemoldes.com.br/wp-content/uploads/2020/05/Cartoon-Navio-PNG.png', 
      'https://www.pikpng.com/pngl/b/325-3251810_ovejita-en-fondo-celeste-y-verde-desenho-de.png', 
      'https://images.vexels.com/media/users/3/220668/isolated/preview/cd087e5b54a24f0cd84aa90692938d97-ilustra-ccedil-atilde-o-de-pato-de-borracha-amarelo-pato-de-borracha-by-vexels.png', 
      'https://celulartop.com.br/wp-content/uploads/2019/12/queijo.png', 
      'https://i.pinimg.com/originals/d7/92/dd/d792ddb4fc43b621228a8a2484b1e9e1.png', 
      'https://static.wikia.nocookie.net/o-segredo-alem-do-jardim/images/7/73/FrogJason1.png/revision/latest?cb=20150724234407&path-prefix=pt-br', 
      'https://images.vexels.com/media/users/3/149493/isolated/preview/6147f2f7409e89ba67ed69557accedde-desenho-de-t-ecirc-nis-de-basquete-by-vexels.png', 
      'https://cdn-0.imagensemoldes.com.br/wp-content/uploads/2018/07/Imagem-de-Frutas-Uva-Roxa-5-PNG.png', 
      'https://images.vexels.com/media/users/3/145604/isolated/preview/a9f4f0e6742ac9d31c89364ce54bf3fd-desenho-de-vaca-pastando-by-vexels.png', 
      'https://i.pinimg.com/originals/77/16/b8/7716b8d1b0bb205d36ecff204c9a16da.png', 
      'https://imagensemoldes.com.br/wp-content/uploads/2020/05/Ilustra%C3%A7%C3%A3o-Xerife-Woody-Toy-Story-PNG.png',
      'https://www.casalila.com.br/wp-content/themes/casalila/img/yoga.png',
      'https://i.pinimg.com/originals/b8/e1/e1/b8e1e153edac6cb3b2f8f2e7a27e17a5.png'
    ];

    List<String> palavras = [
      'Avião',
      'Bola',
      'Casa',
      'Dado',
      'Elefante',
      'Foca',
      'Girafa',
      'Hipopótamo',
      'Ilha',
      'Jacaré',
      'Kiwi',
      'Leão',
      'Macaco',
      'Návio',
      'Ovelha',
      'Pato',
      'Queijo',
      'Robô',
      'Sapo',
      'Tênis',
      'Uva',
      'Vaca',
      'WindSurf',
      'Xerife',
      'Yoga',
      'Zebra'
    ];
    

    List<Widget> carroselItens = [];

    for (int i = 0; i < letras.length; i++) {
      carroselItens.add(Container(
          width: device_size.width * 0.7,

          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
                width: 5,
              ),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Text(
                letras[i],
                style: TextStyle(fontSize: 75, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 420),

              Text(
                palavras[i],
                style: TextStyle(fontSize: 40),
              
              )
            ],
          )));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Alfabeto'),
      ),
      body: Center(
        child: Stack(
          children: [
            CarouselSlider(
              options: CarouselOptions(
              height: device_size.height * 0.7, 
              onPageChanged: (index, reason) {setState(() {
                current_image_index = index;
              });},
              ),
              items: carroselItens,
            ),
              Positioned(
                bottom: 180,
                left: 100,
                child: Container(
                  width: 200,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 150),
                    child: Image.network(imagens[current_image_index])
                    ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
