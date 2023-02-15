import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var ischecked = [true, false, false];

class MyRadioButton extends StatefulWidget {
  const MyRadioButton ({Key? key}) : super(key: key);

  @override
  State<MyRadioButton> createState() => _MyRadioButtonState();
}

class _MyRadioButtonState extends State<MyRadioButton>{
  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
          child: InkWell(
            onTap: () {
              setState(() {
                ischecked[0]=true;
                ischecked[1]=false;
                ischecked[2]=false;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: ischecked[0]?Color(0xff206CFF):Colors.transparent,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Color(0xffC8D0DD),
                  width: 1,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 250,
                    child: Text(
                      "Kuota Hemat",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Kuota 4.000 pesan / 30 hari",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    "Rp 50.000",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                      color: Color(0xff206CFF),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
         Padding(
          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
          child: InkWell(
            onTap: () {
              setState(() {
                ischecked[1]=true;
                ischecked[0]=false;
                ischecked[2]=false;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: ischecked[0]?Color(0xff206CFF):Colors.transparent,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Color(0xffC8D0DD),
                  width: 1,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 250,
                    child: Text(
                      "Paket orang kaya kaya kaya",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Kuota 1.000 pesan / 30 hari",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    "Rp 500.000",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                      color: Color(0xff206CFF),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
         Padding(
          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
          child: InkWell(
            onTap: () {
              setState(() {
                ischecked[0]=true;
                ischecked[1]=false;
                ischecked[2]=false;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: ischecked[0]?Colors.white:Colors.transparent,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Color(0xffC8D0DD),
                  width: 1,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 250,
                            child: Text(
                              "Paket dengan teks yang sangat puanjang sekali sepanjang panjang ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Kuota 10.000 pesan / 365 hari",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            "Rp 100.000",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 13,
                              color: Color(0xff206CFF),
                            ),
                          ), 
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Container(
                          width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: ischecked[0]?const Color(0xff206CFF): Colors.transparent,
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: Colors.black54,
                            width: 1
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Flexible(
                  //   child:Container(
                  //       width: 20,
                  //       height: 20,
                  //       decoration: BoxDecoration(
                  //         color: ischecked[0]?const Color(0xff206CFF): Colors.transparent,
                  //         borderRadius: BorderRadius.circular(25),
                  //         border: Border.all(
                  //           color: Colors.black54,
                  //           width: 1
                  //        ),
                  //       ),
                  //     ),
                  // ), 
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}