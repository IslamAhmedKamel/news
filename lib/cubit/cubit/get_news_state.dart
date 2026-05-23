part of 'get_news_cubit.dart';

@immutable
sealed class GetNewsState {}

final class GetNewsInitial extends GetNewsState {}

final class GetNewsLoading extends GetNewsState {}

final class GetNewsSucsece extends GetNewsState {
  final List<NewsItemModel> newsList;

  GetNewsSucsece({required this.newsList});
}

final class GetNewsFailure extends GetNewsState {
  final String errorMessage;

  GetNewsFailure({required this.errorMessage});
}
