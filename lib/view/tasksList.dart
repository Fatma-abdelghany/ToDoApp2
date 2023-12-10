import 'package:ToDoApp/bloc/tasks_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../model/task.dart';
import '../viewModel/appViewModel.dart';
class TasksList extends StatelessWidget {
   TasksList({super.key});
   bool completed=false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksCubit,List<Task>>(
      builder: ( context, state) {
        if(state.isEmpty){
          return Center(child: Container(child: Text("Add Your Tasks"),));
        }else{
          return Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color:Colors.grey ,
                borderRadius: BorderRadius.circular(15)

            ),
            child: ListView.separated(
              itemCount: state.length,
              separatorBuilder: (context, index){
                return SizedBox(height: 10,);
              },
              itemBuilder: (context, index){
                return Card(
                  color: Colors.white,
                  child: ListTile(
                    // leading: Checkbox(
                    //   value: viewModel.getStatusTask(index),
                    //   onChanged: (bool? value) {
                    //     viewModel.changeTaskStatus(index,value!);
                    //   },
                    // ),
                    title: Text(state[index].title,style: TextStyle(color: Colors.black),),
                  ),
                );
              },


            ),
          );
        }
      },

    );
  }
}
