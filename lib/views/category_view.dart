// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:newsapp/widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({
    Key? key,
    required this.category,
  }) : super(key: key);
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
        title: Text(
          category,
          style: const TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 12),
        child: CustomScrollView(
          slivers: [
            NewsListViewBuilder(
              category: category,
            )
          ],
        ),
      ),
    );
  }
}
