import 'package:flutter/material.dart';

class SecondRoute extends StatefulWidget {
  SecondRoute({super.key});

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  final titles = [
    "List 1",
    "List 2",
    "List 3",
    "List 4",
    "List 5",
    "List 6",
    "List 7",
    "List 8",
  ];
  var cardColors = [
    Colors.grey,
    Colors.blue,
    Colors.red,
    Colors.purple,
    Colors.green,
    Colors.pinkAccent,
    Colors.brown,
    Colors.pink
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Second Route'),
        ),
        body: ListView.builder(
            itemCount: cardColors.length,
            itemBuilder: (context, index) {
              return Card(
                  child: ListTile(
                onTap: () {
                  Navigator.pop(context, cardColors[index]);
                },

                // onLongPress: () {
                //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                //     content: Text( ' pressed!'),
                //   )
                //   );
                // },
                title: Text(titles[index]),
                tileColor: cardColors[index],

                leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1547721064-da6cfb341d50")),
                // trailing: Icon(icons[index])
              ));
            }));
  }
}
