import 'package:flutter/material.dart';
import 'package:flutter_application_1/burc_listesi.dart';
import 'package:flutter_application_1/data/strings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
      home: BurcListesi(Strings),
    );
  }
}
