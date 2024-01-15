import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  bool _passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: TextFormField(
        obscureText: _passwordVisible,
        controller: _passwordController,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 13, vertical: 15),
          filled: true,
          fillColor: _passwordController.text.trim().isNotEmpty
              ? Colors.white // Changed to grey when text is empty
              : Colors.grey[200],
          hintText: "Enter 6-digits password",
          border: InputBorder.none,
          suffixIcon: IconButton(
            icon: Icon(
                _passwordVisible ? Icons.visibility_off : Icons.visibility),
            color: Colors.black,
            onPressed: () {
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: BorderSide(
              color: Theme.of(context).primaryColorDark,
              style: BorderStyle.solid,
            ),
          ),
        ),
      ),
    );
  }
}
