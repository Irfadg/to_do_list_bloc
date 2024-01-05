
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list_bloc/model/todomodel.dart';

class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);

  void addToTodo(String title,DateTime date){

    final todo = Todo(todoName: title, whenToDoCreated: date);

    emit([...state,todo]);
      
  }
}
