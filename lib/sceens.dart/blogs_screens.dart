import 'package:flutter/material.dart';
import 'package:ui_task_day6/classes/cproduct.dart';
import 'package:ui_task_day6/classes/class_blog.dart';

class blogs_screen extends StatelessWidget {
  final List<Blogs> blogs;

  const blogs_screen(this.blogs, {super.key});

  @override
  Widget build(BuildContext context) {
    return buildBloesbox();
  }

  Widget buildBloesbox() {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: blogs.map((blog) => Bloesbox(blog)).toList(),
        ));
  }
}

class Bloesbox extends StatelessWidget {
  final Blogs blog;

  const Bloesbox(
    this.blog, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  Text(blog.name.toString()),
                  Text(blog.place.toString())
                ],
              ),
             
            ],
          )
        ],
      ),
    );
  }
}