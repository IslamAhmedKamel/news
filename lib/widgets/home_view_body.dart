import 'package:flutter/material.dart';
import 'package:news/widgets/catygory_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Column(children: [CatygoryListView()]),
    );
  }
}
