// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text("Airen Victory"),
            accountEmail: Text("Victoryairen@gmail.com"),
            currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                    "Assets/Chelsea-Blue-Logo-HD-2015-Wallpaper.jpg")),
          ),
          const ListTile(
            leading: Icon(Icons.person),
            title: Text("Airen Victory Osinmen"),
            subtitle: Text("Computer Engineer"),
            trailing: Icon(Icons.edit),
          ),
          const ListTile(
            leading: Icon(Icons.email),
            trailing: Icon(Icons.edit),
            title: Text("Email Address"),
            subtitle: Text("airenvictorY@gmail.com"),
          )
        ],
      ),
    );
  }
}
