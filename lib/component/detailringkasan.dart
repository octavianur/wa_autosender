import 'package:flutter/material.dart';

class DetailRingkasan extends StatelessWidget {
  const DetailRingkasan({
    Key? key, required this.name, required this.harga, required this.desc, required this.ket,
  }) : super(key: key);

final String name;
final String harga;
final String desc;
final String ket;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SingleChildScrollView(
          child: Container(
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                              fontSize: 16, 
                              height: 1.5,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                  ],
                ),
                Column(
                  children: [
                  Text(desc, style: TextStyle(height: 2),),
                ],),
                Column(
                  children: [
                  Text(ket),
                ],),
              ],
            ),
          ),
        ),         
          Text(
            harga,
            style: TextStyle(
              fontSize: 16, 
              fontWeight: FontWeight.w600
          ),
        ),
      ],
    );
  }
}