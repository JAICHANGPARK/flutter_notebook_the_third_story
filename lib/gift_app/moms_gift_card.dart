import 'package:flutter/material.dart';

class MomsGiftCard extends StatelessWidget {
  MomsGiftCard({this.title, this.price});

  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12, top: 4),
      width: MediaQuery.of(context).size.width / 2.5,
      decoration: BoxDecoration(),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 9,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2016/02/19/10/40/soap-1209344__340.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      "$title",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Spacer(),
                    Text(
                      "\$$price",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Discover More",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
