import 'package:flutter/material.dart';
import '../widgets/product_item.dart';
import 'package:provider/provider.dart';
import '../providers/product_provider.dart';
class ProductsGrid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<ProductProvider>(context);  
    final products = productsData.items; 
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),   
      itemCount: products.length,
      itemBuilder: (ctx,i) => ProductItem(products[i].id,products[i].name,products[i].image),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount:1,
        childAspectRatio: 3/2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
