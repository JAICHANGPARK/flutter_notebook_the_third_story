import 'package:flutter/material.dart';

class HotelBookingApp extends StatelessWidget {
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
  int currentIndex = 0;
  TextEditingController _textEditingController = TextEditingController();

  Widget _buildBottomNavBar() {
    return BottomNavigationBar(
      elevation: 9,
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (newValue) {
        setState(() {
          currentIndex = newValue;
        });
      },
      selectedItemColor: Colors.greenAccent,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
        BottomNavigationBarItem(
            icon: Icon(Icons.search), title: Text("Explore")),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border), title: Text("Trips")),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle), title: Text("Profile")),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Hello Dreamwalker",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Find your hotel",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            ),
                          ],
                        ),
                        Container(
                          height: 42,
                          width: 42,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(8)),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(16)),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Center(
                        child: TextField(
                          controller: _textEditingController,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search for hotels",
                              icon: Icon(
                                Icons.search,
                                color: Colors.grey[400],
                              ),
                              hintStyle: TextStyle(
                                color: Colors.grey[400],
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
                height: MediaQuery.of(context).size.height / 3,
                padding: EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                        flex: 2,
                        child: Text(
                          "Popular hotel",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        )),
                    Expanded(
                      flex: 8,
                      child: ListView(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            margin:
                                EdgeInsets.only(right: 24, top: 8, bottom: 8),
                            width: 140,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(.14),
                                      blurRadius: 3,
                                      spreadRadius: 3)
                                ]),
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                    flex: 8,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://cdn.pixabay.com/photo/2016/10/18/09/02/hotel-1749602__340.jpg"),
                                              fit: BoxFit.cover),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(16),
                                            topRight: Radius.circular(16),
                                          )),
                                    )),
                                Expanded(
                                    flex: 5,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text("Sultans dine", style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold
                                          ),),
                                          Text("Kingdon Tower, Brazil", style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.grey
                                          ),),
                                          Row(
                                            children: <Widget>[
                                              Text("\$180/night", style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.indigo,
                                                fontWeight: FontWeight.bold,
                                              ),),
                                              Spacer(),
                                              Text("4.5", style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.greenAccent,
                                                fontWeight: FontWeight.bold
                                              ),),

                                              Icon(Icons.star, size: 12,color: Colors.greenAccent,)
                                            ],
                                          )
                                        ],
                                      ),
                                    ))
                              ],
                            ),
                          ),
                          Container(
                            margin:
                            EdgeInsets.only(right: 24, top: 8, bottom: 8),
                            width: 140,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(.14),
                                      blurRadius: 3,
                                      spreadRadius: 3)
                                ]),
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                    flex: 8,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://cdn.pixabay.com/photo/2016/10/18/09/02/hotel-1749602__340.jpg"),
                                              fit: BoxFit.cover),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(16),
                                            topRight: Radius.circular(16),
                                          )),
                                    )),
                                Expanded(
                                    flex: 5,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text("Sultans dine", style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold
                                          ),),
                                          Text("Kingdon Tower, Brazil", style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.grey
                                          ),),
                                          Row(
                                            children: <Widget>[
                                              Text("\$180/night", style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.indigo,
                                                fontWeight: FontWeight.bold,
                                              ),),
                                              Spacer(),
                                              Text("4.5", style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.greenAccent,
                                                  fontWeight: FontWeight.bold
                                              ),),

                                              Icon(Icons.star, size: 12,color: Colors.greenAccent,)
                                            ],
                                          )
                                        ],
                                      ),
                                    ))
                              ],
                            ),
                          ),
                          Container(
                            margin:
                            EdgeInsets.only(right: 24, top: 8, bottom: 8),
                            width: 140,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(.14),
                                      blurRadius: 3,
                                      spreadRadius: 3)
                                ]),
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                    flex: 8,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://cdn.pixabay.com/photo/2016/10/18/09/02/hotel-1749602__340.jpg"),
                                              fit: BoxFit.cover),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(16),
                                            topRight: Radius.circular(16),
                                          )),
                                    )),
                                Expanded(
                                    flex: 5,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text("Sultans dine", style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold
                                          ),),
                                          Text("Kingdon Tower, Brazil", style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.grey
                                          ),),
                                          Row(
                                            children: <Widget>[
                                              Text("\$180/night", style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.indigo,
                                                fontWeight: FontWeight.bold,
                                              ),),
                                              Spacer(),
                                              Text("4.5", style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.greenAccent,
                                                  fontWeight: FontWeight.bold
                                              ),),

                                              Icon(Icons.star, size: 12,color: Colors.greenAccent,)
                                            ],
                                          )
                                        ],
                                      ),
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }
}
