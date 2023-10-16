import 'package:dio/dio.dart';

import '../models/article_model.dart';
class NewsService{
  final Dio dio;
  NewsService(this.dio);
  Future<List<ArticleModel>> getNews({required String category}) async{
    try {
      final response=await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=05e5356b87724ce59c8b10fcd5ab21b0&category=$category');
      Map<String,dynamic> jsonData=response.data;
      List<dynamic> articles=jsonData['articles'] ;
      List<ArticleModel> articlesList=[];

      for(var article in articles){
        ArticleModel articleModel=ArticleModel.fromJson(article);

        articlesList.add(articleModel);
      }
      return articlesList;
    }  catch (e) {
      return [];
      // TODO
    }
  }
}