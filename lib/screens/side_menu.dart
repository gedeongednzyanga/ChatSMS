import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: CircleAvatar(
              child: Image(
                image: AssetImage("assets/avatar00.png"),
              ),
            ),
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Icon(Icons.delete),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Supp. tous les messages",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                )
              ],
            ),
            onTap: () => {},
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Icon(Icons.message),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Messages",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                )
              ],
            ),
            onTap: () => {},
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Icon(Icons.settings),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Paramètres",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                )
              ],
            ),
            onTap: () => {},
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Icon(Icons.account_box),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Mon profil",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                )
              ],
            ),
            onTap: () => {},
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Icon(Icons.share),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Partager l'app",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                )
              ],
            ),
            onTap: () => {},
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Icon(Icons.info),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "A propos",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                )
              ],
            ),
            onTap: () => {},
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Icon(Icons.exit_to_app),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Quitter",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                )
              ],
            ),
            onTap: () => {},
          ),
        ],
      ),
    );
  }
}
