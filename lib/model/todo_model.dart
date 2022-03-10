class ToDoModel{
  late String title;
  late String description;

  ToDoModel({required this.title, required this.description});

  @override
  String toString() {
    return 'ToDoModel{title: $title, description: $description}';
  }
  static List<ToDoModel> getMock(){
    return List.generate(10, (index) {
      return ToDoModel(
          title: "title ${index + 1}",
          description: "Theo tường thuật của Hãng thông tấn quốc gia Ukrinform của Ukraine, Tổng thống Zelensky nhấn mạnh các thỏa hiệp (với phía Nga) có thể được thực hiện nhưng không được phản bội đất nước. Đồng thời, ông Zelensky cũng yêu cầu phía Nga phải sẵn sàng thỏa hiệp vì đây là cách duy nhất để thoát khỏi tình trạng xung đột quân sự hiện tại.  ${index + 1}");
    });
  }
}