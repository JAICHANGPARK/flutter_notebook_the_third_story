import 'package:flutter/material.dart';
import 'package:notebook_the_third_story/reminder_app/main_page.dart';

class FlatmateFinder extends StatelessWidget {
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SafeArea(
              top: true,
              child: Container(
                height: 32,
              ),
            ),
            Container(
              height: 140,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Hi,Dreamwalker",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Advertise your room or find",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.indigo[300],
                        fontSize: 18,
                        letterSpacing: 1.2),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "housemates with similar interests.",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.indigo[300],
                        fontSize: 18,
                        letterSpacing: 1.2),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              height: 52,
              margin: EdgeInsets.only(left: 24, right: 24),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.indigo[200]),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(6)),
                      child: Center(
                        child: Text(
                          "A Room",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Center(
                        child: Text(
                          "A Housemate",
                          style: TextStyle(
                              color: Colors.indigo[400],
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
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
              height: 52,
              margin: EdgeInsets.symmetric(horizontal: 24),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search by area or postcode",
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey[300],
                  ),
                  suffixIcon: Icon(
                    Icons.search,
                    size: 28,
                    color: Colors.black,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Text(
                    "Recommended",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo[500]),
                  ),
                ),
                ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  children: <Widget>[
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                      height: 260,

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            flex: 8,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2017/09/09/18/25/living-room-2732939_960_720.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    right: 16,
                                    top: 16,
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          height: 34,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: Colors.white,
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Icon(
                                                Icons.add_location,
                                                size: 16,
                                              ),
                                              Text("2.5 miles")
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Container(
                                          height: 34,
                                          width: 100,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          child: Center(
                                            child: Text(
                                              "\$139/month",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Looking for a student housemate",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 48,
                                  width: 48,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(6),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        "https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"
                                      ),
                                      fit: BoxFit.cover,
                                    )
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Dreamwalker", style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                      Text("1 hours ago", style: TextStyle(
                                        fontSize: 12,

                                      ),)
                                    ],
                                  ),
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(Icons.more_vert),
                                  onPressed: () {},
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin:
                      EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                      height: 260,

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            flex: 8,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2017/09/09/18/25/living-room-2732939_960_720.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    right: 16,
                                    top: 16,
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          height: 34,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(8),
                                            color: Colors.white,
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: <Widget>[
                                              Icon(
                                                Icons.add_location,
                                                size: 16,
                                              ),
                                              Text("2.5 miles")
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Container(
                                          height: 34,
                                          width: 100,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                              BorderRadius.circular(8)),
                                          child: Center(
                                            child: Text(
                                              "\$139/month",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Looking for a student housemate",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 48,
                                  width: 48,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(6),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            "https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"
                                        ),
                                        fit: BoxFit.cover,
                                      )
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Dreamwalker", style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                      Text("1 hours ago", style: TextStyle(
                                        fontSize: 12,

                                      ),)
                                    ],
                                  ),
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(Icons.more_vert),
                                  onPressed: () {},
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin:
                      EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                      height: 260,

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            flex: 8,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2017/09/09/18/25/living-room-2732939_960_720.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    right: 16,
                                    top: 16,
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          height: 34,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(8),
                                            color: Colors.white,
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: <Widget>[
                                              Icon(
                                                Icons.add_location,
                                                size: 16,
                                              ),
                                              Text("2.5 miles")
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Container(
                                          height: 34,
                                          width: 100,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                              BorderRadius.circular(8)),
                                          child: Center(
                                            child: Text(
                                              "\$139/month",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Looking for a student housemate",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 48,
                                  width: 48,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(6),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            "https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"
                                        ),
                                        fit: BoxFit.cover,
                                      )
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Dreamwalker", style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                      Text("1 hours ago", style: TextStyle(
                                        fontSize: 12,

                                      ),)
                                    ],
                                  ),
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(Icons.more_vert),
                                  onPressed: () {},
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 19,
        child: Container(
          height: 72,
          padding: EdgeInsets.symmetric(horizontal: 16),
//          decoration: BoxDecoration(color: Colors.blueGrey),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
                color: Colors.indigoAccent,
              ),
              IconButton(
                icon: Icon(Icons.chat),
                onPressed: () {},
              ),
              Container(
                height: 52,
                width: 52,
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.red[100],
                          spreadRadius: 4,
                          blurRadius: 6)
                    ]),
                child: Center(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 38,
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.account_circle),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
