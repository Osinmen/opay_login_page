import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({super.key});

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.green,
      checkColor: Colors.white,
      value: isChecked,
      onChanged: (bool? value) {
        setState(
          () {
            isChecked = value!;
          },
        );
      },
    );
  }
}
