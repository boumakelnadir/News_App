import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:untitled/services/services_news.dart';
import 'package:untitled/views/home_view.dart';

main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'News App',
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
