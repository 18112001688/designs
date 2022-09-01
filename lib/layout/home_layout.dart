import 'package:flutter/material.dart';
import 'package:massanger_design/modules/done_tasks/done_tasks_screen.dart';

import '../modules/archived_tasks/archived_tasks_screen.dart';
import '../modules/new_tasks/new_tasks_screen.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int CurrentIndex=0;

  List <Widget> screens=[
    NewTasksScreen(),
    DoneTasksScreen(),
    ArchivedTasksScreen(),

  ];

  List <String> titles=[
    'New Tasks',
    'Done Tasks',
    'Archived Tasks',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titles[CurrentIndex]),
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: () {  },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: CurrentIndex,
        onTap: (index)
        {
          setState(() {
            CurrentIndex=index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'Tasks',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.check_circle_outline),
               label: 'Done'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.archive_outlined),
            label: 'Archive',
          ),
        ],

      ),
      body: screens[CurrentIndex],
    );
  }
}
