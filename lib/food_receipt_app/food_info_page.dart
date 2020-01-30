import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class FoodInfoPage extends StatefulWidget {
  @override
  _FoodInfoPageState createState() => _FoodInfoPageState();
}

class _FoodInfoPageState extends State<FoodInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SlidingUpPanel(
        defaultPanelState: PanelState.OPEN,
        borderRadius: BorderRadius.circular(24),
        panel: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                image: DecorationImage(
                  image: NetworkImage("https://cdn.pixabay.com/photo/2015/11/02/20/27/taco-1018962__340.jpg"),
                  fit: BoxFit.cover
                )
              ),
            ),
          ),

        ],
        ),
        
      ),
    );
  }
}















