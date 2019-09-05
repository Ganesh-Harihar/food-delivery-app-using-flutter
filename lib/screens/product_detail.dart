import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/product_provider.dart';
import '../screens/review_screen.dart';

class ProductDetail extends StatefulWidget {
  static const routeName = '/product-detail';
  ProductDetail();

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  bool isLiked = false;
  bool isSaved = false;
  GlobalKey _keyRed = GlobalKey();

  @override
  Widget build(BuildContext context) {
    //final productId = ModalRoute.of(context).settings.arguments as String;
    final deviceSize = MediaQuery.of(context).size;
    // final product = Provider.of<ProductProvider>(context)
    //     .items
    //     .firstWhere((prod) => prod.id == productId);
    // String title = product.name;
    // print(product.image);

    return CustomScrollView(slivers: <Widget>[
      SliverAppBar(
        backgroundColor: Color(0xFFE1164B),
        pinned: true,
        floating: true,
        snap: true,
        title: Text(
          'Wada Pav',
          style: TextStyle(fontSize: 25),
        ),
        expandedHeight: 200.0,
        flexibleSpace: FlexibleSpaceBar(
          background: Image.network(
            'https://www.archanaskitchen.com/images/archanaskitchen/0-Archanas-Kitchen-Recipes/2018/Homemade_Vada_Pav_Recipe_With_Spinach_Corn_Tikki-8.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ),
      SliverList(
          delegate: SliverChildListDelegate([
        Material(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Padding(
              //   padding: const EdgeInsets.all(10.0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: <Widget>[
              //       Row(
              //         children: <Widget>[
              //           InkWell(
              //               onTap: () {
              //                 setState(() {
              //                   isLiked = isLiked ? !isLiked : !isLiked;
              //                 });
              //               },
              //               child: !isLiked
              //                   ? Icon(
              //                       Icons.favorite_border,
              //                     )
              //                   : Icon(
              //                       Icons.favorite,
              //                       color: Colors.red,
              //                     )),
              //           Text('1000')
              //         ],
              //       ),
              //       Row(
              //         children: <Widget>[
              //           InkWell(
              //               onTap: () {
              //                 setState(() {
              //                   isSaved = isSaved ? !isSaved : !isSaved;
              //                 });
              //               },
              //               child: !isSaved
              //                   ? Icon(
              //                       Icons.flag,
              //                       color: Colors.black,
              //                     )
              //                   : Icon(
              //                       Icons.flag,
              //                       color: Colors.amber,
              //                     )),
              //           Text('Save')
              //         ],
              //       )
              //     ],
              //   ),
              // ),
              Container(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 30),
                  height: deviceSize.height,
                  width: deviceSize.width,
                  child: Text(
                    'sdfsdfsd',
                    textAlign: TextAlign.justify,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 16,
                    style: TextStyle(fontSize: 13),
                  )),

              // Padding(
              //   padding: EdgeInsets.only(left: 15,bottom: 10),
              //   child: Text(
              //     'Reviews:',
              //     style: TextStyle(fontSize: 19),
              //   ),
              // ),
              // Container(
              //   padding: EdgeInsets.only(left: 15, right: 15),
              //   width: deviceSize.width,
              //   child: Reviews(),
              // ),
              // Container(
              //   padding: EdgeInsets.only(left: 15, right: 15),
              //   width: deviceSize.width,
              //   child: Reviews(),
              // ),
              // Container(
              //   padding: EdgeInsets.only(left: 15, right: 15),
              //   width: deviceSize.width,
              //   child: Reviews(),
              // ),
              Container(
                width: deviceSize.width,
                padding: EdgeInsets.only(left: 20, right: 20),
                margin: EdgeInsets.only(top: deviceSize.height * .01),
                //alignment: Alignment(0.0, 1.0),
                child: RaisedButton(
                  elevation: 5,
                  color: Color(0xFFE1164B),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    'Order',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ]))
    ]);
  }
}
