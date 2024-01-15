import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  static const String routeName = "/Login";
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: const Text(
            "Login Page",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              "Assets/gettyimages-1243010386-612x612.jpg",
              fit: BoxFit.cover,
              color: Colors.blue.withOpacity(0.7),
              colorBlendMode: BlendMode.darken,
            ),
            Center(
              child: SingleChildScrollView(
                  key: formKey,
                  child: Form(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                controller: _nameController,
                                decoration: InputDecoration(
                                    hintText: "Enter your email Address",
                                    labelText: "Username",
                                    border: OutlineInputBorder()),
                              ),
                              const SizedBox(height: 20),
                              TextFormField(
                                keyboardType: TextInputType.text,
                                controller: _passwordController,
                                decoration: InputDecoration(
                                    hintText: "Enter your Password",
                                    labelText: "Password",
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.blue,
                                            style: BorderStyle.solid))),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, HomePage.routeName);
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => HomePage()));
                                },
                                child: Text("Sign In"),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue,
                                  onPrimary: Colors.white,
                                ),
                              ),
                              InkWell(
                                  onTap: () {},
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    height: 40,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(30),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                          ),
                                        ]),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                  )),
            ),
          ],
        ));
  }
}
