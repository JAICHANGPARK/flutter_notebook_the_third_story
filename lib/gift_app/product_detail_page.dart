import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  final String title;
  final String product;
  final String price;
  final String imgPath;

  ProductDetailPage({this.title, this.product, this.price, this.imgPath});

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://cdn.pixabay.com/photo/2019/12/16/07/41/winter-4698763__340.jpg",
                  ),
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.65),
                    BlendMode.darken,
                  ),
                  fit: BoxFit.cover,
                )
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: (newValue) {
          setState(() {
            pageIndex = newValue;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_shopping_cart,
            ),
            title: Text("Cart"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.archive,
            ),
            title: Text("Archive"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.share,
            ),
            title: Text("Share"),
          )
        ],
      ),
    );
  }
}
