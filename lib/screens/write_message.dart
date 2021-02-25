import 'package:flutter/material.dart';

class WriteMessage extends StatefulWidget {
  WriteMessage({Key key}) : super(key: key);

  @override
  _WriteMessageState createState() => _WriteMessageState();
}

class _WriteMessageState extends State<WriteMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nouveau message"),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Trouver un contact",
                labelStyle: TextStyle(
                    fontSize: 20.0, fontFamily: "Arial", color: Colors.black54),
                icon: Icon(
                  Icons.person,
                  color: Colors.grey,
                  size: 60.0,
                ),
              ),
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.photo), onPressed: () {}),
                Expanded(
                    child: TextField(
                  decoration:
                      InputDecoration(hintText: "Taper votre message..."),
                )),
                IconButton(icon: Icon(Icons.send), onPressed: () {}),
              ],
            ),
          )
        ],
      ),
    );
  }
}
