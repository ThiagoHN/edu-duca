import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ExMatematica extends StatefulWidget {
  static const routeName = 'ex_matematica';



  @override
  _ExMatematicaState createState() => _ExMatematicaState();
}

class _ExMatematicaState extends State<ExMatematica> {
  final GlobalKey<FormState> globalKey = GlobalKey();

  static const availableColors = [
    Colors.red,
    Colors.amber,
    Colors.purple,
    Colors.blue,
    Colors.amber,
    Colors.blueGrey,
    Colors.lightBlue,
    Colors.deepOrange,
    Colors.deepPurple,
    Colors.green,
    Colors.indigo
  ];

  @override
  Widget build(BuildContext context) {
    final device_size = MediaQuery.of(context).size;

    List<String> numeros = [
      '0',
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '10',
      '11',
      '12',
      '13',
      '14',
      '15',
      '16',
      '17',
      '18',
      '19',
      '20',
    ];
    List<String> numeros_escritos = [
      'Zero',
      'Um',
      'Dois',
      'Três',
      'Quatro',
      'Cinco',
      'Seis',
      'Sete',
      'Oito',
      'Nove',
      'Dez',
      'Onze',
      'Doze',
      'Treze',
      'Quatorze',
      'Quinze',
      'Dezesseis',
      'Dezessete',
      'Dezoito',
      'Dezenove',
      'Vinte',
    ];

    List<Widget> carroselItens = [];

    for (int i = 0; i < numeros.length; i++) {
      carroselItens.add(Container(
          width: device_size.width * 0.7,

          decoration: BoxDecoration(
            color: availableColors[i%availableColors.length],
              border: Border.all(
                color: Colors.blue,
                width: 5,
              ),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Text(
                numeros[i],
                style: TextStyle(fontSize: 150, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 120),

              Text(
                numeros_escritos[i],
                style: TextStyle(fontSize: 50),
              
              )
            ],
          )));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('De 0 a 20'),
      ),
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
          height: device_size.height * 0.5,          
          ),
          items: carroselItens,
        ),
      ),
    );
  }
}
