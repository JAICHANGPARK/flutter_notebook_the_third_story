import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 16,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border(
                  top: BorderSide(
                color: Colors.grey[500],
              ))),
          height: 72,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.home, size: 30,),
                  Text("Home",style: TextStyle(
                    fontSize: 12,
                  ),)
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.book, size: 30,
                  color: Colors.grey,),
                  Text("Bookmark",style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey
                  ),)
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.favorite, size: 30,color: Colors.grey,),
                  Text("Favorite",style: TextStyle(
                    fontSize: 12,color: Colors.grey,
                  ),)
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.add_shopping_cart, size: 30,),
                  Text("My Cart",style: TextStyle(
                    fontSize: 12,
                  ),)
                ],
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //Biblic Globe
              Container(
                height: deviceHeight / 9,
                decoration: BoxDecoration(color: Colors.red),
              ),
              //Search Bar
              Container(
                height: deviceHeight / 11,
                decoration: BoxDecoration(color: Colors.black),
              ),

              //Best Seller , New items
              Container(
                height: deviceHeight / 7.5,
                decoration: BoxDecoration(color: Colors.brown),
              ),
              // literature, classic, fantasy
              Container(
                height: deviceHeight / 11,
                decoration: BoxDecoration(color: Colors.green),
              ),
              Container(
                height: deviceHeight / 3,
                decoration: BoxDecoration(color: Colors.blue),
              ),
              Container(
                height: deviceHeight / 11,
                decoration: BoxDecoration(color: Colors.green),
              ),
              Container(
                height: deviceHeight / 3,
                decoration: BoxDecoration(color: Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
