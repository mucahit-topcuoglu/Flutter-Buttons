import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class DropDownKullanimi extends StatefulWidget {
  const DropDownKullanimi({super.key});

  @override
  State<DropDownKullanimi> createState() => _DropDownKullanimiState();
}

class _DropDownKullanimiState extends State<DropDownKullanimi> {
  String? seciliSehir=null;

  List<String> sehirler=["Ankara","Manisa","İzmir","Bursa","Van"];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton(
        hint:Text("Bir Şehir Seçiniz"),
        items: sehirler.map((e) => DropdownMenuItem(child: Text(e), value: e,)).toList(),
      value: seciliSehir,
      onChanged: (value) {
        setState(() {
          
        });
        seciliSehir=value;
      },
      ),
    );
  }
}