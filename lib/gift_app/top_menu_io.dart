import 'package:flutter/material.dart';

class TopBarItem extends StatelessWidget {
  final isSelected;

  TopBarItem({this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 12,
      ),
      width: MediaQuery.of(context).size.width / 4.3,
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2.5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        padding: EdgeInsets.only(left: 0, top: 4),
        decoration: BoxDecoration(
            color: Colors.grey[50],
            borderRadius: BorderRadius.circular(
              8,
            ),
            image: DecorationImage(
              image: NetworkImage(
                  "https://cdn.pixabay.com/photo/2014/11/27/22/44/gift-548290__340.jpg"),
              fit: BoxFit.cover,
            )),
        child: Column(
          children: <Widget>[
            Text(
              "For Family",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
