import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:notebook_the_third_story/news_feed/news_model.dart';
import 'dart:convert';

Future<News> getNews(String u, String apiKey) async {
  var url =
      "$u&apiKey=${apiKey}";
  var response = await http.get(url);
  if (response.statusCode == 200) {
    print(response.body);
    return News.fromJson(jsonDecode(response.body));
  } else {
    return null;
  }
}


class NewsFeedApp extends StatelessWidget {
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
  List<Articles> _articles = List();
  List<Articles> _articles2 = List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getNews("https://newsapi.org/v2/top-headlines?country=us&category=business"
        ,"84e69911b50e403489da71fa64b2da5c").then((n) {
      setState(() {
        _articles = n.articles.toList();
      });
    });
    getNews("https://newsapi.org/v2/everything?q=apple&from=2020-01-07&to=2020-01-07&sortBy=popularity"
        ,"84e69911b50e403489da71fa64b2da5c").then((n) {
      setState(() {
        _articles2 = n.articles.toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        overflow: Overflow.visible,
        children: <Widget>[
          Positioned(
            left: 8,
            right: 0,
            top: 0,
            bottom: 0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width / 2.3,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                          height: MediaQuery.of(context).size.height / 3.5,
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 4,
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          _articles[index].urlToImage),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      _articles[index].title,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  margin: EdgeInsets.only(top: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        _articles[index].source.name,
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        _articles[index]
                                            .description
                                            .substring(0, 50),
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      itemCount: _articles.length,
                    )),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width / 2.3,
                  child: ListView(
                      children: List.generate(10, (index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                      height: MediaQuery.of(context).size.height / 3.5,
                      decoration: BoxDecoration(color: Colors.red),
                    );
                  }).toList()),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width / 2.3,
                  child: ListView(
                      children: List.generate(10, (index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                      height: MediaQuery.of(context).size.height / 4,
                      decoration: BoxDecoration(color: Colors.green),
                    );
                  }).toList()),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width / 2.3,
                  child: ListView(
                      children: List.generate(10, (index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                      height: MediaQuery.of(context).size.height / 4,
                      decoration: BoxDecoration(color: Colors.yellow),
                    );
                  }).toList()),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              padding: EdgeInsets.only(top: 24, bottom: 16, left: 16),
              height: MediaQuery.of(context).size.height / 6,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Stories",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          height: 28,
                          width: 68,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(32),
                              gradient: LinearGradient(
                                colors: [Colors.blue, Colors.blue[200]],
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                              )),
                          child: Center(
                              child: Text(
                            "LASTEST",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          )),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.view_carousel,
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
        onPressed: () {},
      ),
    );
  }
}
