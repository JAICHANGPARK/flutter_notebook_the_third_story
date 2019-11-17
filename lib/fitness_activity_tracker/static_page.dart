import 'package:fl_chart/fl_chart.dart';
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
                    height: 200,
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
                              SizedBox(
                                width: 32,
                              ),
                              Text(
                                "steps",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.2),
                                  fontSize: 28,
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "5.1",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  Text(
                                    "distance",
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.2)),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "450",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  Text(
                                    "kcal",
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.2)),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "13.9km/h",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  Text(
                                    "average speed",
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.2)),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 180,
                    width: MediaQuery.of(context).size.width,
                    child: BarChart(
                      BarChartData(
                          alignment: BarChartAlignment.spaceBetween,
                          maxY: 20,
                          titlesData: FlTitlesData(
                            show: true,
                            bottomTitles: SideTitles(
                                showTitles: true,
                                textStyle: TextStyle(
                                    color: Colors.white, fontSize: 12),
                                margin: 20,
                                getTitles: (double value) {
                                  switch (value.toInt()) {
                                    case 0:
                                      return "14";
                                    case 1:
                                      return "";
                                    case 2:
                                      return "16";
                                    case 3:
                                      return "";
                                    case 4:
                                      return "18";
                                    case 5:
                                      return "";
                                    case 6:
                                      return "20";
                                    case 7:
                                      return "";
                                    case 8:
                                      return "22";
                                    default:
                                      return '';
                                  }
                                }),
                            leftTitles: const SideTitles(showTitles: false),
                          ),
                          borderData: FlBorderData(
                            show: false,
                          ),
                          barGroups: [
                            BarChartGroupData(
                              x: 0,
                              barRods: [
                                BarChartRodData(
                                    y: 14, color: Colors.orange[400])
                              ],
                            ),
                            BarChartGroupData(
                              x: 1,
                              barRods: [
                                BarChartRodData(y: 8, color: Colors.orange[400])
                              ],
                            ),
                            BarChartGroupData(
                              x: 2,
                              barRods: [
                                BarChartRodData(y: 8, color: Colors.orange[400])
                              ],
                            ),
                            BarChartGroupData(
                              x: 3,
                              barRods: [
                                BarChartRodData(y: 4, color: Colors.orange[400])
                              ],
                            ),
                            BarChartGroupData(
                              x: 4,
                              barRods: [
                                BarChartRodData(y: 6, color: Colors.orange[400])
                              ],
                            ),
                            BarChartGroupData(
                              x: 5,
                              barRods: [
                                BarChartRodData(
                                    y: 18, color: Colors.orange[400])
                              ],
                            ),
                            BarChartGroupData(
                              x: 6,
                              barRods: [
                                BarChartRodData(
                                    y: 10, color: Colors.orange[400])
                              ],
                            ),
                            BarChartGroupData(
                              x: 7,
                              barRods: [
                                BarChartRodData(y: 8, color: Colors.orange[400])
                              ],
                            ),
                            BarChartGroupData(
                              x: 8,
                              barRods: [
                                BarChartRodData(
                                    y: 10, color: Colors.orange[400])
                              ],
                            ),
                          ]),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 80,
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 60,
                          width: 52,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(16)),
                          child: Center(
                            child: Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 100,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top: 0,
                                right: 16,
                                child: Text(
                                  "MIN",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 16,
                                left: 16,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "64",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 28),
                                    ),
                                    Text(
                                      "bpm",
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.2),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Container(
                          width: 100,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top: 0,
                                right: 16,
                                child: Text(
                                  "MAX",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 16,
                                left: 16,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "146",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 28),
                                    ),
                                    Text(
                                      "bpm",
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.2),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
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
