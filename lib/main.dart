import 'package:flutter/material.dart';
import 'package:pdtable/table.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: PeriodicTable(),
    debugShowCheckedModeBanner: false,);
  }
}