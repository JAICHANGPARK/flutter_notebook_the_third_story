import 'package:flutter/material.dart';


class FoodCateringApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://cdn.pixabay.com/photo/2017/08/05/12/32/flat-lay-2583212_960_720.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3),
                  BlendMode.darken)
                )
              ),
            )

          ),
          Positioned(
            left: 16,
            right: 16,
            bottom: 24,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Food App Concept",style: TextStyle(
                  color: Colors.white,
                ),),
                SizedBox(height: 12,),
                Text("Welcome!", style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(height: 12,),
                Padding(
                  padding: const EdgeInsets.only(right: 48),
                  child: Text("Login to your account ro choose the city for beeing served without login",
                  style: TextStyle(
                    color: Colors.white,
                  ),),
                ),
                SizedBox(height: 16,),
                Container(
                  height: 42,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  padding: EdgeInsets.all(8),
                  child: DropdownButton(
                    hint: Text("Please, choose your town"),
                    isExpanded: true,
                    onChanged: (value) {},
                    items: <DropdownMenuItem>[
                      DropdownMenuItem(child: Text("Tokyo, Japan"),),
                      DropdownMenuItem(child: Text("Osaka, Japan"),),
                      DropdownMenuItem(child: Text("Kyoto, Japan"),)
                    ],
                  ),
                ),
                SizedBox(height: 16,),
                Container(
                  height: 42,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(4)
                  ),
                  child: Center(
                    child: Text("Login to account",style: TextStyle(
                      color: Colors.white,
                    ),),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

























