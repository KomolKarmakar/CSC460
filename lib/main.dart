import 'package:flutter/material.dart';
import 'package:csc460/scren/screen1.dart';

void main() {
  runApp(TaskManagerApp());
}

final GlobalKey<NavigatorState> taskNavigatorKey = GlobalKey<NavigatorState>();

class TaskManagerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: taskNavigatorKey,
      home: Scaffold(
        key: Key('task_manager_home_scaffold'),
        backgroundColor: Colors.black, // Background color changed to black
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to PlanMe',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Text color changed to white
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.only(top: 70.0), // Push down by 70 pixels
                child: Text(
                  'Your personal organizer and task planner',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white, // Text color changed to white
                  ),
                ),
              ),
              SizedBox(height: 32),
              ElevatedButton(
                key: Key('get_started_task_button'),
                onPressed: () {
                  taskNavigatorKey.currentState!.push(MaterialPageRoute(builder: (context) => TaskBoardPage()));
                },
                child: Text('Start Planning'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey[300]),
                  foregroundColor: MaterialStateProperty.all(Colors.white), // Text color changed to white
                  textStyle: MaterialStateProperty.all(TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
