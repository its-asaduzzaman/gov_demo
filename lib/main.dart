import 'package:flutter/material.dart';
import 'package:gov_demo/screens/dashboard_screen.dart';
import 'package:gov_demo/screens/home_page.dart';
import 'package:gov_demo/screens/login_screen.dart';
import 'package:gov_demo/screens/totho_screen.dart';
import 'package:gov_demo/widgets/table_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TothoScreen(),
    );
  }
}
