import 'package:flutter/material.dart';
import 'package:news/constant.dart';
import 'package:news/widgets/catygory_item.dart';

class CatygoryListView extends StatelessWidget {
  const CatygoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 00.2,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>
              CatygoryItem(catygoryModel: catygoryItems[index]),
          itemCount: catygoryItems.length,
        ),
      ),
    );
  }
}
