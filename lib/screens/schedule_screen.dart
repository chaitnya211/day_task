import 'package:day_task/screens/new_task.dart';
import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff212832),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back,color: Colors.white),
        ),
        title: Text("Schedule",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.add_box_outlined,color: Colors.white),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DatePicker(
                height: 115,
                DateTime.now(),
                initialSelectedDate: DateTime.now(),
                selectionColor: Color(0xffFED36A),
                deactivatedColor: Color(0xff263238),
                selectedTextColor: Colors.white,
                onDateChange: (date) {
                  // New date selected
                  // setState(() {
                  //   _selectedValue = date;
                  // });
                },
              ),
              SizedBox(height: 25),
              Text("Today's Tasks",style: TextStyle(color: Colors.white,fontSize: 20),),
              SizedBox(height: 25),
              ListTile(
                tileColor: Color(0xffFED36A),
                title: Text("User Interviews",style: TextStyle(color: Colors.black,fontSize: 17),),
                subtitle: Text("16:00 - 18:30"),
                trailing: CircleAvatar(
                  radius: 15,
                  child: Icon(Icons.face_2_outlined),
                ),
              ),
              SizedBox(height: 17),
              Row(
                children: [
                  Container(
                    height: 67,
                    width: 10,
                    color: Color(0xffFED36A),
                  ),
                  Container(
                    width: 340,
                    height: 67,
                    child: ListTile(
                      tileColor: Color(0xff263238),
                      title: Text("Wireframe",style: TextStyle(color: Colors.white,fontSize: 16),),
                      subtitle: Text("16:00 - 18:30",style: TextStyle(color: Colors.white),),
                      trailing: CircleAvatar(
                        radius: 15,
                        child: Icon(Icons.face_2_outlined),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                ],
              ),
              SizedBox(height: 17),
              Row(
                children: [
                  Container(
                    height: 67,
                    width: 10,
                    color: Color(0xffFED36A),
                  ),
                  Container(
                    width: 340,
                    height: 67,
                    child: ListTile(
                      tileColor: Color(0xff263238),
                      title: Text("Icons",style: TextStyle(color: Colors.white,fontSize: 16),),
                      subtitle: Text("16:00 - 18:30",style: TextStyle(color: Colors.white),),
                      trailing: CircleAvatar(
                        radius: 15,
                        child: Icon(Icons.face_2_outlined),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                ],
              ),
              SizedBox(height: 17),
              Row(
                children: [
                  Container(
                    height: 67,
                    width: 10,
                    color: Color(0xffFED36A),
                  ),
                  Container(
                    width: 340,
                    height: 67,
                    child: ListTile(
                      tileColor: Color(0xff263238),
                      title: Text("Mockups",style: TextStyle(color: Colors.white,fontSize: 16),),
                      subtitle: Text("16:00 - 18:30",style: TextStyle(color: Colors.white),),
                      trailing: CircleAvatar(
                        radius: 15,
                        child: Icon(Icons.face_2_outlined),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                ],
              ),
              SizedBox(height: 17),
              Row(
                children: [
                  Container(
                    height: 67,
                    width: 10,
                    color: Color(0xffFED36A),
                  ),
                  Container(
                    width: 340,
                    height: 67,
                    child: ListTile(
                      tileColor: Color(0xff263238),
                      title: Text("Testing",style: TextStyle(color: Colors.white,fontSize: 16),),
                      subtitle: Text("16:00 - 18:30",style: TextStyle(color: Colors.white),),
                      trailing: CircleAvatar(
                        radius: 15,
                        child: Icon(Icons.face_2_outlined),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                ],
              )
            ],
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
            label: "Home",),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_month,
                color: Color(0xff617D8A),
              ),
              label: "Calendar"),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NewTask(),));
                },
                icon: Icon(Icons.add),
              ),
              label: "Add"
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
                color: Color(0xff617D8A),
              ),
              label: "Chat"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                color: Color(0xff617D8A),
              ),
              label: "Notification"),
        ],
      ),
    );
  }
}
