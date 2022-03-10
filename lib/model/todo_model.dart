class ToDoModel{
  late String title;
  late String description;

  ToDoModel({required this.title, required this.description});

  @override
  String toString() {
    return 'ToDoModel{title: $title, description: $description}';
  }
}