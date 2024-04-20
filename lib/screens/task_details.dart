import 'package:day_task/screens/schedule_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskDetails extends StatefulWidget {
  const TaskDetails({super.key});

  @override
  State<TaskDetails> createState() => _TaskDetailsState();
}

class _TaskDetailsState extends State<TaskDetails> {
  bool _isChecked1 = false;
  bool _isChecked2 = false;
  bool _isChecked3 = false;
  bool _isChecked4 = false;
  bool _isChecked5 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 35.0, horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  "Task Details",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 19),
                ),
                trailing: const Image(
                    image: AssetImage("assets/images/edit_logo.png")),
              ),
              const SizedBox(height: 15),
              Center(
                child: const Text(
                  "Real Estate App Design",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: SizedBox(
                        height: 50,
                        width: 160,
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2.0)),
                                color: Color(0xffFED36A),
                              ),
                              child: const Icon(
                                Icons.calendar_month_outlined,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(width: 13),
                            Column(
                              children: [
                                Padding(padding: EdgeInsets.only(top: 2.5)),
                                Text(
                                  "Due Date",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white70),
                                ),
                                Text(
                                  "20 June",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        ),
                      )),
                  const SizedBox(width: 17),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Container(
                      height: 50,
                      width: 160,
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(2.0)),
                              color: Color(0xffFED36A),
                            ),
                            child: Icon(
                              Icons.people,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 13),
                          Column(
                            children: [
                              // Padding(padding: EdgeInsets.only(top: 2.5)),
                              Text(
                                "Project Team",
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white70),
                              ),
                              // Image(image: AssetImage('assets/images/one/ellipse1.jpg'))
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 15,
                                    child: Icon(Icons.face),
                                  ),
                                  CircleAvatar(
                                    radius: 15,
                                    child: Icon(Icons.face_2),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 22),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: const Text(
                  "Project Details",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: const Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                  "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
                  "when an unknown printer took a galley of type and scrambled",
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Text(
                      "Project Progress",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                    const SizedBox(width: 80),
                    Container(
                      height: 55,
                      width: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2)),
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
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  "All Tasks",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 8),
                padding: EdgeInsets.only(left: 25),
                decoration: BoxDecoration(color: Color(0xff455A64)),
                child: Row(
                  children: [
                    Text(
                      "User Interviews",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 160),
                    Container(
                      height: 38,
                      width: 38,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(2.0)),
                        color: Color(0xffFED36A),
                      ),
                      child: Checkbox(
                        value: _isChecked1,
                        onChanged: (value) {
                          setState(() {
                            _isChecked1 = value!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 8),
                padding: EdgeInsets.only(left: 25),
                decoration: BoxDecoration(color: Color(0xff455A64)),
                child: Row(
                  children: [
                    Text(
                      "Wireframes",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 195),
                    Container(
                      height: 38,
                      width: 38,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(2.0)),
                        color: Color(0xffFED36A),
                      ),
                      child: Checkbox(
                        value: _isChecked2,
                        onChanged: (value) {
                          setState(() {
                            _isChecked2 = value!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 8),
                padding: EdgeInsets.only(left: 25),
                decoration: BoxDecoration(color: Color(0xff455A64)),
                child: Row(
                  children: [
                    Text(
                      "Design Systems",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 155),
                    Container(
                      height: 38,
                      width: 38,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(2.0)),
                        color: Color(0xffFED36A),
                      ),
                      child: Checkbox(
                        value: _isChecked3,
                        onChanged: (value) {
                          setState(() {
                            _isChecked3 = value!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 8),
                padding: EdgeInsets.only(left: 25),
                decoration: BoxDecoration(color: Color(0xff455A64)),
                child: Row(
                  children: [
                    Text(
                      "Icons",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 247.5),
                    Container(
                      height: 38,
                      width: 38,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(2.0)),
                        color: Color(0xffFED36A),
                      ),
                      child: Checkbox(
                        value: _isChecked4,
                        onChanged: (value) {
                          setState(() {
                            _isChecked4 = value!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 8),
                padding: EdgeInsets.only(left: 25),
                decoration: BoxDecoration(color: Color(0xff455A64)),
                child: Row(
                  children: [
                    Text(
                      "Final Mockups",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    // SizedBox(width: 169),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 77.0),
                      child: Container(
                        height: 38,
                        width: 38,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(2.0)),
                          color: Color(0xffFED36A),
                        ),
                        child: Checkbox(
                          value: _isChecked5,
                          onChanged: (value) {
                            setState(() {
                              _isChecked5 = value!;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromRGBO(33, 40, 50, 1.0),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Color(0xffFED36A)),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
            ),
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ScheduleScreen(),));
          },
          child: Text(
            "Add Task",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
