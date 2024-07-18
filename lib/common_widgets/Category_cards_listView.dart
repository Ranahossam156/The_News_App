import 'package:flutter/material.dart';
import 'package:news_app_task/common_widgets/category_card.dart';
import 'package:news_app_task/models/category_model.dart';

class CategoryCardsListView extends StatelessWidget {
   CategoryCardsListView({super.key});
final List<CategoryModel> categories=[
  CategoryModel(image: 'assets/images/business.jpg', categoryName: 'Business'),
  CategoryModel(image: 'assets/images/entertainment.png', categoryName: 'Entertainment'),
  CategoryModel(image: 'assets/images/health.png', categoryName: 'Health'),
  CategoryModel(image: 'assets/images/science.jpeg', categoryName: 'Science'),
  CategoryModel(image: 'assets/images/sports.jpeg', categoryName: 'Sports'),
  CategoryModel(image: 'assets/images/technology.jpg', categoryName: 'Technology'),
];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context,index){
          return  CategoryCard(categoryModel: categories[index],);
      }),
    );
  }
}
