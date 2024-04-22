import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(33, 40, 50, 1.0),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text("Profile",
            style: TextStyle(color: Colors.white, fontSize: 20)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20.0),
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 5.0)),
              Center(
                child: CircleAvatar(
                  radius: 45,
                  backgroundImage: AssetImage("assets/images/profile.png"),
                ),
              ),
              SizedBox(height: 45.0),
              ListTile(
                tileColor: Color(0xff455A64),
                leading:
                    Icon(Icons.person_add_alt_rounded, color: Colors.white70),
                title: Text("Rohit Sharma"),
                trailing: IconButton(
                  icon: Icon(Icons.edit, color: Colors.white70),
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 19.0),
              ListTile(
                tileColor: Color(0xff455A64),
                leading: Icon(Icons.email, color: Colors.white70),
                title: Text("ro45s@gmail.com"),
                trailing: IconButton(
                  icon: Icon(Icons.edit, color: Colors.white70),
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 19.0),
              ListTile(
                tileColor: Color(0xff455A64),
                leading: Icon(Icons.password, color: Colors.white70),
                title: Text("Password"),
                trailing: IconButton(
                  icon: Icon(Icons.edit, color: Colors.white70),
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 19.0),
              // Drop down
              ListTile(
                tileColor: Color(0xff455A64),
                leading: Icon(Icons.list_outlined, color: Colors.white70),
                title: Text("My Tasks"),
                trailing: IconButton(
                  icon: Icon(Icons.edit, color: Colors.white70),
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 19.0),
              ListTile(
                tileColor: Color(0xff455A64),
                leading:
                    Icon(Icons.privacy_tip_outlined, color: Colors.white70),
                title: Text("Privacy"),
                trailing: IconButton(
                  icon: Icon(Icons.edit, color: Colors.white70),
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 19.0),
              ListTile(
                tileColor: Color(0xff455A64),
                leading: Icon(Icons.settings, color: Colors.white70),
                title: Text("Setting"),
                trailing: IconButton(
                  icon: Icon(
                    Icons.edit,
                    color: Colors.white70,
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 55.0),
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
                child: Wrap(
                  children: [
                    Icon(Icons.logout,color: Colors.black,),
                    SizedBox(width: 12.0),
                    Text(
                      "Logout",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    )
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
