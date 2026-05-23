import 'package:flutter/material.dart';
import 'package:news/assets_helper.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(AssetsHelper.technology),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Text("الزمالك بطل الدوري المصري لعام 2026"),
          Text(
            "حقق نادي الزمالك الدوري الاصعب له طوال تاريخه مقارنةً بالنادي الاهلي صاحب الامجاد العظيمة والقيم النبيلة",
          ),
        ],
      ),
    );
  }
}
