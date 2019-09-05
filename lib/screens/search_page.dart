import 'package:flutter/material.dart';
import '../widgets/search_bar.dart';
import '../screens/category_grid.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool isTyped = false;

  typed(value) {
    setState(() {
      if (value.length < 1)
        isTyped = false;
      else
        isTyped = true;
    });
  }

  final _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(height: deviceSize.height * .2, child: CustomSearchBar()),
            Container(
                height: deviceSize.height * 1.9,
                padding: const EdgeInsets.only(left: 20, right: 20.0),
                child: CategoryGrid()),
          ],
        ),
      ),
    );
  }
}
