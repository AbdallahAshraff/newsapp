// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:newsapp/models/card_components.dart';
import 'package:newsapp/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.card,
  }) : super(key: key);

  final CardComponents card;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return CategoryView(category: card.categoryName);
          },
        ));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16, top: 10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
                image: AssetImage("assets/${card.imageName}"),
                fit: BoxFit.cover),
          ),
          height: 120,
          width: 200,
          child: Center(
            child: Text(
              card.categoryName,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          /*child: Card(color: Colors.transparent,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),*/
        ),
      ),
    );
  }
}
