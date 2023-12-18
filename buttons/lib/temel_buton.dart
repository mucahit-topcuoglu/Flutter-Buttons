import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TemelButonlar extends StatefulWidget {
  const TemelButonlar({super.key});

  @override
  State<TemelButonlar> createState() => _TemelButonlarState();
}

class _TemelButonlarState extends State<TemelButonlar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Butonlar",
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () {
              debugPrint("Elevated buttona basıldı");
            },
            child: Text("Bu Bir Eleveted buttondur"),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add),
            label: Text("Elevated button icon"),
          ),
          CloseButton(
            onPressed: () {},
          
          ),
          CupertinoButton(child: Text("Deneme"), onPressed: (){})
        ],
      ),
    );
  }
}
