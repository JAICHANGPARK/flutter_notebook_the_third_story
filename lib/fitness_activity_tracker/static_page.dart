import 'package:flutter/material.dart';


class StatisticsPage extends StatefulWidget {
  @override
  _StatisticsPageState createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
       children: <Widget>[
         SafeArea(
           top: true,
           left: true,
           right: true,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
               IconButton(
                 onPressed: (){},
                 icon: Icon(Icons.more_horiz),
               ),
               Text("Statistics"),
               IconButton(
                 icon: Icon(Icons.keyboard_arrow_down),
                 onPressed: (){
                   Navigator.of(context).pop();
                 },
               )
             ],
           ),
         ),
         Container()
       ],
     ),
    );
  }
}






















