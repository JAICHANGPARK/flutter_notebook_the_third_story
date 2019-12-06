import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RealEstateApp extends StatelessWidget {
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
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.work),
              title: Text("Trips"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              title: Text("Saved"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              title: Text("Chats"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              title: Text("Profile"),
            ),
          ]),
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SafeArea(
              top: true,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        bottom: BorderSide(
                      color: Colors.black.withOpacity(0.15),
                    ))),
                height: MediaQuery.of(context).size.height / 8.5,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 12,
                      child: Container(
                          padding: EdgeInsets.only(left: 16, right: 16),
                          margin: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(32),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.15),
                                  blurRadius: 1,
                                  spreadRadius: 2),
                            ],
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter location...",
                              icon: Icon(Icons.search),
                            ),
                          )),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        margin: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.15),
                                blurRadius: 1,
                                spreadRadius: 2),
                          ],
                        ),
                        child: Center(
                          child: Icon(
                            Icons.tune,
                            color: Colors.red[400],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2.3,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16, right: 16, top: 8, bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Travel with us",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          "See All",
                          style:
                              TextStyle(fontSize: 14, color: Colors.pink[500]),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 3.8,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 16,
                          top: 8,
                          bottom: 16,
                          right: 16,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2014/12/27/14/37/living-room-581073_960_720.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 4,
                          top: 84,
                          child: Container(
                            height: 34,
                            width: 34,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 1,
                                      spreadRadius: 2)
                                ]),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 18,
                              color: Colors.grey[400],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.add_location),
                        Text(
                          "Forest Park, Illinois, USA",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.star_border,
                            size: 20, color: Colors.pink[500]),
                        Icon(Icons.star_border,
                            size: 20, color: Colors.pink[500]),
                        Icon(Icons.star_border,
                            size: 20, color: Colors.pink[500]),
                        Icon(
                          Icons.star_border,
                          color: Colors.pink[500],
                          size: 20,
                        ),
                        Icon(Icons.star_border,
                            size: 20, color: Colors.pink[500]),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Walk to Oak Park",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "Bright Madison Street Loft",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13),
                            ),
                          ],
                        ),
                        Container(
                          height: 34,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 1,
                                    spreadRadius: 1)
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "94\$",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.pink[500]),
                              ),
                              Text(
                                "Night",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 16,),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(
                    color: Colors.black.withOpacity(0.1)
                  )
                )
              ),
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("High marks", style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 21
                        ),),
                        Text("See All",style: TextStyle(
                          fontSize: 16,
                          color: Colors.pink[600]
                        ),),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: GridView.count(crossAxisCount: 2,
                      padding: EdgeInsets.zero,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: 2/3,
                      children: <Widget>[
                        Container(
                          height: 320,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                right: 12,
                                top: 12,
                                child: Container(
                                  height: 32,
                                  width: 32,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                  ),
                                  child: Icon(Icons.bookmark_border, size: 18,
                                  color: Colors.pink[400],),
                                ),

                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 320,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                right: 12,
                                top: 12,
                                child: Container(
                                  height: 32,
                                  width: 32,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle
                                  ),
                                  child: Icon(Icons.bookmark_border, size: 18,
                                    color: Colors.pink[400],),
                                ),

                              )
                            ],
                          ),
                        ),
                      ],


                    ),
                  )
                ],
              ),

            )
          ],
        ),
      ),
    );
  }
}





















