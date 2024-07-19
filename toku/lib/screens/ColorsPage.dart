import 'package:flutter/material.dart';
import 'package:toku/Components/cat4.dart';
import 'package:toku/members/colorsClass.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<ColorClass> colorList = const [

    ColorClass(
      en_name: 'Red',
          // assets\images\colors\color_red.png
      img: 'assets/images/colors/color_red.png',

      jp_name: 'Aka',

      sound: 'sounds/colors/red.wav'
    ),

     ColorClass(
      en_name: 'Black',
          //assets\images\colors\color_black.png
      img: 'assets/images/colors/color_black.png',

      jp_name: 'Kuro',

      sound: 'sounds/colors/black.wav'
    //assets\sounds\colors\black.wav
    ),

    ColorClass(
      en_name: 'Brown',
           //assets\images\colors\color_brown.png
      img: 'assets/images/colors/color_brown.png',

      jp_name: 'Chairo',

      sound: 'sounds/colors/brown.wav'
    ),

     ColorClass(
      en_name: 'Dusty',
            //assets\images\colors\color_dusty_yellow.png
      img: 'assets/images/colors/color_dusty_yellow.png',

      jp_name: 'Hokori ppoi',

      sound: 'sounds/colors/dusty.wav'
    ),
     ColorClass(
      en_name: 'Green',
       //assets\images\colors\color_green.png
      img: 'assets/images/colors/color_green.png',

      jp_name: 'Midori',

      sound: 'sounds/colors/green.wav'
    ),
     ColorClass(
      en_name: 'White',
           //assets\images\colors\color_white.png
      img: 'assets/images/colors/color_white.png',

      jp_name: 'Shiro',

      sound: 'sounds/colors/white.wav'
    ),
     ColorClass(
      en_name: 'Yellow',
         //assets\images\colors\yellow.png
      img: 'assets/images/colors/yellow.png',

      jp_name: 'Kiiro',

      sound: 'sounds/colors/yellow.wav'
    ),


  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Colors' ,
          ),
          backgroundColor: const Color(0xffF875AA),
          
        ),
        body: ListView.builder(
          itemCount: colorList.length,
          itemBuilder: (context , cnt) {
           return cat4(obj: colorList[cnt]);
          }
       ),
      ),
    );
  }
}