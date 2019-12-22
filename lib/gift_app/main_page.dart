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
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2019/12/14/20/03/christmas-balls-4695657_960_720.jpg"),
                      fit: BoxFit.cover)),
              child: ListView(
                children: <Widget>[],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: (newValue) {
          setState(() {
            pageIndex = newValue;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_shopping_cart,
            ),
            title: Text("Cart"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.archive,
            ),
            title: Text("Archive"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.share,
            ),
            title: Text("Share"),
          )
        ],
      ),
    );
  }
}
