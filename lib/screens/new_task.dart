import 'package:flutter/material.dart';

class NewTask extends StatefulWidget {
  const NewTask({super.key});

  @override
  State<NewTask> createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff212832),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Create New Task",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Task Title",
                style: TextStyle(color: Colors.white, fontSize: 23),
              ),
              SizedBox(height: 10),
              TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(69, 84, 100, 1),
                  labelText: "Project title",
                  labelStyle: TextStyle(color: Colors.white70,fontSize: 15),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              Text("Task Details",style: TextStyle(color: Colors.white,fontSize: 23),),
              SizedBox(height: 20),
              SizedBox(
                height: 150,
                child: TextField(
                  style: TextStyle(color: Colors.white70),
                  decoration: InputDecoration(
                    filled: true,
                    focusedBorder: OutlineInputBorder(),
                    fillColor: Color.fromRGBO(69, 84, 100, 1),
                    border: OutlineInputBorder(),
                    labelText: "Project Description",
                    labelStyle: TextStyle(color: Colors.white60),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text("Add Team Members",style: TextStyle(color: Colors.white,fontSize: 23),),
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      height: 42,
                      width: 140,
                      color: Color(0xff455A64),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: Color(0xffFED36A),
                            child: Image(image: AssetImage('assets/images/profile_avatar.png'),),
                          ),
                          SizedBox(width: 5.0),
                          Text("Robert",style: TextStyle(color: Colors.white,fontSize: 10),),
                          SizedBox(width: 30.0),
                          Icon(Icons.highlight_remove_rounded,color: Colors.white,)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 3.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      height: 42,
                      width: 140,
                      color: Color(0xff455A64),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: Color(0xffFED36A),
                            child: Image(image: AssetImage('assets/images/circle_profile.png'),),
                          ),
                          SizedBox(width: 5.0),
                          Text("Emilia",style: TextStyle(color: Colors.white,fontSize: 10),),
                          SizedBox(width: 30.0),
                          Icon(Icons.highlight_remove_rounded,color: Colors.white,)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 2.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.0,horizontal: 1.0),
                    child: Container(
                      height: 42,
                      width: 40,
                      decoration: const BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.circular(2.0)),
                        color: Color(0xffFED36A),
                      ),
                      child: Icon(Icons.add_box_outlined),
                    ),
                  ),
        
                ],
              ),
              SizedBox(height: 15),
              Text("Time & Data",style: TextStyle(color: Colors.white,fontSize: 22),),
              SizedBox(height: 15),
              Row(
                children: [
                  Container(
                    color: Color(0xff455A64),
                    child: Row(
                      children: [
                        Container(
                          height: 39,
                          width: 45,
                          decoration: const BoxDecoration(
                            borderRadius:
                            BorderRadius.all(Radius.circular(2.0)),
                            color: Color(0xffFED36A),
                          ),
                          child: Icon(Icons.watch_later_outlined),
                        ),
                        Center(
                          child: Container(
                            padding: EdgeInsets.only(left: 13.5,top: 6.5),
                            height: 39,
                            width: 110,
                            child: Text("10:30 AM",style: TextStyle(color: Colors.white),),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 5.0),
                  Container(
                    color: Color(0xff455A64),
                    child: Row(
                      children: [
                        Container(
                          height: 39,
                          width: 45,
                          decoration: const BoxDecoration(
                            borderRadius:
                            BorderRadius.all(Radius.circular(2.0)),
                            color: Color(0xffFED36A),
                          ),
                          child: Icon(Icons.calendar_month),
                        ),
                        Center(
                          child: Container(
                            padding: EdgeInsets.only(left: 13.5,top: 6.5),
                            height: 39,
                            width: 120,
                            child: Text("22/04/2024",style: TextStyle(color: Colors.white),),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 22.0),
              Center(
                child: Text("Add New",style: TextStyle(color: Colors.white,fontSize: 17),),
              ),
              SizedBox(height: 20),
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
                    "Create",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
