// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:newsapp/models/article_model.dart';

import 'package:newsapp/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  List<ArticleModel> articles = [];

  NewsListView({
    Key? key,
    required this.articles,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return GestureDetector(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: NewsTile(
                articleModel: articles[index],
              ),
            ),
          );
        },
      ),
    );
    /*ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: NewsTile(),
          );
        },
      ),*/
  }
}
