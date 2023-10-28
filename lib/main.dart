import 'package:flutter/material.dart';
import "dart:math";
import './SecondRoute.dart';

void main() {
  runApp(MaterialApp(
    title: "Awesome App",
    theme: ThemeData(primarySwatch: Colors.red),
    home: FirstRoute(),
  ));
}

List colorList = ['Red', 'Black', 'White', 'Grey', 'Green', 'Brown'];
var random = Random();
var colorPic = colorList[random.nextInt(colorList.length)];

class FirstRoute extends StatefulWidget {
  FirstRoute({super.key});

  @override
  State<FirstRoute> createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  var task = const Color(0x00ffffff);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: task,
      appBar: AppBar(
        title: const Text('First Route'),
        actions: <Widget>[
          ElevatedButton(
              child: Text("Change Color"),
              onPressed: () async {
                final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => SecondRoute()));
                print(result);

                setState(() {
                  task = result;
                });
              }

              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => SecondRoute()),
              // );

              )
        ],
      ),
      body: Center(
        child: Text(
          "Paint me with $colorPic Color",
          style: const TextStyle(color: Colors.black, fontSize: 30),
        ),
      ),
    );
  }
}
