import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class ReminderApp extends StatelessWidget {
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
      body: Stack(
        children: <Widget>[
          Positioned(
            child: Container(
             decoration: BoxDecoration(
               gradient: LinearGradient(
                 colors: [

                   Colors.blue[200],
                   Colors.blue[300],
                   Colors.blue[400],
                 ],
                 begin: Alignment.centerLeft,
                 end: Alignment.centerRight,
                 tileMode: TileMode.mirror
               )
             ),
            ),
          ),
          Positioned(
            top: 62,
            left: 24,
            right: 24,
            child: Container(
              height: 38,
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.black,),
                    onPressed: (){},
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 32,
            top: 140,
            child: Container(
              height: 160,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Daily",style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 48,

                  ),),
                  Text("Reminders",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 48,

                  ),),
                  Spacer(),
                  Text("TODAY",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      letterSpacing: 1.3
                  ),)
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 130,
            bottom: 0,
            top: 340,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16)
                )
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 110,
            bottom: 0,
            top: 356,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16)
                  )
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 80,
            bottom: 0,
            top: 372,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16)
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 32),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text("SHARED REMINDERS", style: TextStyle(
                          color: Colors.blue[300],
                          fontWeight: FontWeight.bold,
                          fontSize: 16

                        ),),
                      ),
                    ),
                  ),
                  SizedBox(height: 24,),
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 32),
                      child: ListView(
                        reverse: true,
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 4, top: 8, bottom: 20),
                            width: 64,
                            decoration: BoxDecoration(
                              color: Colors.blue[50],
                              borderRadius: BorderRadius.circular(48)
                            ),
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 24,
                                  backgroundImage: NetworkImage("https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                                ),
                                Text("DR",style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontWeight: FontWeight.bold,
                                ),)
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 4, top: 8, bottom: 8),
                            width: 64,
                            decoration: BoxDecoration(
                                color: Colors.red[500],
                                borderRadius: BorderRadius.circular(48)
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 4, top: 8, bottom: 20),
                            width: 64,
                            decoration: BoxDecoration(
                                color: Colors.blue[50],
                                borderRadius: BorderRadius.circular(48)
                            ),
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 24,
                                  backgroundImage: NetworkImage("https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                                ),
                                Text("DR",style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontWeight: FontWeight.bold,
                                ),)
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 4, top: 8, bottom: 20),
                            width: 64,
                            decoration: BoxDecoration(
                                color: Colors.blue[50],
                                borderRadius: BorderRadius.circular(48)
                            ),
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 24,
                                  backgroundImage: NetworkImage("https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                                ),
                                Text("DR",style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontWeight: FontWeight.bold,
                                ),)
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 4, top: 8, bottom: 20),
                            width: 64,
                            decoration: BoxDecoration(
                                color: Colors.blue[50],
                                borderRadius: BorderRadius.circular(48)
                            ),
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 24,
                                  backgroundImage: NetworkImage("https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                                ),
                                Text("DR",style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontWeight: FontWeight.bold,
                                ),)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Placeholder(),
                  ),

                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
        backgroundColor: Colors.red[300],
      ),

    );
  }
}
































