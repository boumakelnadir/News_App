import 'package:dio/dio.dart';
import 'package:untitled/model/news_tile_model.dart';

class ServicesNews {
  final Dio dio;

  ServicesNews(this.dio);

  Future<List<NewsTileModel>> getNews({required String category}) async {
    try {
      const String apikey = '55038c05d01a416c80e38bd9c868c734';
      const String https = 'https://newsapi.org/v2';
      Response response = await dio.get(
        '$https/top-headlines?country=us&apiKey=$apikey&category=$category',
      );
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData["articles"];

      List<NewsTileModel> articleList = [];

      for (var article in articles) {
        NewsTileModel newsTileModel = NewsTileModel.fromJson(article);
        articleList.add(newsTileModel);
      }
      return articleList;
    } catch (e) {
      return [];
    }
  }
}
