import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key, 
    required this.title, 
   required this.controller,

  }) : super(key: key);

final String title;
final Function controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: 50,
        width:double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff206CFF),),
            child: Text(title, style: TextStyle(fontSize: 18),
          ),
          onPressed: (){},
        ),
      ),
    );
  }
}