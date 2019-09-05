import 'package:flutter/material.dart';
import '../screens/searched_category_hotel.dart';
class CustomSearchBar extends StatefulWidget {
  @override
  _CustomSearchBarState createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  bool isTyped = false;
  final TextEditingController _searchController = TextEditingController();

  typed(value) {
    setState(() {
      if (value.length < 1)
        isTyped = false;
      else
        isTyped = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Center(
        child: Container(
      margin: EdgeInsets.only(top: deviceSize.height * .02),
      height: MediaQuery.of(context).size.height * .09,
      width: MediaQuery.of(context).size.width * .9,
      child: Card(
        elevation: 10,
        borderOnForeground: true,
        color: Colors.pink[500],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextField(
          controller: _searchController,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          textAlign: TextAlign.start,
          decoration: InputDecoration(
              suffixIcon: !isTyped
                  ? GestureDetector(
                      child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ))
                  : GestureDetector(
                      onTap: () {
                        typed('');
                        _searchController.clear();
                      },
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                      )),
              contentPadding: EdgeInsets.only(left: 10, right: 10, top: 8),
              hintText: 'Search restaurant and food ..',
              border: InputBorder.none),
          onChanged: (value) {
            typed(value);
          },
          onSubmitted: (value) {
            Navigator.of(context).pushNamed(SearchedResult.routeName ,arguments: value);
            typed('');
            _searchController.clear();
          },
        ),
      ),
    ));
  }
}
 