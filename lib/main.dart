import 'package:flutter/material.dart';

import 'package:hive_flutter/adapters.dart';
import 'package:todoapp/pages/home_page.dart';

void main() async {
  await Hive.initFlutter();
  var _myBox = await Hive.openBox('mybox');

  runApp(const ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.yellow),
      initialRoute: HomePage.route,
      routes: {
        HomePage.route: (context) => const HomePage(),
      },
    );
  }
}
