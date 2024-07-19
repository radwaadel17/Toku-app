import 'package:flutter/material.dart';
import 'package:toku/Components/cat5.dart';
import 'package:toku/members/phrasesClass.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<phrasesClass> phrasesList = const [
   phrasesClass(
      en_name: 'Are you coming ?',
          // assets\images\colors\color_red.png

      jp_name: 'Kimasu ka ?',

      sound: 'sounds/phrases/are_you_coming.wav'
    ),

     phrasesClass(
      en_name: "Don't forget to subscribe",
          //assets\images\colors\color_black.png

      jp_name: 'Kōdoku o o wasurenaku',

      sound: 'sounds/phrases/dont_forget_to_subscribe.wav'
    //assets\sounds\colors\black.wav
    ),
    phrasesClass(
      en_name: "How are you feeling ?",
          //assets\images\colors\color_black.png

      jp_name: 'Go kibun wa ikagadesu ka?',

      sound: 'sounds/phrases/how_are_you_feeling.wav'
    //assets\sounds\colors\black.wav
    ),
    phrasesClass(
      en_name: "I love anime",
          //assets\images\colors\color_black.png

      jp_name: 'Watashi wa anime ga daisukidesu',

      sound: 'sounds/phrases/i_love_anime.wav'
    //assets\sounds\colors\black.wav
    ),

     phrasesClass(
      en_name: "I love programming",
          //assets\images\colors\color_black.png

      jp_name: 'Watashi wa puroguramingu ga daisukidesu',

      sound: 'sounds/phrases/i_love_programming.wav'
    //assets\sounds\colors\black.wav
    ),

    phrasesClass(
      en_name: "Programming is very easy",
          //assets\images\colors\color_black.png

      jp_name: 'Puroguramingu wa totemo kantandesu',

      sound: 'sounds/phrases/programming_is_easy.wav'
    //assets\sounds\colors\black.wav
    ),
      phrasesClass(
      en_name: "What is your name ?",
          //assets\images\colors\color_black.png

      jp_name: 'Anata no namae wa nanidesu ka?',

      sound: 'sounds/phrases/what_is_your_name.wav'
    //assets\sounds\colors\black.wav
    ),
      phrasesClass(
      en_name: "Where are you going ?",
          //assets\images\colors\color_black.png

      jp_name: 'Doko ni iku no?',

      sound: 'sounds/phrases/where_are_you_going.wav'
    //assets\sounds\colors\black.wav
    ),

    phrasesClass(
      en_name: " Yes i'm coming ! ",
          //assets\images\colors\color_black.png

      jp_name: 'Hai, ikimasu yo!',

      sound: 'sounds/phrases/yes_im_coming.wav'
    //assets\sounds\colors\black.wav
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
          itemCount: phrasesList.length,
          itemBuilder: (context , cnt) {
            return cat5(obj: phrasesList[cnt]);
          }
       ),
      ),
    );
  }
}