import 'package:flutter/material.dart';
import 'package:notebook_the_third_story/food_receipt_app/main_page.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 0,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://cdn.pixabay.com/photo/2017/09/28/18/13/bread-2796393_960_720.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6),
                  BlendMode.darken)
                )
              ),
            ),
          ),
          Positioned(
            left: 24,
            top: 180,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Welcome", style: TextStyle(
                  color: Colors.white,
                  fontSize: 24
                ),),
                Text("to cook book", style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24
                ),)
              ],
            ),
          ),
          Positioned(
            left: 24,
            right: 24,
            bottom: 24,
            child: InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_)=>FoodMainPage()
                ));
              },
              child: Container(

                height: 64,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Text("Start now",style: TextStyle(
                    color: Colors.black,
                    fontSize: 20
                  ),),
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}


















