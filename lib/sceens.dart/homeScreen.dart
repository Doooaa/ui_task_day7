import 'package:flutter/material.dart';
import 'package:ui_task_day6/classes/cproduct.dart';
import 'package:ui_task_day6/classes/class_blog.dart';

class HomePage extends StatelessWidget {
  final Object? pageInfo;
 Map<String,dynamic>?infogenerateScreen;
  

   HomePage(
    this.pageInfo, { 
    super.key,  this.infogenerateScreen,
  });

  @override
  Widget build(BuildContext context) {
    final pageInfo = this.pageInfo as Map? ?? {};
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.black12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/", arguments: {
                  "title": "Home Page",
                  "description": "Welcome to our website"
                });
              },
              icon: Icon(Icons.menu_rounded),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/blogs",arguments: Blogs.Listblos);
              },
              icon: Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/products",
                    arguments: Product.prods);
              },
              icon: Icon(Icons.account_balance_rounded),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/generateScreen",
                    arguments:infogenerateScreen);
              },
              icon: Icon(Icons.account_balance_rounded),
            ),
         
          ],
        ),
      ),
      body: Container(
        child: Text(
          pageInfo['description'] ?? "",
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 50),
        ),
      ),
      appBar: AppBar(title: Text(pageInfo["title"] ?? "Entry Page")),
    );
  }
}