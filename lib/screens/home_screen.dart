import 'package:day_task/screens/profile.dart';
import 'package:day_task/screens/notifications_screen.dart';
// import 'package:day_task/screens/schedule_screen.dart';
import 'package:day_task/screens/task_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// import 'notifications_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 35),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "Welcome back!",
                    style: TextStyle(
                        color: Color.fromRGBO(254, 211, 106, 1.0),
                        fontSize: 13),
                  ),
                  subtitle: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Profile(),));
                    },
                    child: Text(
                      "Rohit Sharma",
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                  trailing: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Profile(),
                          ));
                    },
                    child: CircleAvatar(
                      radius: 25.0,
                      backgroundColor: Colors.lightBlueAccent,
                      backgroundImage:
                          AssetImage('assets/images/profile_avatar.png'),
                    ),
                  ),
                ),
                SizedBox(height: 15.0),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              isDense: true,
                              filled: true,
                              prefixIcon: Icon(Icons.search),
                              prefixIconColor: Colors.white60,
                              focusedBorder: OutlineInputBorder(),
                              fillColor: Color.fromRGBO(69, 84, 100, 1),
                              hintText: "Search tasks",
                              hintStyle: TextStyle(
                                  color: Colors.white60, fontSize: 15),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(2.0),
                              color: Color.fromRGBO(254, 211, 106, 1.0),
                            ),
                            child: SizedBox(
                              height: 59,
                              child: Image(
                                // height: 40,
                                width: 30,
                                image: AssetImage('assets/images/setting3.png'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Row(
                  children: [
                    SizedBox(width: 15),
                    Text(
                      "Completed Tasks",
                      style: TextStyle(color: Colors.white, fontSize: 19),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 14),
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            "See all",
                            style: TextStyle(
                              color: Color.fromRGBO(254, 211, 106, 1.0),
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 9),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Align(
                          alignment: FractionalOffset.centerLeft,
                          child: Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(254, 211, 106, 1.0)),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Real Estate\nWebsite\nDesign",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      letterSpacing: 2.5,
                                      height: 1.2,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Team members",
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: Colors.black),
                                        ),
                                        Expanded(
                                          child: Stack(
                                            alignment: Alignment.centerRight,
                                            children: [
                                              Positioned(
                                                  child: CircleAvatar(
                                                radius: 14,
                                                backgroundImage: AssetImage(
                                                    'assets/images/team_members/Ellipse_4.png'),
                                              )),
                                              Positioned(
                                                  right: 15,
                                                  child: CircleAvatar(
                                                    radius: 14,
                                                    backgroundImage: AssetImage(
                                                        'assets/images/team_members/Ellipse_3.png'),
                                                  )),
                                              Positioned(
                                                  right: 30,
                                                  child: CircleAvatar(
                                                    radius: 14,
                                                    backgroundImage: AssetImage(
                                                        'assets/images/team_members/Ellipse_2.png'),
                                                  )),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 6, top: 6),
                                          child: Text(
                                            "Completed",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 13),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              right: 14, top: 12),
                                          child: Text("100%",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.right),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 2),
                                  Container(
                                    height: 5,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius:
                                            BorderRadius.circular(50.0)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Align(
                          alignment: FractionalOffset.centerLeft,
                          child: Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(69, 84, 100, 1)),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Finance\nMobile App\nDesign",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      letterSpacing: 2.5,
                                      height: 1.2,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Team members",
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: Colors.white),
                                        ),
                                        Expanded(
                                          child: Stack(
                                            alignment: Alignment.centerRight,
                                            children: [
                                              Positioned(
                                                  child: CircleAvatar(
                                                radius: 14,
                                                backgroundImage: AssetImage(
                                                    'assets/images/team_members/Ellipse_1.png'),
                                              )),
                                              Positioned(
                                                  right: 15,
                                                  child: CircleAvatar(
                                                    radius: 14,
                                                    backgroundImage: AssetImage(
                                                        'assets/images/team_members/Ellipse_3.png'),
                                                  )),
                                              Positioned(
                                                  right: 30,
                                                  child: CircleAvatar(
                                                    radius: 14,
                                                    backgroundImage: AssetImage(
                                                        'assets/images/team_members/Ellipse_5.png'),
                                                  )),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 6, top: 6),
                                          child: Text(
                                            "Completed",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              right: 14, top: 12),
                                          child: Text("100%",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.right),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 2),
                                  Container(
                                    height: 5,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(50.0)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Align(
                          alignment: FractionalOffset.centerLeft,
                          child: Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(69, 84, 100, 1)),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Health\nMobile App\nDesign",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      letterSpacing: 2.5,
                                      height: 1.2,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Team members",
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: Colors.white),
                                        ),
                                        Expanded(
                                          child: Stack(
                                            alignment: Alignment.centerRight,
                                            children: [
                                              Positioned(
                                                  child: CircleAvatar(
                                                radius: 14,
                                                backgroundImage: AssetImage(
                                                    'assets/images/team_members/Ellipse_4.png'),
                                              )),
                                              Positioned(
                                                  right: 15,
                                                  child: CircleAvatar(
                                                    radius: 14,
                                                    backgroundImage: AssetImage(
                                                        'assets/images/team_members/Ellipse_3.png'),
                                                  )),
                                              Positioned(
                                                  right: 30,
                                                  child: CircleAvatar(
                                                    radius: 14,
                                                    backgroundImage: AssetImage(
                                                        'assets/images/team_members/Ellipse_2.png'),
                                                  )),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 6, top: 6),
                                          child: Text(
                                            "Completed",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              right: 14, top: 12),
                                          child: Text("100%",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.right),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 2),
                                  Container(
                                    height: 5,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(50.0)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Text(
                      "Ongoing Projects",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 14),
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            "See all",
                            style: TextStyle(
                              color: Color.fromRGBO(254, 211, 106, 1.0),
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10.0),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(69, 84, 100, 1)),
                        height: 125,
                        width: 400,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Mobile App Wireframe",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                              textDirection: TextDirection.ltr,
                            ),
                            Text(
                              "Team Members",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.white),
                            ),
                            //
                            //               // Stack(
                            //               //   alignment: Alignment.centerRight,
                            //               //   children: [
                            //               //     Positioned(
                            //               //         child: CircleAvatar(
                            //               //           radius: 14,
                            //               //           backgroundImage: AssetImage(
                            //               //               'assets/images/team_members/Ellipse_4.png'),
                            //               //         )),
                            //               //     Positioned(
                            //               //         left: 14,
                            //               //         child: CircleAvatar(
                            //               //           radius: 14,
                            //               //           backgroundImage: AssetImage(
                            //               //               'assets/images/team_members/Ellipse_3.png'),
                            //               //         )),
                            //               //     Positioned(
                            //               //         left: 33,
                            //               //         child: CircleAvatar(
                            //               //           radius: 14,
                            //               //           backgroundImage: AssetImage(
                            //               //               'assets/images/team_members/Ellipse_2.png'),
                            //               //         )),
                            //               //   ],
                            //               // )
                            Row(
                              children: [
                                Text(
                                  "Due date : 21 April",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 140),
                                  child: Container(
                                    height: 55,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.white, width: 2)),
                                    child: Center(
                                      child: Text(
                                        "75%",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TaskDetails(),
                              ));
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 10.0),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(69, 84, 100, 1)),
                          height: 125,
                          width: 400,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Real Estate App Design",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                                textDirection: TextDirection.ltr,
                              ),
                              Text(
                                "Team Members",
                                style: TextStyle(
                                    fontSize: 13, color: Colors.white),
                              ),
                              //
                              //               // Stack(
                              //               //   alignment: Alignment.centerRight,
                              //               //   children: [
                              //               //     Positioned(
                              //               //         child: CircleAvatar(
                              //               //           radius: 14,
                              //               //           backgroundImage: AssetImage(
                              //               //               'assets/images/team_members/Ellipse_4.png'),
                              //               //         )),
                              //               //     Positioned(
                              //               //         left: 14,
                              //               //         child: CircleAvatar(
                              //               //           radius: 14,
                              //               //           backgroundImage: AssetImage(
                              //               //               'assets/images/team_members/Ellipse_3.png'),
                              //               //         )),
                              //               //     Positioned(
                              //               //         left: 33,
                              //               //         child: CircleAvatar(
                              //               //           radius: 14,
                              //               //           backgroundImage: AssetImage(
                              //               //               'assets/images/team_members/Ellipse_2.png'),
                              //               //         )),
                              //               //   ],
                              //               // )
                              Row(
                                children: [
                                  Text(
                                    "Due date : 10 May",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 140),
                                    child: Container(
                                      height: 55,
                                      width: 60,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: Colors.white, width: 2)),
                                      child: Center(
                                        child: Text(
                                          "60%",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10.0),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(69, 84, 100, 1)),
                        height: 125,
                        width: 400,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Dashboard & App Design",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                              textDirection: TextDirection.ltr,
                            ),
                            Text(
                              "Team Members",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.white),
                            ),
                            //
                            //               // Stack(
                            //               //   alignment: Alignment.centerRight,
                            //               //   children: [
                            //               //     Positioned(
                            //               //         child: CircleAvatar(
                            //               //           radius: 14,
                            //               //           backgroundImage: AssetImage(
                            //               //               'assets/images/team_members/Ellipse_4.png'),
                            //               //         )),
                            //               //     Positioned(
                            //               //         left: 14,
                            //               //         child: CircleAvatar(
                            //               //           radius: 14,
                            //               //           backgroundImage: AssetImage(
                            //               //               'assets/images/team_members/Ellipse_3.png'),
                            //               //         )),
                            //               //     Positioned(
                            //               //         left: 33,
                            //               //         child: CircleAvatar(
                            //               //           radius: 14,
                            //               //           backgroundImage: AssetImage(
                            //               //               'assets/images/team_members/Ellipse_2.png'),
                            //               //         )),
                            //               //   ],
                            //               // )
                            Row(
                              children: [
                                Text(
                                  "Due date : 2 June",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 140),
                                  child: Container(
                                    height: 55,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.white, width: 2)),
                                    child: Center(
                                      child: Text(
                                        "80%",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff263238),
        selectedItemColor: Color(0xffFED36A),
        unselectedItemColor: Colors.white,
        // selectedIconTheme: CupertinoIconThemeData(color: Color(0xffFED36A)),
        selectedIconTheme: IconThemeData(color: Color(0xffFED36A)),
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Color(0xff263238),
            icon: Icon(
              Icons.home,
              color: Color(0xff617D8A),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_month,
                color: Color(0xff617D8A),
              ),
              label: "Calendar"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box_outlined,
                color: Color(0xff617D8A),
              ),
              label: "Add"),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat, color: Color(0xff617D8A)), label: "Chat"),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NotificationScreen()));
                },
                icon: Icon(Icons.notifications),
                color: Color(0xff617D8A),
              ),
              label: "Notification"),
        ],
      ),
    );
  }
}
