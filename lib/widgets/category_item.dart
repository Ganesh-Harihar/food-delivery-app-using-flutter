import 'package:flutter/material.dart';
import '../screens/searched_category_hotel.dart';
class CategoryItem extends StatelessWidget {
  //final String id;
  final String name;
  final String image;

  CategoryItem(this.name, this.image);
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: Image.network(
          'http://192.168.0.132:3000/' + image,
          fit: BoxFit.cover,
        ),
        footer: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(SearchedResult.routeName,arguments: name);
          },
          child: Container(
            height: deviceSize.height * .16,
            child: GridTileBar(
              backgroundColor: Colors.black45,
              title: Text(
                name,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
