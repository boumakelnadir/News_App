import 'package:flutter/material.dart';
import '../model/category_card_model.dart';
import 'category_card.dart';

class CategoryCardBuild extends StatelessWidget {
  CategoryCardBuild({super.key});

  List<CategoryCardModel> category = [
    CategoryCardModel(
      image: 'assets/business.avif',
      name: 'Business',
    ),
    CategoryCardModel(
      image: 'assets/entertaiment.avif',
      name: 'Entertainment',
    ),
    CategoryCardModel(
      image: 'assets/health.avif',
      name: 'Health',
    ),
    CategoryCardModel(
      image: 'assets/science.avif',
      name: 'Science',
    ),
    CategoryCardModel(
      image: 'assets/sports.avif',
      name: 'Sports',
    ),
    CategoryCardModel(
      image: 'assets/technology.jpeg',
      name: 'Technology',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: axisDirectionToAxis(AxisDirection.right),
        itemCount: category.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 8),
          child: CategoryCard(
            category: category[index],
          ),
        ),
      ),
    );
  }
}
