import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Center(child: Text('Profile',style: TextStyle(color: Colors.black87,fontSize: 15),),)
      ),
      
  );
  }
}
