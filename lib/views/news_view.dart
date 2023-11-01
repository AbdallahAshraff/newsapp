import 'package:flutter/material.dart';
import 'package:newsapp/widgets/category_list_view.dart';

import '../widgets/news_list_view_builder.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "News",
                style: TextStyle(color: Colors.black),
              ),
              Text(
                "Cloud",
                style: TextStyle(color: Colors.yellow),
              )
            ],
          ),
        ),
        body:const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.0),
          child:  CustomScrollView(
            physics:  BouncingScrollPhysics(),
            slivers: [
               SliverToBoxAdapter(
                child: Categorylistview(),
              ),
               SliverToBoxAdapter(
                child: SizedBox(
                  height: 25,
                ),
              ),
              NewsListViewBuilder(category: 'general'),
             // const SliverToBoxAdapter(child:NewsListView(),)
            ],
          ),
        )

        /*Column(
          children: const [
            Categorylistview(),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: NewsListView(),
            ),
          ],
        )*/
        );
  }
}


