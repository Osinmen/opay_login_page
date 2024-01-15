import 'package:flutter/material.dart';

class NameCardWidget extends StatelessWidget {
  const NameCardWidget({
    super.key,
    required this.myText,
    required TextEditingController namecontroller,
  }) : _namecontroller = namecontroller;

  final String myText;
  final TextEditingController _namecontroller;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(016.0),
        child: Column(
          children: <Widget>[
            Image.asset("Assets/Chelsea-Blue-Logo-HD-2015-Wallpaper.jpg"),
            const SizedBox(
              height: 20,
            ),
            Text(
              myText,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.00),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _namecontroller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter some text",
                    hintStyle: TextStyle(fontSize: 15),
                    labelText: "Name"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter your password",
                    hintStyle: TextStyle(fontSize: 15),
                    labelText: "Password"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
