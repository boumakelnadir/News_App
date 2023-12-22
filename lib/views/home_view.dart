import 'package:flutter/material.dart';
import 'package:untitled/widget/category_card_build.dart';
import 'package:untitled/widget/news_tile_build_request.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'News',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Cloud',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
              ],
            )),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: CategoryCardBuild(),
              ),
              const NewsTileBuildRequest(
                category: 'general',
              )
            ],
          ),
        ));
  }
}
