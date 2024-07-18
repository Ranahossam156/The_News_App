import 'package:flutter/material.dart';
import 'package:news_app_task/common_widgets/Category_cards_listView.dart';
import 'package:news_app_task/common_widgets/news_list_view_states.dart';

import '../common_widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        title: const Row(mainAxisSize: MainAxisSize.min, children: [
          Text("News", style: TextStyle(color: Colors.black)),
          Text("Cloud", style: TextStyle(color: Colors.orange)),
        ]),
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
            SliverToBoxAdapter(
              child: MySearchBar(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 28,
              ),
            ),
            const SliverToBoxAdapter(
              child: Text(
                  'Categories',
                  style:TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                  )
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            SliverToBoxAdapter(child: CategoryCardsListView()),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 28,
              ),
            ),
            const SliverToBoxAdapter(
              child: Text(
                  'Top headLines',
                  style:TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                  )
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            const NewsListViewStates(category: 'science'),
          ],
        ),
      ),
    );
  }
}