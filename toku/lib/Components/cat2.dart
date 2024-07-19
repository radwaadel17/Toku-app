import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/members/numberClass.dart';

class cat2 extends StatelessWidget {
  const cat2({super.key , required this.num});
  final number num ;
  @override
  Widget build(BuildContext context) {
    return Container(
      
          color: const Color(0xffF2BED1),
          height: 100,
          child: Row(
            children: [
              Container(
                height: 100,
                color: Colors.white,
                child: Image.asset(num.img),
              ),
              Column(
                
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      num.en,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 43, 22, 29),
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      num.jp,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 43, 22, 29),
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(
                flex: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Material(
                  clipBehavior: Clip.hardEdge,
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(50),
                  child: IconButton(
                    splashColor: const Color(0xffF875AA),
                    onPressed:(){
                        final player = AudioPlayer();
                        player.play(AssetSource(num.sound));
                    } ,
                    icon: const Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  ),
                  ),
                )
              ),
            ],
          ),
        );
  }
}