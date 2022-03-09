import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final TextEditingController numberOneController = TextEditingController();
  final TextEditingController numberTwoController = TextEditingController();
  double? result;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Máy tính bỏ túi".toUpperCase(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  color: Colors.red,
                  fontSize: width / 20,
                  fontWeight: FontWeight.w600,
                ),
            ),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: numberOneController,
                decoration: InputDecoration(
                  hintText: "Input number 1",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: numberTwoController,
                decoration: InputDecoration(
                  hintText: "Input number 2",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            showResult(),
            Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            onPressed: (){
                            String number1 = numberOneController.text.toString();
                            String number2 = numberTwoController.text.toString();

                              if(number1.isEmpty || number2.isEmpty){
                                ScaffoldMessenger
                                    .of(context)
                                    .showSnackBar(
                                    SnackBar(content: Text("Empty value")));
                                return;
                              }
                              setState(() {
                                result = (int.parse(number1) + int.parse(number2)).toDouble();
                              });
                            },
                            child: Text("+")),
                        ElevatedButton(
                            onPressed: (){
                              String number1 = numberOneController.text.toString();
                              String number2 = numberTwoController.text.toString();

                              if(number1.isEmpty || number2.isEmpty){
                                ScaffoldMessenger
                                    .of(context)
                                    .showSnackBar(
                                    SnackBar(content: Text("Empty value")));
                                return;
                              }
                              setState(() {
                                result = (int.parse(number1) - int.parse(number2)).toDouble();
                              });
                            },
                            child: Text("-")),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            onPressed: (){
                              String number1 = numberOneController.text.toString();
                              String number2 = numberTwoController.text.toString();

                              if(number1.isEmpty || number2.isEmpty){
                                ScaffoldMessenger
                                    .of(context)
                                    .showSnackBar(
                                    SnackBar(content: Text("Empty value")));
                                return;
                              }
                              setState(() {
                                result = ((int.parse(number1))*(int.parse(number2))).toDouble();
                              });
                            },
                            child: Text("*")),
                        ElevatedButton(
                            onPressed: (){
                              String number1 = numberOneController.text.toString();
                              String number2 = numberTwoController.text.toString();

                              if(number1.isEmpty || number2.isEmpty){
                                ScaffoldMessenger
                                    .of(context)
                                    .showSnackBar(
                                    SnackBar(content: Text("Empty value")));
                                return;
                              }else if(number2 == 0){
                                ScaffoldMessenger
                                    .of(context)
                                    .showSnackBar(
                                    SnackBar(content: Text("Empty value ...")));
                                return;
                              }else
                              setState(() {
                                result = ((int.parse(number1))/(int.parse(number2))).toDouble();
                              });
                            },
                            child: Text("/")),
                      ],
                    )
                  ],

            ))
          ],
        ),
      ),
    );
  }
  Widget showResult(){
    if(result != null){
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(child: Text("= $result")),
      );
    }else{
      return Container();
    }
  }
}
