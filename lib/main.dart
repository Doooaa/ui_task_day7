import 'package:flutter/material.dart';
import 'package:ui_task_day6/routes.dart';




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: routeGenerator,
      initialRoute: "/",
      // home: HomePage(),
    );
  }
}

void main() {
  runApp(const MyApp());
}

// Make application with 4 pages
