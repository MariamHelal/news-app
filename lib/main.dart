import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_course/views/HomeView.dart';

void main() {
  runApp(const NewsApp());
}

final dio=Dio();
void getNews() async{
  final response=await dio.get(
      'https://newsapi.org/v2/top-headlines?category=sports&apiKey=05e5356b87724ce59c8b10fcd5ab21b0');
  print(response);
}


class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
