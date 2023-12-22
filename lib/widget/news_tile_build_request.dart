import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:untitled/model/news_tile_model.dart';
import 'package:untitled/services/services_news.dart';
import 'package:untitled/widget/news_tile_build.dart';

class NewsTileBuildRequest extends StatefulWidget {
  const NewsTileBuildRequest({super.key, required this.category});

  final String category;

  @override
  State<NewsTileBuildRequest> createState() => _NewsTileBuildRequestState();
}

class _NewsTileBuildRequestState extends State<NewsTileBuildRequest> {
  dynamic future;

  @override
  void initState() {
    future = ServicesNews(Dio()).getNews(category: widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsTileModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsTileBuild(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Text('Sorry Try Later'),
            );
          } else {
            return const SliverToBoxAdapter(
              child: SizedBox(
                height: 450,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            );
          }
        });
  }
}
