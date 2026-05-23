import 'package:dio/dio.dart';
import 'package:news/constant.dart';
import 'package:news/models/news_item_model.dart';

class GetNewsService {
  Future<List<NewsItemModel>> getNews({String category = "tourism"}) async {
    try {
      Response response = await Dio().get(
        '$baseUrl$apiKey&country=eg&category=$category',
      );
      List<dynamic> news = response.data['results'];
      List<NewsItemModel> newsList = [];
      for (var item in news) {
        newsList.add(NewsItemModel.fromJson(item));
      }
      return newsList;
    } on DioException catch (e) {
      throw Exception(e.toString());
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }
}
