import 'package:flutter/material.dart';
import '../screens/product_detail.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  ProductItem(this.id, this.title, this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () => Navigator.of(context)
              .pushNamed(ProductDetail.routeName , arguments: id),
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          leading: Row(
            children: <Widget>[
              Icon(Icons.favorite,color: Colors.red,),
              Text('1000',style: TextStyle(color: Colors.white),)
            ],
          ),
          trailing: Row(
            children: <Widget>[
              Icon(Icons.rate_review,color: Colors.amber,),
              Text('Reviews',style: TextStyle(color: Colors.white),)
            ],
          ),
          backgroundColor: Colors.black87,
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
