import 'package:flutter/material.dart';

class DadGiftCard extends StatelessWidget {

  DadGiftCard({this.title, this.price, this.imgPath});

  final String title;
  final String price;
  final String imgPath;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12, top: 4),
      width: MediaQuery.of(context).size.width / 2.7,
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
                      imgPath),
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
