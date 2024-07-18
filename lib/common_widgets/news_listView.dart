import 'package:flutter/material.dart';
import 'package:news_app_task/models/articles_model.dart';
import '../screens/news_item_details_screen.dart';
import 'news_item.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;

  const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
            (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: GestureDetector(
              onTap: () {
                var currentNews = articles[index];
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return NewsItemDetailsScreen( articleModel: currentNews);
                  },
                ));
              },
              child: NewsItem(
                articleModel: articles[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
