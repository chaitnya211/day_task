import 'package:day_task/screens/home_screen.dart';
import 'package:day_task/screens/sign_in.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 60, left: 20.0, right: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Image(
                  alignment: Alignment.center,
                  image: AssetImage('assets/images/main_page_logo.png'),
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Create your account",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(69, 84, 100, 1),
                        focusedBorder: OutlineInputBorder(),
                        border: OutlineInputBorder(),
                        labelText: "Full Name",
                        isDense: true,
                        labelStyle: TextStyle(color: Colors.white54),
                        prefixIcon: Icon(Icons.person, color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(69, 84, 100, 1),
                        focusedBorder: OutlineInputBorder(),
                        border: OutlineInputBorder(),
                        labelText: "Email Address",
                        isDense: true,
                        labelStyle: TextStyle(color: Colors.white54),
                        prefixIcon: Icon(Icons.email, color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(69, 84, 100, 1),
                        labelText: "Password",
                        isDense: true,
                        focusedBorder: OutlineInputBorder(),
                        labelStyle: TextStyle(color: Colors.white54),
                        prefixIcon: Icon(Icons.lock, color: Colors.white),
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(
                          Icons.visibility_off,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Container(
                      child: CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        dense: true,
                        side: BorderSide(
                            color: Color.fromRGBO(254, 211, 106, 1.0)),
                        checkColor: Color.fromRGBO(254, 211, 106, 1.0),
                        fillColor: MaterialStatePropertyAll(
                            Color.fromRGBO(33, 40, 50, 1.0)),
                        visualDensity: VisualDensity.compact,
                        contentPadding: EdgeInsets.symmetric(horizontal: 0.0),
                        title: Column(
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "I have read and agreed to DayTask ",
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.white70),
                                  ),
                                  TextSpan(
                                      text: "Privacy Policy,",
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Color.fromRGBO(
                                              254, 211, 106, 1.0))),
                                  TextSpan(
                                      text: "Terms & Conditions",
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Color.fromRGBO(
                                              254, 211, 106, 1.0)))
                                ],
                              ),
                            ),
                          ],
                        ),
                        value: isChecked,
                        checkboxShape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Color.fromRGBO(254, 211, 106, 1.0))),
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                    ),
                    SizedBox(height: 15.0),
                    ElevatedButton(
                        style: ButtonStyle(
                            minimumSize:
                                MaterialStatePropertyAll(Size(363, 50)),
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromRGBO(254, 211, 106, 1.0)),
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(2.0)),
                            )),
                        onPressed: () {},
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        )),
                    SizedBox(height: 15.0),
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
                    SizedBox(height: 25.0),
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
                    SizedBox(height: 10),
                    Container(
                      margin: EdgeInsets.only(left: 52.0),
                      child: Row(
                        children: [
                          Text("Already have an account? ",
                              style: TextStyle(color: Colors.white)),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignIn(),
                                  ));
                            },
                            child: Text(
                              "Log In",
                              style: TextStyle(
                                  color: Color.fromRGBO(254, 211, 106, 1.0)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(254, 211, 106, 1.0))
                        ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeScreen(),
                                ));
                          },
                          child: Text("Home",style: TextStyle(color: Colors.black),)),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
