import 'package:flutter/material.dart';


class ShopMainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<ShopMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.home,),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.home,),
            title: Text("Home"),
          ),  BottomNavigationBarItem(icon: Icon(Icons.home,),
            title: Text("Home"),
          )

        ],
      ),
    );
  }
}
