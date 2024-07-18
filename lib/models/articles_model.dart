class ArticleModel {
  final String image;
  final String title;
  final String description;
  final String? content ;
  // final String? source;
  // final String? author;
  // final String? date;
  final String? site;

  ArticleModel({required this.image, required this.title, required this.description, required this.site, required this.content, });

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      site: json["url"],
      // date: json["publishedAt"],
      // author: json['author'],
      // source: json["source"]["name"],
      content: json["content"],
      image: json['urlToImage'] ?? "https://static.wikia.nocookie.net/6d37f599-6b4a-4053-b2f3-be1bb11109ce",
      title: json['title'] ?? 'No title available',
      description: json['description'] ?? 'No description available',
    );
  }
}
