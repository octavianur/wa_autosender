import 'package:flutter/material.dart';

// var ischecked = [true, false, false];

class CardList extends StatefulWidget {
  const CardList({
    Key? key, required this.title, required this.description, required this.price,
  }) : super(key: key);

final String title;
final String description;
final String price;

  @override
  State<CardList> createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 200,
                        child: Text(
                         widget.title,
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 16,
                         ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        widget.description,
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        widget.price,
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
          ],
        ),    
      ),
    );
  }
}