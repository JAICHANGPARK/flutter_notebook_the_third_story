import 'package:flutter/material.dart';
import 'package:notebook_the_third_story/note_utils.dart';


class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 2.5,
              child: Hero(
                tag: "img",
                child: Container(
                  color: Colors.yellow,
                  child: Center(
                    child: FlutterLogo(size: 240,
                      style: FlutterLogoStyle.horizontal,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2.2,
            left: 24,right: 16,
            bottom: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Flutter Live Coding Book", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22
                ),),SizedBox(height: 8),
                Text("Dreamwalker", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                ),),
                SizedBox(height: 16),
                Row(
                  children: <Widget>[
                    Icon(Icons.star,color: Colors.yellow,),
                    Icon(Icons.star,color: Colors.yellow,),
                    Icon(Icons.star,color: Colors.yellow,),
                    Icon(Icons.star_border,color: Colors.grey,),
                    Icon(Icons.star_border,color: Colors.grey,),
                    Spacer(),
                    Container(
                      height: 30,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(16)
                      ),
                      child: Center(
                        child: Text("148 Favorites"),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 24,),
                Text(lipsum)
              ],
            ),
          )
















        ],
      ),
    );
  }
}
