import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SafeArea(
                top: true,
                left: true,
                right: true,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Icon(Icons.menu),
                      ),
                    ),
                    Text(
                      "HomeChef",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      padding: const EdgeInsets.all(0),
                      icon: Icon(Icons.search),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Hi Mike",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Good afternoon",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 28),
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Suggestion for you now",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 4.5,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 8, bottom: 8, right: 8),
                          width: MediaQuery.of(context).size.width / 2.3,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(.1),
                                    spreadRadius: 2,
                                    blurRadius: 3)
                              ],
                              borderRadius: BorderRadius.circular(8)),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 6,
                                child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            "https://cdn.pixabay.com/photo/2017/01/16/17/45/pancake-1984716__340.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          topRight: Radius.circular(8))),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16, right: 16, top: 7, bottom: 4),
                                  child: Row(
                                    children: <Widget>[
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: CircleAvatar(
                                          radius: 16,
                                          backgroundImage: NetworkImage("https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Chicken pasta",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Text(
                                                "by",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                              ),
                                              Text(
                                                "Jack Mike",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.green),
                                              )
                                            ],
                                          ),
                                          Spacer(),
                                          Text(
                                            "3k recommended",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 8, bottom: 8, right: 8),
                          width: MediaQuery.of(context).size.width / 2.3,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(.1),
                                    spreadRadius: 2,
                                    blurRadius: 3)
                              ],
                              borderRadius: BorderRadius.circular(8)),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 6,
                                child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            "https://cdn.pixabay.com/photo/2017/01/16/17/45/pancake-1984716__340.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          topRight: Radius.circular(8))),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16, right: 16, top: 7, bottom: 4),
                                  child: Row(
                                    children: <Widget>[
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: CircleAvatar(
                                          radius: 16,
                                          backgroundImage: NetworkImage("https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Chicken pasta",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Text(
                                                "by",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                              ),
                                              Text(
                                                "Jack Mike",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.green),
                                              )
                                            ],
                                          ),
                                          Spacer(),
                                          Text(
                                            "3k recommended",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 8, bottom: 8, right: 8),
                          width: MediaQuery.of(context).size.width / 2.3,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(.1),
                                    spreadRadius: 2,
                                    blurRadius: 3)
                              ],
                              borderRadius: BorderRadius.circular(8)),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 6,
                                child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            "https://cdn.pixabay.com/photo/2017/01/16/17/45/pancake-1984716__340.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          topRight: Radius.circular(8))),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16, right: 16, top: 7, bottom: 4),
                                  child: Row(
                                    children: <Widget>[
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: CircleAvatar(
                                          radius: 16,
                                          backgroundImage: NetworkImage("https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Chicken pasta",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Text(
                                                "by",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                              ),
                                              Text(
                                                "Jack Mike",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.green),
                                              )
                                            ],
                                          ),
                                          Spacer(),
                                          Text(
                                            "3k recommended",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Top 10 home chef of this month",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12),
                    padding: EdgeInsets.only(left: 16),
                    height: MediaQuery.of(context).size.height / 4.5,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                        )),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                            right: 16,
                          ),
                          width: MediaQuery.of(context).size.width / 3.5,
                          decoration: BoxDecoration(
//                            color: Colors.red,
                              ),
                          padding: EdgeInsets.only(bottom: 8, top: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              CircleAvatar(
                                radius: 42,
                                backgroundImage: NetworkImage(
                                    "https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                              ),
                              Text(
                                "Rose Rain",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "873 Sold",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            right: 16,
                          ),
                          width: MediaQuery.of(context).size.width / 3.5,
                          decoration: BoxDecoration(
//                            color: Colors.red,
                          ),
                          padding: EdgeInsets.only(bottom: 8, top: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              CircleAvatar(
                                radius: 42,
                                backgroundImage: NetworkImage(
                                    "https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                              ),
                              Text(
                                "Rose Rain",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "873 Sold",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            right: 16,
                          ),
                          width: MediaQuery.of(context).size.width / 3.5,
                          decoration: BoxDecoration(
//                            color: Colors.red,
                          ),
                          padding: EdgeInsets.only(bottom: 8, top: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              CircleAvatar(
                                radius: 42,
                                backgroundImage: NetworkImage(
                                    "https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                              ),
                              Text(
                                "Rose Rain",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "873 Sold",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            right: 16,
                          ),
                          width: MediaQuery.of(context).size.width / 3.5,
                          decoration: BoxDecoration(
//                            color: Colors.red,
                          ),
                          padding: EdgeInsets.only(bottom: 8, top: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              CircleAvatar(
                                radius: 42,
                                backgroundImage: NetworkImage(
                                    "https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                              ),
                              Text(
                                "Rose Rain",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "873 Sold",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            right: 16,
                          ),
                          width: MediaQuery.of(context).size.width / 3.5,
                          decoration: BoxDecoration(
//                            color: Colors.red,
                          ),
                          padding: EdgeInsets.only(bottom: 8, top: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              CircleAvatar(
                                radius: 42,
                                backgroundImage: NetworkImage(
                                    "https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                              ),
                              Text(
                                "Rose Rain",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "873 Sold",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            right: 16,
                          ),
                          width: MediaQuery.of(context).size.width / 3.5,
                          decoration: BoxDecoration(
//                            color: Colors.red,
                          ),
                          padding: EdgeInsets.only(bottom: 8, top: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              CircleAvatar(
                                radius: 42,
                                backgroundImage: NetworkImage(
                                    "https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                              ),
                              Text(
                                "Rose Rain",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "873 Sold",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Top Food Reviews",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16, right: 16, bottom: 16),
                    height: MediaQuery.of(context).size.height / 7,
                    padding: EdgeInsets.only(top: 16, bottom: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                          child: CircleAvatar(
                            radius: 32,
                          ),
                        ),
                        Expanded(
                          flex: 8,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16, top: 4, bottom: 4),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Mix Salad"),
                                Text("30 Review"),
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.star, color: Colors.orange, size: 20,),
                                    Icon(Icons.star, color: Colors.orange,size: 20,),
                                    Icon(Icons.star, color: Colors.orange,size: 20,),
                                    Icon(Icons.star, color: Colors.orange[100],size: 20,),
                                    Icon(Icons.star, color: Colors.orange[100],size: 20,)
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                        ,
                        Expanded(
                          flex: 2,
                          child: Row(
                            children: <Widget>[
                              Text("3k"),
                              Icon(Icons.favorite, color: Colors.red,)
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}












