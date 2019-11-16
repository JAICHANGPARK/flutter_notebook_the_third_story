import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatisticsPage extends StatefulWidget {
  @override
  _StatisticsPageState createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SafeArea(
            top: true,
            left: true,
            right: true,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_horiz),
                  ),
                  Text(
                    "Statistics",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.keyboard_arrow_down),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 42),
            child: Container(
              padding: EdgeInsets.only(left: 24, top: 48, right: 24),
              height: MediaQuery.of(context).size.height - 130,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(32),
                    topLeft: Radius.circular(32),
                  )),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Walk",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.calendar_today,
                        color: Colors.white,
                        size: 18,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "23 November, 2019",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        height: 28,
                        width: 70,
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.white.withOpacity(.2)),
                            borderRadius: BorderRadius.circular(24)),
                        child: Center(
                            child: Text(
                          "Day",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                        height: 28,
                        width: 70,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(24)),
                        child: Center(
                            child: Text(
                          "Week",
                          style: TextStyle(color: Colors.white.withOpacity(.3)),
                        )),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                        height: 28,
                        width: 70,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(24)),
                        child: Center(
                            child: Text(
                          "Month",
                          style: TextStyle(color: Colors.white.withOpacity(.3)),
                        )),
                      )
                    ],
                  ),
                  Container(
                    height: 220,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "6551",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 48,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 32,),
                              Text("steps", style: TextStyle(
                                color: Colors.white.withOpacity(0.2),
                                fontSize: 28,
                              ),)
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Placeholder(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
