import 'package:flutter/material.dart';
import 'package:project_opay_clone/CheckBox.dart';
import 'package:project_opay_clone/vissibilityToggle.dart';

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12, top: 12),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        // Action here
                        Navigator.of(context)
                            .pop(); // Added navigation to pop the current page
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      "Sign In",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Welcome back!",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "VICTORY(******1757)",
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: MyCustomForm() //form page for login and signUp
                  ),
              Row(
                children: <Widget>[
                  MyCheckBox(),
                  Text(
                    "Remember Password",
                    style: TextStyle(fontSize: 12),
                  ),

                  const SizedBox(
                    width: 50,
                  ), // Expanded to take available space
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  //action goes in here
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 16.0, right: 16.0),
                  height: 54,
                  width: 500,
                  alignment: Alignment.center,
                  child: Text(
                    "Sign In",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColorDark,
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Switch account",
                  style: TextStyle(
                    color: Theme.of(context).primaryColorDark,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Login with fingerprint",
                style: TextStyle(color: Colors.grey[600], fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                      width: 3, color: Theme.of(context).primaryColorDark),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.message,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Need help?",
                    style: TextStyle(color: Colors.grey[700], fontSize: 16),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Chat with Opay support",
                    style: TextStyle(
                      color: Theme.of(context).primaryColorDark,
                      fontSize: 17,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
