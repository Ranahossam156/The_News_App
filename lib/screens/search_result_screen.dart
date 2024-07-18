import 'package:flutter/material.dart';
import 'package:news_app_task/common_widgets/news_list_view_states.dart';

import '../common_widgets/search_results_states.dart';

class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({super.key, required this.keyword});

  final String keyword;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black, // You can change the color to match your design
        ),
        title: const Text(
          "Search results",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black, // Change color if needed
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            SearchResultsStates(
              keyword: keyword,
            ),
          ],
        ),
      ),
    );
  }
}
