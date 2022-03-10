import 'package:flutter/material.dart';
class TodosListview extends StatefulWidget {
  const TodosListview({Key? key}) : super(key: key);

  @override
  State<TodosListview> createState() => _TodosListviewState();
}

class _TodosListviewState extends State<TodosListview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todos List"),
      ),
      body: Container(
        child: ListView.separated(
          itemCount: 10,
          itemBuilder: (context, position){
            return Text("View $position ");
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
}
