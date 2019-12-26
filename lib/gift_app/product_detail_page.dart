import 'package:flutter/material.dart';
import 'package:notebook_the_third_story/gift_app/dad_gift_card.dart';

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
                image: NetworkImage(
                  "https://cdn.pixabay.com/photo/2019/12/16/07/41/winter-4698763__340.jpg",
                ),
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.65),
                  BlendMode.darken,
                ),
                fit: BoxFit.cover,
              )),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 32,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height / 8,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          widget.title,
                          style: TextStyle(color: Colors.grey),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 48),
                          child: Row(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.arrow_back),
                                color: Colors.white,
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                              Spacer(),
                              Text(
                                "Gel Description",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                    fontWeight: FontWeight.w700),
                              ),
                              Spacer()
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 24),
                    height: MediaQuery.of(context).size.height / 2.5,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 10,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 4,
                                child: Container(
                                  margin:
                                      EdgeInsets.only(right: 12, bottom: 12),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      image: DecorationImage(
                                        image: NetworkImage(widget.imgPath),
                                        fit: BoxFit.cover,
                                      )),
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Honest Beauty",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      widget.product,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 16),
                                      child: Text(
                                        "A unique cleansing gel that removes impurities and unclogs pores for a brighter skin appearance",
                                        style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.8),
                                            letterSpacing: 1.5,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 13,
                                            wordSpacing: 1),
                                      ),
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 16),
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              height: 38,
                                              margin:
                                                  EdgeInsets.only(right: 16),
                                              padding: EdgeInsets.all(3),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  border: Border.all(
                                                    color: Colors.white,
                                                  )),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8)),
                                                padding: EdgeInsets.all(4),
                                                child: Row(
                                                  children: <Widget>[
                                                    Text(
                                                      "QTY",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    Spacer(),
                                                    Text(
                                                      "1",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    Icon(
                                                      Icons.keyboard_arrow_down,
                                                      size: 14,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              height: 38,
                                              margin:
                                                  EdgeInsets.only(right: 16),
                                              padding: EdgeInsets.all(3),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  border: Border.all(
                                                    color: Colors.white,
                                                  )),
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8)),
                                                  padding: EdgeInsets.all(4),
                                                  child: Center(
                                                    child: Text(
                                                      "Wish List",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  )),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 8),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16)),
                            child: Center(
                              child: Text(
                                "Purchase for \$${widget.price}",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 24, top: 16),
                    height: MediaQuery.of(context).size.height / 2.9,
                    width: MediaQuery.of(context).size.width,
                   
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Text("Compatible with:",style: TextStyle(
                          color: Colors.white,
                          fontSize: 22
                        ),),
                        Container(
                          height: MediaQuery.of(context).size.height / 3.5,
                          decoration: BoxDecoration(
                            color: Colors.deepOrange
                          ),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              DadGiftCard(title: "Towel",
                              price: "11.45",
                              imgPath: "https://cdn.pixabay.com/photo/2018/01/07/04/21/lavender-3066531__340.jpg",),
                              DadGiftCard(title: "Cream",
                                price: "68.80",
                                imgPath: "https://cdn.pixabay.com/photo/2018/06/25/13/00/cream-3496778__340.jpg",),
                              DadGiftCard(title: "Balm",
                                price: "11.45",
                                imgPath: "https://cdn.pixabay.com/photo/2018/01/07/04/21/lavender-3066531__340.jpg",),

                            ],
                          ),
                        )

                      ],
                    ),
                  )

                ],
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
