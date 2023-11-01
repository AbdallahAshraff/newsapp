// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';


import '../models/article_model.dart';
import '../services/news_service.dart';
import 'news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  final String category;
  const NewsListViewBuilder({
    Key? key,
    required this.category,
  }) : super(key: key);
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    future = NewsService(Dio()).getNews(category: widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future:
          future, // متحطش الريكويست جوا البيلد ويدجيت عشان ميفضلش يتريجرر البيانات ف كل مره الويدجت يتعملها ريبلد
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(
            articles: snapshot.data ?? [],
          );
        } else if (snapshot.hasError) {
          return const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: Text("Oops!, there was an error. Try again"),
            ),
          );
        } else {
          return const SliverFillRemaining(
              hasScrollBody: false,
              child: Center(child: CircularProgressIndicator()));
        }
      },
    );
    /*isLoading
        ? const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(child: CircularProgressIndicator()))
        : articles.isNotEmpty
            ? NewsListView(
                articles: articles,
              )
            : const SliverFillRemaining(
                hasScrollBody: false,
                child: Center(
                  child: Text("Oops!, there was an error. Try again"),
                ),
              );*/
  }
}
