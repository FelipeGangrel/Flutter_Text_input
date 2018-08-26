import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Input Text",
    home: new MyTextInput(),
  ));
}

class MyTextInput extends StatefulWidget {
  @override
  MyTextInputState createState() => new MyTextInputState();
}

class MyTextInputState extends State<MyTextInput> {
  final TextEditingController controller = new TextEditingController();

  String result = "";

  onTextFieldSubmitted(String str) {
    setState(() {
      result = str;
    });
    controller.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Text Input"),
        backgroundColor: Colors.deepOrange,
      ),
      body: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new TextField(
                decoration: new InputDecoration(
                  hintText: "Digite aqui...",
                ),
                controller: controller,
                onSubmitted: onTextFieldSubmitted,
              ),
              new Padding(
                padding: EdgeInsets.only(bottom: 20.0),
              ),
              new Text("$result"),
            ],
          ),
        ),
      ),
    );
  }
}
