import 'package:flutter/material.dart';

import 'Presentation/Declarations/constants.dart';
import 'Presentation/Screens/HomePage/UI/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Showcase View',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
        initialRoute: "/",
      onGenerateRoute: RouteGenerator().generateRoute,
    );
  }
}
