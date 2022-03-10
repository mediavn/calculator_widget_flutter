import 'package:calculator_widget_flutter/model/todo_model.dart';
import 'package:flutter/material.dart';
class TodosListview extends StatefulWidget {
  const TodosListview({Key? key}) : super(key: key);

  @override
  State<TodosListview> createState() => _TodosListviewState();
}

class _TodosListviewState extends State<TodosListview> {
  final List<ToDoModel> mListTodos = ToDoModel.getMock();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todos List"),
      ),
      body: Container(
        child: ListView.separated(
          itemCount: mListTodos.length,
          itemBuilder: (context, position){
            return itemListView(mListTodos[position]);
          },
          separatorBuilder: (context, position){
            return SizedBox(
              height: 10,
            );
          },
        ),
      ),

    );
  }
  Widget itemListView(ToDoModel toDoModel){
    return Card(
      child: ListTile(
        title: Text(toDoModel.title),
        subtitle: Text(toDoModel.description , maxLines: 1, overflow: TextOverflow.ellipsis,),
        isThreeLine: false,

        trailing: IconButton(
          icon: Icon(Icons.delete, color: Colors.red,),
          onPressed: (){

          },
        ),
      ),
    );
  },
  }
}
