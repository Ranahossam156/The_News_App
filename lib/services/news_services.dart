import 'package:dio/dio.dart';
import '../models/articles_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);
  Future<List<ArticleModel>> getNewsByKeyword({required String keyword}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=15984d87541e49579ab7e5de0e222972&q=$keyword');

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }

      return articlesList;
    } catch (e) {
      return [];
    }
  }
  Future<List<ArticleModel>> getNewsByCategory({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=15984d87541e49579ab7e5de0e222972&category=$category');

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }

      return articlesList;
    } catch (e) {
      return [];
    }
  }
}