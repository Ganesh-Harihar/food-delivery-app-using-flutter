import 'package:flutter/material.dart';
class SearchedResult extends StatelessWidget {
  static const routeName = '/searchedResult';
  @override
  Widget build(BuildContext context) {
    final name =ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      body:Center(child: Text(name),)
    );
  }
}