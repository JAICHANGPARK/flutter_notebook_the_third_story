import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HotelDetailPage extends StatefulWidget {
  @override
  _HotelDetailPageState createState() => _HotelDetailPageState();
}

class _HotelDetailPageState extends State<HotelDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Expanded(
          flex: 9,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
              image: DecorationImage(
                image: NetworkImage(
                  "https://cdn.pixabay.com/photo/2014/07/10/17/17/hotel-389256_960_720.jpg"
                ),
                fit: BoxFit.cover
              )
            ),
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 16,
                  top: 32,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios,),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Platinum Grand", style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),),
              Row(
                children: <Widget>[
                  Text("Tokyo square, Japan - ",style: TextStyle(
                    color: Colors.black,
                    fontSize: 12
                  ),),
                  Text("Show in map", style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12
                  ),)
                ],
              ),
              Text("This upscale, contemporary hotel is 2 km from Hazrat Shahjalal International Airport and 11 km from"
                  "Jatiyo Sangsad Bhaban, the Banfladesh Parliament.", )
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: Placeholder(),
        ),
        Expanded(
          flex: 3,
          child: Placeholder(),
        ),
        Expanded(
          flex: 3,
          child: Row(
            children: <Widget>[
              Expanded(
                  flex: 3,
                  child: Container(
                    margin: EdgeInsets.all(18),
                    decoration: BoxDecoration(
                        color: Colors.greenAccent[100],
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.greenAccent,
                        size: 48,
                      ),
                    ),
                  )),
              Expanded(
                  flex: 8,
                  child: Container(
                    margin: EdgeInsets.only(
                        top: 18, bottom: 18, right: 16, left: 16),
                    decoration: BoxDecoration(
                      color: Colors.greenAccent[700],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        "Book now",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ],
    ));
  }
}
