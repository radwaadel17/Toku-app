import 'package:flutter/material.dart';

// ignore: camel_case_types
class cat1 extends StatelessWidget {
  cat1({super.key, this.text, this.color , this.onTap}) ;
  String? text;
  Color? color;
  Function() ?onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            text!,
            style: const TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 43, 22, 29),
            ),
          ),
        ),
      ),
    );
  }
}
