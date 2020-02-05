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
            Padding(
              padding: EdgeInsets.only( left: 24),
              child: Row(
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
            ),
            SizedBox(
              height: 48,
            ),
            Container(
              height: 240,
              width: double.infinity,
              margin: EdgeInsets.only( left: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("For you", style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),),
                  Container(
                    height: 200,

                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          margin: EdgeInsets.only(right: 16),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 16,),
            Container(
              height: 240,
              margin: EdgeInsets.only(right: 24, left: 24),
              width: double.infinity,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Recently Added", style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),),
                  SizedBox(height: 16,),
                  Container(
                      height: 200,

                      child: ListView.builder(itemBuilder: (context, index) {
                        return Container(
                          height: 86,
                          margin: EdgeInsets.only(bottom: 8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)
                          ),
                        );
                      }))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
