import 'package:flutter/material.dart';


class ShopMainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<ShopMainPage> {
  int pageIndex = 0;
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
              color: Colors.teal,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: (newValue){
          setState(() {
            pageIndex = newValue;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart,),
            title: Text("Cart"),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.archive,),
            title: Text("Archive"),
          ),  BottomNavigationBarItem(icon: Icon(Icons.share,),
            title: Text("Share"),
          )

        ],
      ),
    );
  }
}
