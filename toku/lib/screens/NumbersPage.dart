import 'package:flutter/material.dart';
import 'package:toku/Components/cat2.dart';

import '../members/numberClass.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List <number> nums = const[
    number(
         //assets/images/numbers/number_one.png
     img: 'assets/images/numbers/number_one.png',
     en: 'One', 
     jp: 'ichi',
     sound: 'sounds/numbers/number_one_sound.mp3'
     ),
     number(
     img: 'assets/images/numbers/number_two.png',
     en: 'Two', 
     jp: 'Ni',
     sound: 'sounds/numbers/number_two_sound.mp3'
     ),
     number(
     img: 'assets/images/numbers/number_three.png', 
     en: 'Three', 
     jp: 'San' ,
     sound : 'sounds/numbers/number_three_sound.mp3'
     ),
     number(
     img: 'assets/images/numbers/number_four.png',
     en: 'Four', 
     jp: 'Shi' ,
     sound: 'sounds/numbers/number_four_sound.mp3'
     ),
     number(
     img: 'assets/images/numbers/number_five.png',
     en: 'Five', 
     jp: 'Go' ,
     sound: 'sounds/numbers/number_five_sound.mp3'
     ),
     number(
     img: 'assets/images/numbers/number_six.png',
     en: 'Six', 
     jp: 'Roku' ,
     sound: 'sounds/numbers/number_six_sound.mp3'
     ),
     number(
     img: 'assets/images/numbers/number_seven.png',
     en: 'Seven', 
     jp: 'Sebun' ,
     sound: 'sounds/numbers/number_seven_sound.mp3'
     ),
     number(
     img: 'assets/images/numbers/number_eight.png',
     en: 'Eight', 
     jp: 'Hachi' ,
     sound: 'sounds/numbers/number_eight_sound.mp3'
     ),
      number(
     img: 'assets/images/numbers/number_nine.png',
     en: 'Nine', 
     jp: 'Kyū' ,
     sound: 'sounds/numbers/number_nine_sound.mp3'
     ),
      number(
     img: 'assets/images/numbers/number_ten.png',
     en: 'Ten', 
     jp: 'Jū' ,
     sound: 'sounds/numbers/number_ten_sound.mp3'
     ),
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffF875AA),
          title: const Text('Numbers'),
        ),
        backgroundColor:  const Color(0xffFDCEDF),
        body: ListView.builder(
           itemCount: nums.length,
           itemBuilder: (context , cnt) {
            return cat2(num: nums[cnt]);
           },
          ),
      ),
    );
  }
}


