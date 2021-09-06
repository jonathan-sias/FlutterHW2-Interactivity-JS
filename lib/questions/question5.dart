import 'package:flutter/material.dart';

var imageSaved = [
  Image.network(
      "https://i.insider.com/5e32f2a324306a19834af322?width=1800&format=jpeg&auto=webp"),
  Image.network(
      "https://i.insider.com/5de2cd3fe94e8635a17ca8ae?width=1100&format=jpeg&auto=webp"),
  Image.network(
      "https://media4.s-nbcnews.com/j/newscms/2019_47/3112746/191121-baby-yoda-cs-959a_ed40d38efa3cde7ab92df2d5492a81a5.fit-1120w.jpg"),
];

int index = 0;
buttonPressed() {
  Container(child: imageSaved[index]);
  index++;
  if (index > imageSaved.length - 1) {
    index = 0;
  }
  setState(() {});
}

void setState(Null Function() param0) {}

// WILL NEED TO MAKE THIS CLASS INTO A STATEFUL WIDGET
class Question5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text('Images'),
          ),
          body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(child: imageSaved[index]),
                IconButton(icon: Icon(Icons.shuffle), onPressed: buttonPressed)
                // Image.network(
                //   "https://i.insider.com/5e32f2a324306a19834af322?width=1800&format=jpeg&auto=webp"),
              ])),
    );
  }
}
