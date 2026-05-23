import 'package:news/assets_helper.dart';
import 'package:news/models/catygory_model.dart';

const String baseUrl = 'https://newsdata.io/api/1/latest?';
const String apiKey = 'apikey=pub_4846091e6bd663d0ff61dc70920a4841c18de';
List<CatygoryModel> catygoryItems = [
  CatygoryModel(image: AssetsHelper.business, title: "business"),
  CatygoryModel(image: AssetsHelper.crime, title: "crime"),
  CatygoryModel(image: AssetsHelper.education, title: "education"),
  CatygoryModel(image: AssetsHelper.entertaiment, title: "entertaiment"),
  CatygoryModel(image: AssetsHelper.food, title: "food"),
  CatygoryModel(image: AssetsHelper.health, title: "health"),
  CatygoryModel(image: AssetsHelper.science, title: "science"),
  CatygoryModel(image: AssetsHelper.sports, title: "sports"),
  CatygoryModel(image: AssetsHelper.environment, title: "environment"),
  CatygoryModel(image: AssetsHelper.tourism, title: "tourism"),
  CatygoryModel(image: AssetsHelper.technology, title: "technology"),
  CatygoryModel(image: AssetsHelper.world, title: "world"),
];
