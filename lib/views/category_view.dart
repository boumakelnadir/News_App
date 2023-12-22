import 'package:flutter/material.dart';
import 'package:untitled/widget/news_tile_build_request.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          category,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            NewsTileBuildRequest(category: category),
          ],
        ),
      ),
    );
  }
}
