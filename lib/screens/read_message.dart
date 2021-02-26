import 'package:flutter/material.dart';

class ReadMessage extends StatefulWidget {
  ReadMessage({Key key}) : super(key: key);

  @override
  _ReadMessageState createState() => _ReadMessageState();
}

class _ReadMessageState extends State<ReadMessage> {
  List<String> messages = ['Salut', 'ca va ', 'je vais bien'];

  _builMessage(String message, bool me) {
    return Container(
      margin: me
          ? EdgeInsets.only(top: 8.0, bottom: 8.0, left: 80.0)
          : EdgeInsets.only(top: 8.0, bottom: 8.0, right: 80.0),
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
      decoration: me
          ? BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                bottomLeft: Radius.circular(15.0),
              ),
            )
          : BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              ),
            ),
      child: Text(
        messages[2],
      ),
    );
  }

  _builCompose() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 70.0,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          IconButton(icon: Icon(Icons.photo), onPressed: () {}),
          Expanded(
            child: TextField(
              decoration:
                  InputDecoration.collapsed(hintText: "Ecrire un message..."),
            ),
          ),
          IconButton(icon: Icon(Icons.send), onPressed: () {}),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Gédéon Nzyanga",
              style: TextStyle(
                fontSize: 14.0,
                fontFamily: "Arial",
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              "+243997235842",
              style: TextStyle(
                fontSize: 13.0,
                fontFamily: "Arial",
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.call),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: ClipRRect(
                child: ListView.builder(
                  reverse: true,
                  padding: EdgeInsets.only(top: 10.0),
                  itemCount: messages.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _builMessage(messages[index], true);
                  },
                ),
              ),
            ),
          ),
          _builCompose(),
        ],
      ),
    );
  }
}
