//import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  int _cIndex = 0;

  void _incrementTab(index){
    setState(() {
      _cIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
        appBar: new AppBar(
          title: new Text('SuperWise Construction Pvt. Ltd.'),
          backgroundColor: Colors.blueGrey,
        ),
      drawer: Drawer(

        child: ListView(
          padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 30,
                        ),
                        Expanded(
                          child: Text('User Name',textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.white,fontSize: 20),),
                        ),

                      ],
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text("Resource"),
                subtitle: Text("Material, Equipment, Labour, Tools")
              ),
              ListTile(
                title: Text("Task Report"),
                subtitle: Text("Task schedule, Summary, Alerts"),
              ),
              ListTile(
                title: Text("Cost Report"),
                subtitle: Text("Cost Planning, Measurements, Summary"),
              ),
              ListTile(
                title: Text("Quality & Safety"),
                subtitle: Text("Issues, NCR, Checklist"),
              )
            ]
        ),
      ),

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _cIndex,
          type: BottomNavigationBarType.shifting,
          items: [BottomNavigationBarItem(
              icon: Icon(
                  Icons.ac_unit, color: Color.fromARGB(255, 0, 0, 0)),
              title: new Text('Project')
          ),
            BottomNavigationBarItem(
                icon: Icon(
                    Icons.access_alarm, color: Color.fromARGB(255, 0, 0, 0)),
                title: new Text('Dashboard')
            ),
          ],
          onTap: (index) {
            _incrementTab(index);
          },

        ),
    );
  }
}

