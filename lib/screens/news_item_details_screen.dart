import 'package:flutter/material.dart';

import '../common_widgets/news_item_details_body.dart';
import '../models/articles_model.dart';

class NewsItemDetailsScreen extends StatelessWidget {
  const NewsItemDetailsScreen({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text.rich(
          TextSpan(
            text: 'News',
            style: TextStyle(
              color: Colors.black,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'Content',
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: NewsItemDetailsBody(articleModel: articleModel),
    );
  }
}
