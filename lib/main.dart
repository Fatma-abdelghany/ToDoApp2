import 'package:ToDoApp/bloc/tasks_cubit.dart';
import 'package:ToDoApp/view/taskPage.dart';
import 'package:ToDoApp/viewModel/appViewModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<TasksCubit>(
          create: (context) => TasksCubit(),
          child: TaskPage()),
    );
  }
}
