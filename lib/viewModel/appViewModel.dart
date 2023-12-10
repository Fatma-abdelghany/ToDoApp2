
import 'package:flutter/material.dart';

import '../model/task.dart';

class AppViewModel {
  List<Task> tasks=<Task>[];

  void addTask(Task newTask){
    tasks.add(newTask);
  }
  void removeTask(int taskNum){
    tasks.removeAt(taskNum);
  }
  int get tasksNum=>tasks.length;
  int get remainingTaskNum=>tasks.where((element) => !element.completed).length;
 // int get remainingTaskNum=>tasks.where((task) => task.completed!).length;
String getTasksTitle(int index){
  return tasks[index].title;

}
bool getStatusTask(int index){
  return tasks[index].completed;
}
 void changeTaskStatus(int index,bool status){
   tasks[index].completed=status;
 }
 void deleteAllTasks(){
  tasks.clear();
 }
  void deleteCompletedasks(){
   // tasks.where((element) => !element.completed).toList().clear();
    for(Task task in tasks){
      bool taskStatus=task.completed;
      if(taskStatus==true){
        tasks.remove(task);
      }

    }

  }

}