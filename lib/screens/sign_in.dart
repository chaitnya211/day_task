import 'package:day_task/screens/sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 90, left: 20.0, right: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                  child: Image(
                alignment: Alignment.center,
                image: AssetImage('assets/images/main_page_logo.png'),
                height: 100,
                fit: BoxFit.cover,
              )),
              SizedBox(height: 20.0),
              Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        "Welcome Back!",
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.white, fontSize: 26),
                        ),
                    SizedBox(height: 17),
                    TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        filled: true,
                        focusedBorder: OutlineInputBorder(),
                        fillColor: Color.fromRGBO(69, 84, 100, 1),
                        border: OutlineInputBorder(),
                        labelText: "Email Address",
                        isDense: true,
                        labelStyle: TextStyle(color: Colors.white54),
                        prefixIcon: Icon(Icons.email, color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 30),
                    TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        filled: true,
                        focusedBorder: OutlineInputBorder(),
                        fillColor: Color.fromRGBO(69, 84, 100, 1),
                        labelText: "Password",
                        isDense: true,
                        labelStyle: TextStyle(color: Colors.white54),
                        prefixIcon: Icon(Icons.lock, color: Colors.white),
                        suffixIcon: Icon(
                          Icons.visibility_off,
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(fontSize: 15, color: Colors.white70),
                      ),
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(
                      style: ButtonStyle(
                          minimumSize: MaterialStatePropertyAll(Size(363, 50)),
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromRGBO(254, 211, 106, 1.0)),
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2.0)),
                          )),
                      onPressed: () {},
                      child: Text(
                        "Log In",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 27),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.grey.shade400,
                            height: 1,
                            indent: 1.0,
                            endIndent: 19.0,
                            thickness: 1,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Or Sign in with",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.grey.shade400,
                            height: 1,
                            indent: 19.0,
                            endIndent: 1.0,
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Container(
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.white70, width: 1.5),
                            borderRadius: BorderRadius.circular(1.0)),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              minimumSize:
                                  MaterialStatePropertyAll(Size(363, 50)),
                              backgroundColor: MaterialStatePropertyAll(
                                  Color.fromRGBO(33, 40, 50, 19.0))),
                          onPressed: () {},
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image(
                                image:
                                    AssetImage('assets/images/google_logo.png'),
                              ),
                              SizedBox(width: 12.0),
                              Text(
                                "Google",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        )),
                    SizedBox(height: 21),
                    Container(
                      margin: EdgeInsets.only(left: 52.0),
                      child: Row(
                        children: [
                          Text("Don't have an account? ",
                              style: TextStyle(color: Colors.white)),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUp(),
                                  ));
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: Color.fromRGBO(254, 211, 106, 1.0)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
