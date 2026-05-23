import 'package:news/assets_helper.dart';
import 'package:news/models/catygory_model.dart';

const String baseUrl = 'https://newsdata.io/api/1/latest?';
const String apiKey = 'apikey=pub_4846091e6bd663d0ff61dc70920a4841c18de';
List<CatygoryModel> catygoryItems = [
  CatygoryModel(image: AssetsHelper.business, title: "business"),
  CatygoryModel(image: AssetsHelper.entertaiment, title: "entertaiment"),
  CatygoryModel(image: AssetsHelper.health, title: "health"),
  CatygoryModel(image: AssetsHelper.science, title: "science"),
];
