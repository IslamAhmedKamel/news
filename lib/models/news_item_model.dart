class NewsItemModel {
  final String image;
  final String title;
  final String subTitle;

  NewsItemModel({
    required this.image,
    required this.title,
    required this.subTitle,
  });
  factory NewsItemModel.fromJson(Map<String, dynamic> json) {
    return NewsItemModel(
      image: json["image_url"],
      title: json["title"],
      subTitle: json["description"],
    );
  }
}
