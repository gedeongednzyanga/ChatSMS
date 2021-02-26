import 'package:ChatSMS/screens/side_menu.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Chat SMS",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 30.0,
            onPressed: () {},
          )
        ],
      ),
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed("screens/read_message");
              },
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/user.png"),
                      backgroundColor: Colors.transparent,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              "Gedeon Nzyanga Ged",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                  fontFamily: "Arial"),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              "12:30",
                              style: TextStyle(
                                  fontSize: 15.0, fontFamily: "Arial"),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: Text(
                            "Bonjour, je suis vraiment de vous rencontrer. Bonjour, je suis vraiment de vous rencontrer",
                            style: TextStyle(
                                fontFamily: "Arial", color: Colors.black),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text("09:12"),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text("New"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/user.png"),
                    backgroundColor: Colors.transparent,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            "Fabrice N-Cash",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                                fontFamily: "Arial"),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "18:55",
                            style:
                                TextStyle(fontSize: 15.0, fontFamily: "Arial"),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.75,
                        child: Text(
                          "Bonjour, je suis vraiment de vous rencontrer. Bonjour, je suis vraiment de vous rencontrer",
                          style: TextStyle(
                              fontFamily: "Arial", color: Colors.black),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text("09:12"),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text("New"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("screens/write_message");
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
