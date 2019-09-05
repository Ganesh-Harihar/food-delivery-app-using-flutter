import 'dart:convert';
import 'package:flutter/material.dart';
import '../widgets/category_item.dart';
import 'package:provider/provider.dart';
import '../providers/product_provider.dart';


class CategoryGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<ProductProvider>(context);
    var products;
    return FutureBuilder(
        future: productsData.getFoodItems().then((result) => {
              if (result.statusCode < 400) {
               products = json.decode(result.body),
              }
            }),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return products != null
              ? GridView.builder(
                primary: false,
                  padding: const EdgeInsets.all(10.0),
                  itemCount: products.length,
                  itemBuilder: (ctx, i) => CategoryItem(
                       products[i]['name'], products[i]['image']),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                  ),
                )
              : Center(child:CircularProgressIndicator());
        });
  }
}
