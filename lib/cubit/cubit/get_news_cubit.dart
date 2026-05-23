import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/models/news_item_model.dart';
import 'package:news/services/get_news_service.dart';

part 'get_news_state.dart';

class GetNewsCubit extends Cubit<GetNewsState> {
  GetNewsCubit() : super(GetNewsInitial());
  List<NewsItemModel> newsList = [];
  void getNews({required String catygory}) async {
    emit(GetNewsLoading());
    try {
      newsList = await GetNewsService().getNews(category: catygory);
      emit(GetNewsSucsece(newsList: newsList));
    } on DioException {
      emit(
        GetNewsFailure(
          errorMessage:
              "لا يتوفر اتصال بالانترنت حاول لاحقاً شكرا لاستخدامك تطبيقنا ",
        ),
      );
    } on Exception {
      emit(GetNewsFailure(errorMessage: "there was an error try again"));
    }
  }
}
