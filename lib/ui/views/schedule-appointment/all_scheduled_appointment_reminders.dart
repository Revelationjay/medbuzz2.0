import 'package:MedBuzz/ui/views/schedule-appointment/schedule_appointment_reminder_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:MedBuzz/ui/app_theme/app_theme.dart';
import 'dart:ui';
import 'package:MedBuzz/ui/size_config/config.dart';
import 'package:MedBuzz/ui/views/schedule-appointment/all_scheduled_appointment_reminders_model.dart';
// import 'package:table_calendar/table_calendar.dart';

class ScheduledAppointmentsPage extends StatefulWidget {
  @override
  _ScheduledAppointmentsPageState createState() {
    return _ScheduledAppointmentsPageState();
  }
}

class _ScheduledAppointmentsPageState extends State<ScheduledAppointmentsPage> {
  String month = 'July';
  int dateno = 12;
  String day = 'Thurs';
  var items = ['hi', 'hello', 'good', 'new', 'hi', 'now'];
  dynamic reminderMessage = 'Make sure to make lots of friends.';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: new Scaffold(
        backgroundColor: Color.fromARGB(255, 229, 229, 229),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 250, 250, 250),
          title: Container(
            child: Container(
              padding: EdgeInsets.all(0.0),
              child: new Text(
                'My Appointments',
                style: TextStyle(
                  color: Color.fromARGB(255, 51, 51, 51),
                  fontFamily: 'Segoe',
                  fontSize: Config.textSize(context, 3.8),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          leading: Container(
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Color.fromARGB(255, 51, 51, 51),
              ),

              // navigate to add appointments page

              onPressed: () => {Navigator.pushNamed(context, '')},
            ),
          ),
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Color.fromARGB(255, 97, 122, 220),
            labelColor: Color.fromARGB(255, 70, 70, 70),
            unselectedLabelColor: Color.fromARGB(255, 70, 70, 70),
            indicatorWeight: 2.0,
            tabs: [
              Tab(
                child: Text(
                  'Upcoming',
                  textScaleFactor: 0.8,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
              Tab(
                child: Text(
                  'Past',
                  textScaleFactor: 0.8,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              // Let the ListView know how many items it needs to build.
              itemCount: items.length,
              // Provide a builder function. This is where the magic happens.
              // Convert each item into a widget based on the type of item it is.
              itemBuilder: (context, index) {
                // final item = items[index];

                return Container(
                  child: Card(
                    margin: EdgeInsets.symmetric(
                      vertical: 20.0,
                      horizontal: 30.0,
                    ),
                    child: ListTile(
                      leading: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '$month',
                            style: TextStyle(
                              fontFamily: 'Segoe',
                              color: Colors.grey.shade600,
                              fontSize: Config.textSize(context, 0.9),
                            ),
                          ),
                          Text(
                            '$dateno',
                            style: TextStyle(
                              fontFamily: 'Segoe',
                              fontSize: Config.textSize(context, 2.0),
                              color: Color.fromARGB(255, 45, 191, 195),
                            ),
                          ),
                          Text(
                            '$day',
                            style: TextStyle(
                              fontFamily: 'Segoe',
                              color: Colors.grey.shade600,
                              fontSize: Config.textSize(context, 0.9),
                            ),
                          ),
                        ],
                      ),
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: Config.yMargin(context, 1.0),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                'Timing',
                                style: TextStyle(
                                  fontFamily: 'Segoe',
                                  color: Colors.grey.shade600,
                                  fontSize: Config.textSize(context, 2.0),
                                ),
                              ),
                              SizedBox(
                                width: Config.xMargin(context, 3.0),
                              ),
                              Text(
                                'Appointment For',
                                style: TextStyle(
                                  fontFamily: 'Segoe',
                                  color: Colors.grey.shade600,
                                  fontSize: Config.textSize(context, 2.0),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Config.yMargin(context, 1.0),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Text(
                                  '6:00PM',
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    color: Color.fromARGB(255, 51, 51, 51),
                                    fontSize: Config.textSize(context, 2.0),
                                  ),
                                ),
                                SizedBox(
                                  width: Config.xMargin(context, 2.0),
                                ),
                                Text(
                                  'Dance Class',
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    color: Color.fromARGB(255, 51, 51, 51),
                                    fontSize: Config.textSize(context, 2.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: Config.yMargin(context, 1.0),
                            child: Center(
                              child: Divider(
                                thickness: 1.0,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              reminderMessage,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromARGB(255, 51, 51, 51),
                                fontSize: Config.textSize(context, 2.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                      trailing: PopupMenuButton(
                          icon: Icon(
                            Icons.more_vert,
                            size: Config.yMargin(context, 2.0),
                            color: Colors.grey,
                          ),
                          itemBuilder: (BuildContext context) {
                            return menuitems.map((MenuItem menuitem) {
                              return PopupMenuItem(
                                child: Card(
                                  borderOnForeground: true,
                                  color: Color.fromARGB(255, 245, 244, 244),
                                  child: ListTile(
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 0.0, horizontal: 0.0),
                                    title: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            menuitem.menuValue,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              backgroundColor: Color.fromARGB(
                                                  255, 245, 244, 244),
                                            ),
                                          ),
                                        ),
                                        Container(),
                                      ],
                                    ),
                                    onTap: () => {
                                      if (menuitem.menuValue == 'Edit')
                                        {}
                                      else if ((menuitem.menuValue == 'Delete'))
                                        {
                                          _asyncConfirmDialog(context),
                                        },
                                    },
                                  ),
                                ),
                              );
                            }).toList();
                          }),
                    ),
                  ),
                );
              },
            ),
            ListView.builder(
              // Let the ListView know how many items it needs to build.
              itemCount: items.length,
              // Provide a builder function. This is where the magic happens.
              // Convert each item into a widget based on the type of item it is.
              itemBuilder: (context, index) {
//                final item = items[index];

                return Container(
                  height: Config.yMargin(context, 3.8),
                  child: Card(
                    margin: EdgeInsets.symmetric(
                      vertical: 20.0,
                      horizontal: 30.0,
                    ),
                    child: ListTile(
                      //title: item.buildTitle(context),
                      //subtitle: item.buildSubtitle(context),
                      title: Text('hi'),
                      subtitle: Text('hello'),
                      isThreeLine: true,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

enum ConfirmAction { Cancel, Delete }

Future<ConfirmAction> _asyncConfirmDialog(BuildContext context) async {
  return showDialog<ConfirmAction>(
    context: context,
    barrierDismissible: false, // user must tap button for close dialog!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          'One appointment will be deleted.',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: const Text(
              'Cancel',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 12.0,
                color: Colors.grey,
              ),
            ),
            color: Color.fromARGB(255, 229, 229, 229),
            onPressed: () {
              // go back to scheduled appointments page
              Navigator.of(context).pop(ConfirmAction.Cancel);
            },
          ),
          FlatButton(
            child: const Text(
              'Delete',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 12.0,
                color: Colors.red,
              ),
            ),
            color: Color.fromARGB(255, 229, 229, 229),
            onPressed: () {
              // delete action
              Navigator.of(context).pop(ConfirmAction.Delete);
            },
          )
        ],
      );
    },
  );
}