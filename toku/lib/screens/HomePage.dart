import 'package:flutter/material.dart';
import 'package:toku/screens/ColorsPage.dart';
import 'package:toku/screens/FamilyPage.dart';
import 'package:toku/screens/NumbersPage.dart';
import 'package:toku/screens/pharses.dart';
import '../Components/cat1.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toku'),
        backgroundColor: const Color(0xffF875AA),
      ),
      backgroundColor: const Color(0xffFFF6F6),
      body: Column(
        children: [
          cat1(text : 'Numbers', 

          color: const Color(0xffF2BED1),


          onTap: () {

            Navigator.push(context , 
            MaterialPageRoute(builder: (context) {
              return const NumbersPage();
            }));
          },

           ),
          cat1(text : 'Family members' , 

          color: const Color(0xffFDCEDF),

          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return const FamilyPage();
            }));
          },

          ),
          cat1(text : 'Colors',
          color:  const Color(0xffF8E8EE),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return const ColorsPage();
            }));
          },
          
          ),
          cat1(text : 'Phrases',
           color: const Color(0xffF9F5F6),
           onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
                return PhrasesPage();
            }));
           },
           
           
           ),
           SizedBox(
             height: 160,
           ),
           SizedBox(
            height: 300
            ,
            child: Image.asset('assets/images/Dayflow - Buy Online.png') ,
            ),

        ],
      ),
    );
  }
}
