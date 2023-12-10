import 'package:ToDoApp/bloc/tasks_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../model/task.dart';
import '../viewModel/appViewModel.dart';
class AddTask extends StatelessWidget {
   AddTask({super.key});
  TextEditingController txtFieldController=TextEditingController();

  @override
  Widget build(BuildContext context) {

    
      return Container(
        height: 250,
        color: Colors.grey[200],
        child: AlertDialog(
          title:  Text("Welcome Fatma!!"),
          content:  Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Add your Task :"),
              SizedBox(height: 15,),
              TextField(
                controller: txtFieldController,
                decoration: InputDecoration(
                  hintText: ("Enter Task Title "),
                  filled: true,
                  fillColor: Colors.grey[150],
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)
                  ),
                ),
              ),

            ],
          ),
          actions: <Widget>[
            BlocProvider<TasksCubit>(
              create: (context) => TasksCubit(),
              child: BlocBuilder<TasksCubit,List<Task>>(
                builder: (context, state) {
                  return TextButton(
                  child:  Text("Save"),
                  onPressed: () {
                  String titleTask=txtFieldController.text;
                  Task newTask= Task(title: titleTask,completed: false);
                  state.add(newTask);
                  Navigator.of(context).pop();
                  },
                  );
                },

              ),
            ),
          ],
        ),
      );

  



  }
}
