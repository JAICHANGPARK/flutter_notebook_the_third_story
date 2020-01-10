import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notebook_the_third_story/note_utils.dart';

class MobileShopApp extends StatelessWidget {
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
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 90,
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 38,
                          width: 38,
                          decoration: BoxDecoration(
                              color: Colors.grey[300], shape: BoxShape.circle),
                          child: Center(
                            child: Icon(Icons.card_travel),
                          ),
                        ),
                        Text("Shop", style: TextStyle(
                            color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 38,
                          width: 38,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              shape: BoxShape.circle),
                          child: Center(
                            child: Icon(
                              Icons.search,
                              size: 32,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Text("Search", style: TextStyle(
                            color: Colors.grey
                        ),)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 38,
                          width: 38,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              shape: BoxShape.circle),
                          child: Center(
                            child: Icon(
                              Icons.location_searching,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Text("Discover", style: TextStyle(
                            color: Colors.grey
                        ),)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 38,
                          width: 38,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              shape: BoxShape.circle),
                          child: Center(
                            child: Icon(
                              Icons.favorite_border,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Text("Wishlist", style: TextStyle(
                          color: Colors.grey
                        ),)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 42,
                          width: 42,
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 2
                              ),
                              shape: BoxShape.circle),
                          child: Center(
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(dreamwalkerImg),
                            ),
                          ),
                        ),

                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: GestureDetector(
                    onTap: (){
                      print("Home Button Clicked");
                    },
                    child: Container(
                      width: 150,
                      margin: EdgeInsets.only(top: 17, bottom: 8),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(16),
                height: MediaQuery.of(context).size.height / 2.1,
                decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: NetworkImage("https://cdn.pixabay.com/photo/2014/12/03/17/51/girls-555657_960_720.jpg"),
                    fit: BoxFit.cover,
                  )
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 24,
                      top: 24,
                      right: 32,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Special Release", style: TextStyle(
                            color: Colors.white,
                          ),),
                          Text("adidas Originals x Fiorucci", style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 12, left: 16),
                height: MediaQuery.of(context).size.height / 3.6,
//                decoration: BoxDecoration(
//                  color: Colors.red
//                ),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Top Trends", style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 4, right: 12),
                            width: MediaQuery.of(context).size.width / 2,
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  flex: 6,
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(8),
                                              bottomLeft: Radius.circular(8),
                                            ),
                                            image: DecorationImage(
                                              image: NetworkImage("https://cdn.pixabay.com/photo/2016/11/21/16/01/attractive-1846127__340.jpg"),
                                              fit: BoxFit.cover
                                            )
                                          ),
                                        ),
                                      ),
                                      VerticalDivider(
                                        color: Colors.white,
                                        width: 2,
                                        thickness: 2,
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(8),
                                              bottomRight: Radius.circular(8),
                                            ),
                                            image: DecorationImage(
                                              image: NetworkImage("https://cdn.pixabay.com/photo/2016/03/09/10/23/model-1246028__340.jpg"),
                                              fit: BoxFit.cover,
                                            )
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Fleece Clothing", style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                      ),),
                                      SizedBox(height: 4,),
                                      Row(
                                        children: <Widget>[
                                          CircleAvatar(radius: 13, backgroundImage:
                                            NetworkImage(dreamwalkerImg),),
                                          SizedBox(width: 4,),
                                          Text("Dreamwalker",style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 10
                                          ),)
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 4, right: 12),
                            width: MediaQuery.of(context).size.width / 2,
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  flex: 6,
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(8),
                                                bottomLeft: Radius.circular(8),
                                              ),
                                              image: DecorationImage(
                                                  image: NetworkImage("https://cdn.pixabay.com/photo/2016/11/21/16/01/attractive-1846127__340.jpg"),
                                                  fit: BoxFit.cover
                                              )
                                          ),
                                        ),
                                      ),
                                      VerticalDivider(
                                        color: Colors.white,
                                        width: 2,
                                        thickness: 2,
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(8),
                                                bottomRight: Radius.circular(8),
                                              ),
                                              image: DecorationImage(
                                                image: NetworkImage("https://cdn.pixabay.com/photo/2016/03/09/10/23/model-1246028__340.jpg"),
                                                fit: BoxFit.cover,
                                              )
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Fleece Clothing", style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold
                                      ),),
                                      SizedBox(height: 4,),
                                      Row(
                                        children: <Widget>[
                                          CircleAvatar(radius: 13, backgroundImage:
                                          NetworkImage(dreamwalkerImg),),
                                          SizedBox(width: 4,),
                                          Text("Dreamwalker",style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 10
                                          ),)
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),

              ),
              Container(
                margin: EdgeInsets.only(left: 16, top: 16, ),
                height: MediaQuery.of(context).size.height / 7,
                decoration: BoxDecoration(

                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Text("Featured Brands",style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                    Expanded(
                      flex: 6,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 8),
                            width: MediaQuery.of(context).size.width / 5,
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(4)
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 8),
                            width: MediaQuery.of(context).size.width / 5,
                            decoration: BoxDecoration(
                                color: Colors.grey[400],
                                borderRadius: BorderRadius.circular(4)
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 8),
                            width: MediaQuery.of(context).size.width / 5,
                            decoration: BoxDecoration(
                                color: Colors.grey[400],
                                borderRadius: BorderRadius.circular(4)
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 8),
                            width: MediaQuery.of(context).size.width / 5,
                            decoration: BoxDecoration(
                                color: Colors.grey[400],
                                borderRadius: BorderRadius.circular(4)
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 8),
                            width: MediaQuery.of(context).size.width / 5,
                            decoration: BoxDecoration(
                                color: Colors.grey[400],
                                borderRadius: BorderRadius.circular(4)
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 8),
                            width: MediaQuery.of(context).size.width / 5,
                            decoration: BoxDecoration(
                                color: Colors.grey[400],
                                borderRadius: BorderRadius.circular(4)
                            ),
                          ),

                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
















