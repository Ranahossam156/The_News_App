import 'package:flutter/material.dart';
import 'package:news_app_task/models/articles_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
// Cached network image
class NewsItem extends StatelessWidget {
  const NewsItem({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child:
          CachedNetworkImage(
            imageUrl: articleModel.image,
            imageBuilder: (context, imageProvider) => Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                  // colorFilter:
                  // ColorFilter.mode(Colors.red, BlendMode.colorBurn)
                ),
              ),
            ),
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
          // Image.network(
          //   articleModel.image,
          //   height: 200,
          //   width: double.infinity,
          //   fit: BoxFit.cover,
          //   errorBuilder: (context, error, stackTrace) {
          //     return const Text('Image not available');
          //   },
          // ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          articleModel.description,
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}