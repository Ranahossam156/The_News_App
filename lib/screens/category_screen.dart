import 'package:flutter/material.dart';
import 'package:news_app_task/common_widgets/news_list_view_states.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, required this.category});

  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black, // You can change the color to match your design
        ),
        title: Text(
          category + ' News',
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black, // Change color if needed
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:16.0),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            NewsListViewStates(
              category: category,
            ),
          ],
        ),
      ),
    );
  }
}
