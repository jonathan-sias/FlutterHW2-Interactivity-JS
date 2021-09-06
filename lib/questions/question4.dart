import 'package:flutter/material.dart';

class Question4 extends StatefulWidget {
  @override
  _Question4State createState() => _Question4State();
}

class _Question4State extends State<Question4> {
  TextEditingController newPasswordTextEditingController =
      TextEditingController();

  TextEditingController confirmNewPasswordTextEditingController =
      TextEditingController();

  bool _agreed = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Question 4'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CheckboxListTile(
                activeColor: Colors.purple,
                value: _agreed,
                controlAffinity: ListTileControlAffinity.leading,
                title: Text(
                  "I agree to the terms and conditions",
                  style: TextStyle(fontSize: 16),
                ),

                // WILL NEED TO CHANGE THIS LINE
                onChanged: (value) {
                  _agreed = value!;
                  setState(() {});
                }),
            RaisedButton(
              child: Text(
                'Sign Up',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.purple,

              // WILL NEED TO CHANGE THIS LINE
              onPressed: _agreed ? () {} : null,
            ),
          ]),
    ));
  }

  //void setState(Null Function() param0) {}
}
