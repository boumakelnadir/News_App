import 'package:flutter/material.dart';

import '../model/news_tile_model.dart';
import 'news_tile.dart';

class NewsTileBuild extends StatelessWidget {
  const NewsTileBuild({super.key, required this.articles});

  final List<NewsTileModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) => Padding(
          padding: const EdgeInsets.only(top: 15),
          child: NewsTile(
            articles: articles[index],
          ),
        ),
      ),
    );
  }
}
