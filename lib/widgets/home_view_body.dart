import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/cubit/cubit/get_news_cubit.dart';
import 'package:news/widgets/catygory_listview.dart';
import 'package:news/widgets/news_list_view.dart';

// class HomeViewBody extends StatelessWidget {
//   const HomeViewBody({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 8),
//       child: Column(children: [
//         CatygoryListView(),
//          NewsListView()
//         ]),
//     );
//   }
// }
class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    BlocProvider.of<GetNewsCubit>(context).getNews(catygory: "tourism");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [CatygoryListView(), NewsListView()]);
  }
}
