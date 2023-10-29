import 'package:flutter/material.dart';
import 'package:ui_task_day6/classes/cproduct.dart';
import 'package:ui_task_day6/classes/class_blog.dart';
import 'package:ui_task_day6/sceens.dart/errorpage.dart';
import 'package:ui_task_day6/sceens.dart/homeScreen.dart';
import 'package:ui_task_day6/sceens.dart/blogs_screens.dart';
import 'package:ui_task_day6/sceens.dart/productscreen.dart';


Route routeGenerator(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(
        builder: (context) =>HomePage(settings.arguments),
      );
    case '/blogs_screen':
      return MaterialPageRoute(
        builder: (context) => blogs_screen(settings.arguments as List<Blogs>),
      );
    case '/products':
      return MaterialPageRoute(
        builder: (context) => ProductScreen(settings.arguments as List<Product>),
      );
    case '/Bloesbox':
      return MaterialPageRoute(
        builder: (context) => Bloesbox(settings.arguments as Blogs),
      );
  }
  return MaterialPageRoute(
    builder: (context) => const ErrorPage(),
  );
}