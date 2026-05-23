import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/cubit/cubit/get_news_cubit.dart';
import 'package:news/widgets/news_item.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetNewsCubit, GetNewsState>(
      builder: (context, state) {
        if (state is GetNewsSucsece) {
          return SliverList.builder(
            itemBuilder: (context, index) =>
                NewsItem(newsItemModel: state.newsList[index]),
            itemCount: state.newsList.length,
          );
        } else if (state is GetNewsFailure) {
          return SliverFillRemaining(
            child: Center(child: Text(state.errorMessage)),
          );
        } else if (state is GetNewsLoading) {
          return SliverFillRemaining(
            child: Center(child: CircularProgressIndicator()),
          );
        }
        return SliverToBoxAdapter(child: SizedBox());
      },
    );
  }
}
