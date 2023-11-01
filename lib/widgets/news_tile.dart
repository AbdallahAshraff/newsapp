import 'package:flutter/material.dart';
import 'package:newsapp/constants.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/views/full_news_view.dart';

class NewsTile extends StatelessWidget {
  NewsTile({super.key, required this.articleModel});
  ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return FullNews(
                linkurl: articleModel.linkUrl,
                appbar: articleModel.title ?? 'Welcome to the full article');
          },
        ));
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
                height: 220,
                width: double.infinity,
                fit: BoxFit.cover,
                articleModel.image ?? noImage),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            articleModel.title ?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 22,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            articleModel.subTitle ?? "",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          ),

            const Text(
              'Tap to go to the full article',
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
                decoration: TextDecoration.underline,
              ),
            ),
          
        ],
      ),
    );
  }
}
