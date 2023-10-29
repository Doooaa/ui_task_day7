import 'package:flutter/material.dart';
import 'package:ui_task_day6/classes/cproduct.dart';
import 'package:ui_task_day6/classes/class_blog.dart';
import 'package:ui_task_day6/classes/generateClass.dart';

// class blogs_screen extends StatelessWidget {
//   final List<Gen> gs;

//   const blogs_screen(this.gs, {super.key});

//   @override
//   Widget build(BuildContext context) {
//     return buildBloesbox();
//   }

//   Widget buildBloesbox() {
//     return SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Column(
      
//         ));
//   }
// }

class Bloesbox extends StatelessWidget {
  final Gen gerate;

  const Bloesbox(
    this.gerate, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.lightBlue,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Text(gerate.name.toString()),
                      Text(gerate.description.toString())
                    ],
                  ),
                 
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}