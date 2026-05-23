import 'package:flutter/material.dart';
import 'package:news/widgets/news_item.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) => NewsItem(),
      itemCount: 5,
    );
  }
}
