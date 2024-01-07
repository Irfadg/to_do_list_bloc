
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list_bloc/model/todomodel.dart';

class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);

  void addToTodo(String title,DateTime date){

    if(title.isEmpty){
      addError('Titlr is empty');
    }

    final todo = Todo(todoName: title, whenToDoCreated: date);

    emit([...state,todo]);
      
  }
  @override
  void onChange(Change<List<Todo>> change) {
    // TODO: implement onChange
    super.onChange(change);

    print('todo $change');

  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    // TODO: implement onError
    super.onError(error, stackTrace);

    print(error);

  }
}
