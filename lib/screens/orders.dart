import 'package:flutter/material.dart';
class Orders extends StatefulWidget {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
  final deviceSize = MediaQuery.of(context).size;
    return new DefaultTabController(
      length: 2,
      child: new Scaffold(
        appBar: new PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Padding(
            padding: const EdgeInsets.only(left:10.0,right: 10.0,top:15),
            child: new Container(
              height: 50.0,
              child: new TabBar(
                tabs: [
                  Tab(child: Text('Orders',style: TextStyle(color: Colors.black))),
                  Tab(child: Text(' Past Orders',style: TextStyle(color: Colors.black))),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
           
          ],
        ),
      ),
    ); 
  }
}