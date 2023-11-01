import 'package:flutter/material.dart';

import '../models/card_components.dart';
import 'category_card.dart';

class Categorylistview extends StatelessWidget {
  const Categorylistview({
    super.key,
  });

  final List<CardComponents> categoryList = const [
    CardComponents(categoryName: "Business", imageName: "business.jpg"),
    CardComponents(
        categoryName: "Entertainment", imageName: "entertaiment.jpg"),
    CardComponents(categoryName: "General", imageName: "general.jpg"),
    CardComponents(categoryName: "Health", imageName: "health.jpg"),
    CardComponents(categoryName: "Science", imageName: "science.jpg"),
    CardComponents(categoryName: "Sports", imageName: "sports.jpg"),
    CardComponents(categoryName: "Technology", imageName: "technology.jpeg")
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        itemCount: categoryList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryCard(card: categoryList[index]);
        },
      ),
    );
  }
}
