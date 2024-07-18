import 'package:flutter/material.dart';
import 'package:news_app_task/models/category_model.dart';
import 'package:news_app_task/screens/category_screen.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryScreen(
                category: categoryModel.categoryName,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right:16),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(categoryModel.image)),
            color: Colors.amberAccent,
            borderRadius: BorderRadius.circular(16),
          ),
          height: 85,
          width: 160,
          child: Center(
              child: Text(categoryModel.categoryName, style: const TextStyle(color: Colors.white, fontSize:16,fontWeight: FontWeight.bold))),
        ),
      ),
    );
  }
}
