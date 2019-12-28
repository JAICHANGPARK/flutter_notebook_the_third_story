import 'package:flutter/material.dart';

class DoctorDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {},
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(24),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2019/12/06/13/40/anesthesia-4677401_960_720.jpg"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Container(
                      padding: EdgeInsets.only(left: 16, top: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Dr. Stefeni",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          Text(
                            "Albert",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          Text(
                            "Heart Speailist",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: 22,
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: MediaQuery.of(context).size.height / 10,
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        right: 12, top: 8, bottom: 8),
                                    decoration: BoxDecoration(
                                        color: Colors.orange[100],
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    child: Center(
                                      child: Icon(
                                        Icons.alternate_email,
                                        color: Colors.orange,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        right: 12, top: 8, bottom: 8),
                                    decoration: BoxDecoration(
                                        color: Colors.red[100],
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    child: Center(
                                      child: Icon(
                                        Icons.call,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        right: 12, top: 8, bottom: 8),
                                    decoration: BoxDecoration(
                                        color: Colors.blueGrey[100],
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    child: Center(
                                      child: Icon(
                                        Icons.camera_enhance,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.green,
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.yellow,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
