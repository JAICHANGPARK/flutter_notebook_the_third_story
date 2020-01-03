import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notebook_the_third_story/note_utils.dart';

class UserProfilePage extends StatefulWidget {
  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  Color appAccentColor = Color(0xff68FE9A); // 104 254 154 68 fe 9a
  Color bgColor = Color(0xFF24272C); // 36 39 44 24 27 2c
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: MediaQuery.of(context).size.height / 2,
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.8),
                        Colors.black.withOpacity(0.4),
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      stops: [0, 1]),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2017/07/31/22/04/people-2561506__340.jpg"),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.2), BlendMode.darken))),
              child: SafeArea(
                top: true,
                left: true,
                right: true,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                                color: Colors.black, shape: BoxShape.circle),
                            child: Center(
                              child: Icon(
                                Icons.keyboard_arrow_left,
                                color: appAccentColor,
                              ),
                            ),
                          ),
                          Text(
                            "Dreamwalker",
                            style: Theme.of(context).textTheme.body1.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          CircleAvatar(
                            backgroundImage: NetworkImage(dreamwalkerImg),
                            radius: 16,
                          )
                        ],
                      ),
                      Spacer(),
                      Text(
                        "Pro Player",
                        style: GoogleFonts.righteous(
                            textStyle: TextStyle(
                          color: appAccentColor,
                        )),
                      ),
                      Text("Dream",
                          style: GoogleFonts.righteous(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2))),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text("Walker",
                              style: GoogleFonts.righteous(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 32,
                                      letterSpacing: 2))),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff4b6afe), // 75 106 254 6b6afe
                            ),
                            child: Center(
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 16,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 38,
                            width: 160,
                            decoration: BoxDecoration(
                                color: appAccentColor,
                                borderRadius: BorderRadius.circular(24)),
                            child: Center(
                              child: Text(
                                "Follow",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 38,
                            width: 38,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              shape: BoxShape.circle,
                              color: Colors.black,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.more_vert,
                                color: appAccentColor,
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 6,
                            width: 6,
                            decoration: BoxDecoration(
                              color: appAccentColor,
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 6,
                            width: 6,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 6,
                            width: 6,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              shape: BoxShape.circle,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 32,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: MediaQuery.of(context).size.height / 2,
            bottom: MediaQuery.of(context).size.height / 2.8,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("543 978",
                          style: GoogleFonts.righteous(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 21,
                                  letterSpacing: 2))),
                      Text("Followers",
                          style: GoogleFonts.righteous(
                              textStyle: TextStyle(
                                  color: appAccentColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  letterSpacing: 2)))
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("842",
                          style: GoogleFonts.righteous(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 21,
                                  letterSpacing: 2))),
                      Text("Following",
                          style: GoogleFonts.righteous(
                              textStyle: TextStyle(
                                  color: appAccentColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  letterSpacing: 2)))
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("173",
                          style: GoogleFonts.righteous(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 21,
                                  letterSpacing: 2))),
                      Text("Posts",
                          style: GoogleFonts.righteous(
                              textStyle: TextStyle(
                                  color: appAccentColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  letterSpacing: 2)))
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: MediaQuery.of(context).size.height / 1.55,
            bottom: 0,
            child: Placeholder(),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 80,
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FloatingActionButton(
                    child: Icon(
                      Icons.add,
                      color: Colors.black,
                      size: 28,
                    ),
                    backgroundColor: appAccentColor,
                    onPressed: () {},
                  ),
                  Container(
                    height: 52,
                    width: MediaQuery.of(context).size.width - 120,
                    padding: EdgeInsets.only(right: 24, left: 24),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Badge(
                          child: Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                          showBadge: false,
                        ),
                        Badge(
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          showBadge: false,
                        ),
                        Badge(
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                          showBadge: true,
                          badgeColor: appAccentColor,
                          badgeContent: Text("2"),
                        ),
                        Badge(
                          child: Icon(
                            Icons.mail_outline,
                            color: Colors.white,
                          ),
                          showBadge: true,
                          badgeColor: appAccentColor,
                          badgeContent: Text("3"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
