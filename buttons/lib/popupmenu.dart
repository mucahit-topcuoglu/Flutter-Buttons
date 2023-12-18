import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class PopUpMenuKullanimi extends StatefulWidget {
  const PopUpMenuKullanimi({super.key});

  @override
  State<PopUpMenuKullanimi> createState() => _PopUpMenuKullanimiState();
}

class _PopUpMenuKullanimiState extends State<PopUpMenuKullanimi> {
  String? Sehirler = null;
  List<String> sehirler=["Adana", "Adıyaman", "Afyon", "Ağrı", "Amasya", "Ankara", "Antalya", "Artvin", "Aydın", "Balıkesir", "Bilecik", "Bingöl", "Bitlis", "Bolu", "Burdur", "Bursa", "Çanakkale", "Çankırı", "Çorum", "Denizli", "Diyarbakır", "Edirne", "Elazığ", "Erzincan", "Erzurum", "Eskişehir", "Gaziantep", "Giresun", "Gümüşhane", "Hakkari", "Hatay", "Isparta", "İçel (Mersin)", "İstanbul", "İzmir", "Kars", "Kastamonu", "Kayseri", "Kırklareli", "Kırşehir", "Kocaeli", "Konya", "Kütahya", "Malatya", "Manisa", "Kahramanmaraş", "Mardin", "Muğla", "Muş", "Nevşehir", "Niğde", "Ordu", "Rize", "Sakarya", "Samsun", "Siirt", "Sinop", "Sivas", "Tekirdağ", "Tokat", "Trabzon", "Tunceli", "Şanlıurfa", "Uşak", "Van", "Yozgat", "Zonguldak", "Aksaray", "Bayburt", "Karaman", "Kırıkkale", "Batman", "Şırnak", "Bartın", "Ardahan", "Iğdır", "Yalova", "Karabük", "Kilis", "Osmaniye", "Düzce"
];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton(
        
        onSelected: (String? sehir) {
          print('Secilen sehir: $sehir');
          setState(() {
            Sehirler = sehir;
          });
          
        },
        child: Text(Sehirler ?? "Şehir Seçin"),
        itemBuilder: ((context) {
          return sehirler.map((e) => PopupMenuItem(
              child: Text(e),
              value: e,
            ),).toList();
         /* return <PopupMenuEntry<String>>[
            PopupMenuItem(
              child: Text("Ankara"),
              value: "Ankara",
            ),
            PopupMenuItem(
              child: Text("İzmir"),
              value: "İzmir",
            ),
            PopupMenuItem(
              child: Text("Manisa"),
              value: "Manisa",
            ),
            PopupMenuItem(
              child: Text("İstanbul"),
              value: "İstanbul",
            ),
            PopupMenuItem(
              child: Text("Trabzon"),
              value: "Trabzon",
            ),
          ];*/
        }),
      ),
    );
  }
}
