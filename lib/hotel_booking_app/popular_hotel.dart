import 'package:flutter/material.dart';
import 'package:notebook_the_third_story/hotel_booking_app/hotel_detail_page.dart';

class PopularHotelWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 3,
        padding: EdgeInsets.only(left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
                flex: 2,
                child: Text(
                  "Popular hotel",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                )),
            Expanded(
              flex: 8,
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                        return HotelDetailPage();
                      }));

                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 24, top: 8, bottom: 8),
                      width: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(.14),
                                blurRadius: 3,
                                spreadRadius: 3)
                          ]),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                              flex: 8,
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://cdn.pixabay.com/photo/2016/10/18/09/02/hotel-1749602__340.jpg"),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(16),
                                      topRight: Radius.circular(16),
                                    )),
                              )),
                          Expanded(
                              flex: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Sultans dine",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Kingdon Tower, Brazil",
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.grey),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          "\$180/night",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.indigo,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          "4.5",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.greenAccent,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 12,
                                          color: Colors.greenAccent,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 24, top: 8, bottom: 8),
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(.14),
                              blurRadius: 3,
                              spreadRadius: 3)
                        ]),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                            flex: 8,
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://cdn.pixabay.com/photo/2016/10/18/09/02/hotel-1749602__340.jpg"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(16),
                                    topRight: Radius.circular(16),
                                  )),
                            )),
                        Expanded(
                            flex: 5,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Sultans dine",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Kingdon Tower, Brazil",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.grey),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "\$180/night",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.indigo,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        "4.5",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.greenAccent,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 12,
                                        color: Colors.greenAccent,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 24, top: 8, bottom: 8),
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(.14),
                              blurRadius: 3,
                              spreadRadius: 3)
                        ]),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                            flex: 8,
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://cdn.pixabay.com/photo/2016/10/18/09/02/hotel-1749602__340.jpg"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(16),
                                    topRight: Radius.circular(16),
                                  )),
                            )),
                        Expanded(
                            flex: 5,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Sultans dine",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Kingdon Tower, Brazil",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.grey),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "\$180/night",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.indigo,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        "4.5",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.greenAccent,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 12,
                                        color: Colors.greenAccent,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
