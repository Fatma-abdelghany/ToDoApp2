import 'package:ToDoApp/viewModel/appViewModel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/task.dart';

class TasksCubit extends Cubit<List<Task>>{
 // TasksCubit(super.initialState);
  TasksCubit() : super([]);
 // List<Task> items =[];



  AppViewModel appViewModel=AppViewModel();
  get Tasks=>emit(appViewModel.tasks);

  void addTask(Task item) {
    //Tasks.add(item);
   // emit(appViewModel.addTask(item));
    emit(Tasks.add(item));
  }


}