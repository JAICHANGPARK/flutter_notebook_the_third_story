import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
