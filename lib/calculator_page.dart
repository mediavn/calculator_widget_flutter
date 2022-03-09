import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final TextEditingController numberOneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator Page"),
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              controller: numberOneController,
              onChanged: (text){

              },
              decoration: InputDecoration(
                hintText: "Input Number 1",
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: (){
                    String text = numberOneController.text.toString();
                    print(text);
                  },
                  icon: Icon(Icons.remove_red_eye_rounded),
                ),
                prefixIcon: IconButton(onPressed: (){
                  print("Click Ok");
                }, icon: Icon(Icons.access_alarm),)
              ),
              keyboardType: TextInputType.number ,
              //obscureText: true, //=> sẽ ẩn text như mật khẩu
              cursorColor: Colors.red,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly
              ],
            )
          ],
        ),

      ),
    );
  }
}
