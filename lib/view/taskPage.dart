import 'package:ToDoApp/view/tasksList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'floatingActionBtn.dart';
import 'numberTasks.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          // Expanded(
          //   flex: 1,
          //   child: NumberTasks()
          // ),
          SizedBox(height: 15,),
          Expanded(
            flex: 7,
            child: TasksList()
          )
        ],
      ),
      floatingActionButton: FloatingActionBtn(),

    );
  }
}
