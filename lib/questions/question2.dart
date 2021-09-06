import 'package:flutter/material.dart';

class Question2 extends StatefulWidget {
  @override
  _Question2State createState() => _Question2State();
}

class _Question2State extends State<Question2> {
  bool pressed = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Question 2'),
      ),
      body: Center(
        child: IconButton(
          iconSize: 200,

          color: pressed ? Colors.red : Colors.black,

          icon: Icon(pressed ? Icons.favorite : Icons.favorite_border),
          // WILL NEED TO MODIFY THIS LINE

          onPressed: () {
            setState(() {
              pressed = !pressed;
            });
          },
        ),
      ),
    ));
  }

  // void setState(Null Function() param0) {}
  //needed this on the main.dart for testing
}
