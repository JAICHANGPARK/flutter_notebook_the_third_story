import 'package:flutter/material.dart';
import 'package:notebook_the_third_story/smart_home_app/sm_container.dart';

class SmartHomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SMHome(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade300,
        backgroundColor: Colors.grey.shade200,
        dialogBackgroundColor: Colors.grey.shade200,
      ),
    );
  }
}

class SMHome extends StatefulWidget {
  @override
  _SMHomeState createState() => _SMHomeState();
}

class _SMHomeState extends State<SMHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Positioned(
          left: 24,
          right: 24,
          top: 72,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text.rich(TextSpan(
                children: [
                  TextSpan(
                    text: "Hello, ",
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      fontSize: 32
                    )
                  ),
                  TextSpan(
                    text: "Dreamwalker!",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w300,
                    )
                  )
                ]
              )),
              SizedBox(height: 7,),
              Text("Aniting I can help you with?",style: TextStyle(
                color: Colors.black.withOpacity(0.4),
                fontWeight: FontWeight.w300
              ),),
              
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            height: 160,
            margin: EdgeInsets.only(top: 16),
            decoration: BoxDecoration(
//                color: Colors.grey.shade400,
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      Colors.grey.shade100,
                      Colors.grey.shade200,
                      Colors.grey.shade300,
                      Colors.blueGrey.shade200,
                    ]),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(48),
                  topLeft: Radius.circular(48),
                ),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 16,
                      offset: Offset(-24, -8),
                      color: Colors.white),
//                  BoxShadow(
//                      blurRadius: 16,
//                      offset: widget.blurOffset,
//                      color: color.mix(Colors.black, 0.3))
                ]),
          ),
        ),
      ],
    ));
  }
}
