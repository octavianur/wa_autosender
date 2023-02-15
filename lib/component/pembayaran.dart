import 'package:flutter/material.dart';

class Pembayaran extends StatelessWidget {
  const Pembayaran({
    Key? key, required this.image, required this.NamaBank, required this.NoRek, required this.Nama,
  }) : super(key: key);

  final String image;
  final String NamaBank;
  final String NoRek;
  final String Nama;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Image.asset(image),
              ],
            ),
            Container(
              width: 180,
              child: Column(
                children: [
                  Text(
                    NamaBank,
                    style: TextStyle(
                      fontSize: 16, 
                      color: Color(0xff6F7287), 
                      fontWeight: FontWeight.normal
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          NoRek,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                        Nama,
                        style: TextStyle(
                          fontSize: 16, 
                          color: Color(0xff6F7287), 
                          fontWeight: FontWeight.normal
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  OutlinedButton.icon(
                    onPressed: () {},
                    icon: Icon( // <-- Icon
                      Icons.copy_rounded,
                      color: Color(0xff6F7287),
                      size: 13.0
                      ),
                    label: Text(
                      'Salin', 
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff6F7287),
                      ),
                    ), // <-- Text
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}