import 'package:flutter/material.dart';
import 'package:toku/Components/cat3.dart';
import 'package:toku/members/familyClass.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});
  final List <FamilyClass > FamilyList = const[

    FamilyClass(
     en_name: 'Father' ,

     img: 'assets/images/family/family_father.png' ,

     jp_name: '父親',

     sound: 'sounds/family/father.wav'

     ),

     FamilyClass(
     en_name: 'Mother' ,

     img: 'assets/images/family/family_mother.png' ,

     jp_name: '母親',

     sound: 'sounds/family/mother.wav'

     ),
     
     FamilyClass(
     en_name: 'Grandfather' ,

     img: 'assets/images/family/family_grandfather.png' ,

     jp_name: '祖父',

     sound: 'sounds/family/grand father.wav'

     ),
     FamilyClass(
     en_name: 'Grandmother' ,

     img: 'assets/images/family/family_grandmother.png' ,

     jp_name: '祖母',

     sound: 'sounds/family/grand mother.wav'

     ),
      FamilyClass(
     en_name: 'Daughter' ,

     img: 'assets/images/family/family_daughter.png' ,

     jp_name: '娘',

     sound: 'sounds/family/daughter.wav'

     ),
      FamilyClass(
     en_name: 'Son' ,

     img: 'assets/images/family/family_son.png' ,

     jp_name: '息子',

     sound: 'sounds/family/son.wav'

     ),
     FamilyClass(
     en_name: 'Older brother' ,

     img: 'assets/images/family/family_older_brother.png' ,

     jp_name: '兄',

     sound: 'sounds/family/older bother.wav',

     ),
     FamilyClass(
     en_name: 'Older sister' ,

     img: 'assets/images/family/family_older_sister.png' ,

     jp_name: '兄',

     sound: 'sounds/family/older sister.wav',

     ),
     FamilyClass(
     en_name: 'Younger sister' ,

     img: 'assets/images/family/family_younger_sister.png' ,

     jp_name: '妹',

     sound: 'sounds/family/younger sister.wav',

     ),
     FamilyClass(
     en_name: 'Younger brother' ,

     img: 'assets/images/family/family_younger_brother.png' ,

     jp_name: '兄',

     sound: 'sounds/family/younger brohter.wav',

     ),
     


  ]; 
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Family members' ,
          ),
          backgroundColor: const Color(0xffF875AA),
        ),
        backgroundColor: const Color(0xffFDCEDF),
        body: ListView.builder(
          itemCount: FamilyList.length,
          itemBuilder: (context , cnt){
           return cat3(obj: FamilyList[cnt]);
          },
        ),
      ),
    );
  }
}