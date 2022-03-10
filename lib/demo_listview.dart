import 'package:flutter/material.dart';
class DemoListView extends StatefulWidget {
  const DemoListView({Key? key}) : super(key: key);

  @override
  State<DemoListView> createState() => _DemoListViewState();
}

class _DemoListViewState extends State<DemoListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo ListView"),
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
