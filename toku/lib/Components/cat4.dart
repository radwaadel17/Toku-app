import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/members/colorsClass.dart';

class cat4 extends StatelessWidget {
  const cat4({super.key , required this.obj});
  final ColorClass  obj ;
  @override
  Widget build(BuildContext context) {
    return Container(
              height: 100,
              color: const Color.fromARGB(255, 255, 216, 229),
              child: Row(
                children: [

                  Container(
                    color : const Color.fromARGB(255, 248, 229, 229) , 
                    child: Image.asset(obj.img),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [

                        Padding(
                          padding: const EdgeInsets.only(left : 10),
                          child: Text(obj.en_name,
                          style: const TextStyle(
                            fontSize: 20 , 
                            color: Color.fromARGB(255, 43, 22, 29),
                          ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            obj.jp_name, 
                            style: const TextStyle(
                              color: Color.fromARGB(255, 43, 22, 29), 
                              fontSize:  20 , 
                            ),
                          ),
                        ), 
                      ],
                    ),
                    const Spacer(
                     flex:  1 ,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Material(
                      clipBehavior: Clip.hardEdge,
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(50),
                        child: IconButton(
                        onPressed: () {
                          final player = AudioPlayer();
                          player.play(AssetSource(obj.sound));
                        },
                         splashColor: const Color(0xffF875AA),
                        icon: const Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                        ),
                                        ),
                      ),
                    ),
                ],
              ),
            );
  }
}