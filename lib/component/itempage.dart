import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  ItemPage({
    Key? key,
    required this.page,
  })  : super(key: key);

  final String page;

@override
Widget build(BuildContext context){
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        height: 25,
        // width: 100,
        child: Text(
            page  , 
          style: TextStyle(
            color: Color(0xff206CFF),
            fontSize: 15,
            fontWeight: FontWeight.bold),),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xffE2F0FF),
          ),
        ),
      ],
    );
  }
}