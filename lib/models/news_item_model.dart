class NewsItemModel {
  final String? image;
  final String title;
  final String subTitle;
  final String language;

  NewsItemModel({
    required this.image,
    required this.title,
    required this.subTitle,
    required this.language,
  });
  factory NewsItemModel.fromJson(Map<String, dynamic> json) {
    return NewsItemModel(
      image: json["image_url"],
      title: json["title"],
      subTitle: json["description"],
      language: json['language'],
    );
  }
}
