import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notebook_the_third_story/hotel_booking_app/hot_hotels.dart';
import 'package:notebook_the_third_story/hotel_booking_app/popular_hotel.dart';
import 'package:notebook_the_third_story/hotel_booking_app/top_widget.dart';

class HotelBookingApp extends StatelessWidget {
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
  int currentIndex = 0;
  TextEditingController _textEditingController = TextEditingController();

  Widget _buildBottomNavBar() {
    return BottomNavigationBar(
      elevation: 9,
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (newValue) {
        setState(() {
          currentIndex = newValue;
        });
      },
      selectedItemColor: Colors.greenAccent,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
        BottomNavigationBarItem(
            icon: Icon(Icons.search), title: Text("Explore")),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border), title: Text("Trips")),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle), title: Text("Profile")),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(),
            ),
            TopWidget(
              textEditingController: _textEditingController,
            ),
            SizedBox(
              height: 16,
            ),
            PopularHotelWidget(),
            HotHotelsWidget(),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }
}
