import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12),
            height: MediaQuery.of(context).size.height / 24,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.deepOrange,
                ),
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                        )),
                    child: Center(
                      child: Text(
                        "List",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(),
                    child: Center(
                      child: Text(
                        "Map",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: <Widget>[
                Text("123 apartments found",
                    style: TextStyle(color: Colors.white, fontSize: 13)),
                Spacer(),
                Text(
                  "Sort",
                  style: TextStyle(color: Colors.deepOrange, fontSize: 13),
                ),
                Icon(
                  Icons.arrow_downward,
                  size: 16,
                  color: Colors.deepOrange,
                ),
                Icon(Icons.menu, size: 18, color: Colors.deepOrange)
              ],
            ),
          ),

          Container(
            height: MediaQuery.of(context).size.height / 2,
            child: ListView(
              children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.red
                        ),
                        height: MediaQuery.of(context).size.height / 3,

                      )
              ],
            ),
          )

        ],
      ),
      appBar: AppBar(
        leading: Row(
          children: <Widget>[
            Icon(
              Icons.keyboard_arrow_left,
              color: Colors.deepOrange,
            ),
            Text(
              "Back",
              style: TextStyle(color: Colors.white54),
            )
          ],
        ),
        centerTitle: true,
        title: Column(
          children: <Widget>[
            Text("Oslo, No"),
            Text(
              "10/9/2019 - 12/9/2019",
              style: TextStyle(
                  color: Colors.white.withOpacity(
                    0.5,
                  ),
                  fontSize: 12),
            )
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.filter_list,
              color: Colors.deepOrange,
            ),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: const Color(0xff003041),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff003041),
        onTap: (index) {},
        currentIndex: 0,
        elevation: 9,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("Search"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("Search"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("Search"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("Search"),
          ),
        ],
      ),
    );
  }
}
