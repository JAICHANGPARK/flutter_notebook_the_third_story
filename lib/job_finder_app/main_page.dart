import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JobFinderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => JopFinderMainPage(),
      },
    );
  }
}

class JopFinderMainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<JopFinderMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.tune,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 32,
            ),
            Text("Designer"),
            Text("Job"),
            SizedBox(
              height: 48,
            ),
            Row(
              children: <Widget>[
                Container(
                  height: 34,
                  width: 108,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("New York"),
                      IconButton(
                        icon: Icon(
                          Icons.clear,
                        ),
                        onPressed: () {},
                        iconSize: 16,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Container(
                  height: 34,
                  width: 96,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("\$ 40/h"),
                      IconButton(
                        padding: EdgeInsets.zero,
                        icon: Icon(
                          Icons.clear,
                        ),
                        onPressed: () {},
                        iconSize: 16,
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 48,),
            Container(
              height: 240,
              width: double.infinity,
              color: Colors.blueGrey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("For you"),
                  Container(
                    height: 200,
                    color: Colors.red,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(8)
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 240,
              width: double.infinity,
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Recently Added"),
                  Container(
                    height: 220,
                    color: Colors.green,
                  child: ListView.builder(itemBuilder : (context, index){
                    return Container(
                      height: 86,
                      margin: EdgeInsets.only(bottom: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    );

                  })
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



















