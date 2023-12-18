import 'package:butonlar/dropdownkullanimi.dart';
import 'package:butonlar/popupmenu.dart';
import 'package:butonlar/temel_buton.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: 
      ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red) )),
        primarySwatch: Colors.teal,
      ),
    
      home: Scaffold(appBar: AppBar(actions: [PopUpMenuKullanimi()]),
        body: PopUpMenuKullanimi(),) 
    );
  }
}

