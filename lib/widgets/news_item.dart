import 'package:flutter/material.dart';
import 'package:news/models/news_item_model.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key, required NewsItemModel newsItemModel})
    : _newsItemModel = newsItemModel;
  final NewsItemModel _newsItemModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 150,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: NetworkImage(
                  _newsItemModel.image ??
                      "https://backoffice.lepetitjournal.com/sites/default/files/2026-05/Nevada%20Museum%20of%20Art.jpg",
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Text(
            _newsItemModel.title,
            maxLines: 2,
            style: TextStyle(fontSize: 20),
            textDirection: _newsItemModel.language.contains("arabic")
                ? TextDirection.rtl
                : TextDirection.ltr,
          ),
          Text(
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            _newsItemModel.subTitle,
            textDirection: _newsItemModel.language.contains("arabic")
                ? TextDirection.rtl
                : TextDirection.ltr,
          ),
        ],
      ),
    );
  }
}
