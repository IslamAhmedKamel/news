import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/constant.dart';
import 'package:news/cubit/cubit/get_news_cubit.dart';
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
          itemBuilder: (context, index) => CatygoryItem(
            catygoryModel: catygoryItems[index],
            onTap: () {
              BlocProvider.of<GetNewsCubit>(
                context,
              ).getNews(catygory: catygoryItems[index].title);
            },
          ),
          itemCount: catygoryItems.length,
        ),
      ),
    );
  }
}
