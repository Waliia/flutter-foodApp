import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grid_foodapp/category_item.dart';
import 'package:grid_foodapp/dummy_category.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Food App',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey.shade800,
      ),
      body: GridView(
          padding: EdgeInsets.all(25),
          children: dummyCategory
              .map((categoryItem) => CategoryItem(
                  text: categoryItem.title, color: categoryItem.color))
              .toList(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 3 / 2)),
    );
  }
}
