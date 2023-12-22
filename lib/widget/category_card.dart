import 'package:flutter/material.dart';
import 'package:untitled/views/category_view.dart';
import '../model/category_card_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

  final CategoryCardModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(builder: (context) {
          return CategoryView(
            category: category.name,
          );
        }),
      ),
      child: Container(
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              category.image,
            ),
          ),
        ),
        child: Center(
          child: Text(
            category.name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
