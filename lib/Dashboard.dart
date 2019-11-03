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
          title: new Text('SuperWise Construction Pvt Ltd.',
              style: TextStyle(fontSize: 19, color: Colors.white70)),
          iconTheme: new IconThemeData(color: Colors.white70),
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
                          radius: 25,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: Text(
                                      "User Name", textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                              //SizedBox(height:1,width: 200),
                              Padding(
                                padding: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "email@domain.com", textAlign: TextAlign.left,
                                  style: TextStyle(color: Colors.white70),
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 0.0),
                      child: new FlatButton(
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: Text("ADMIN"),
                        onPressed: () {},
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(40.0),
                        ),
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                ),
              ),


//              Expanded(
//                child: ListView(
//                  children: <Widget>[
//                 ListTile(
//                    title: Text("Resource"),
//                    subtitle: Text("Material, Equipment, Labour, Tools")
//              ),
//                 ListTile(
//                    title: Text("Task Report"),
//                    subtitle: Text("Task schedule, Summary, Alerts"),
//              ),
//                  ListTile(
//                    title: Text("Cost Report"),
//                    subtitle: Text("Cost Planning, Measurements, Summary"),
//              ),
//                  ListTile(
//                    title: Text("Quality & Safety"),
//                    subtitle: Text("Issues, NCR, Checklist"),
//                ),
//    ],
//                ),
//              )
            ]
        ),
      ),

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _cIndex,
          type: BottomNavigationBarType.shifting,
          items: [BottomNavigationBarItem(
              icon: Icon(
                  Icons.dashboard, color: Colors.grey),
              activeIcon: Icon(Icons.dashboard,
                  color: Colors.blue),
              title: Text('dashboard')
          ),
            BottomNavigationBarItem(
                icon: Icon(
                    Icons.domain, color: Colors.grey),
                activeIcon: Icon(Icons.domain, color: Colors.blue,),
                title: Text('Dashboard')
            ),
            // BottomNavigationBarItem(
            // icon: Icon(Icons.add, color: Colors.grey),
            // activeIcon: Icon(Icons.add),
            // )
          ],
          onTap: (index) {
            _incrementTab(index);
          },
        ),
    );
  }
}