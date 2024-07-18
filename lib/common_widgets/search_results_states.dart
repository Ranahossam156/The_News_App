import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../models/articles_model.dart';
import '../services/news_services.dart';
import 'news_listView.dart';

class SearchResultsStates extends StatefulWidget {
  const SearchResultsStates({super.key, required this.keyword});
  final String keyword;
  @override
  State<SearchResultsStates> createState() => _SearchResultsStatesState();
}

class _SearchResultsStatesState extends State<SearchResultsStates> {
  late Future<List<ArticleModel>> future;

  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getNewsByKeyword(keyword: widget.keyword);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Text('Oops! There was an error, please try again later.'),
            );
          } else if (snapshot.hasData) {
            return NewsListView(
              articles: snapshot.data!,
            );
          } else {
            return const SliverToBoxAdapter(
              child: Text('No data available'),
            );
          }
        });
  }
}
