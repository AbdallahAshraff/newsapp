import 'package:flutter/material.dart';

import '../models/article_model.dart';
import 'news_list_view.dart';

class Future_news_builder extends StatelessWidget {
  Future_news_builder({
    super.key,
    required this.future,
  });

 var future;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future, // متحطش الريكويست جوا البيلد ويدجيت عشان ميفضلش يتريجرر البيانات ف كل مره الويدجت يتعملها ريبلد
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
  }
}
