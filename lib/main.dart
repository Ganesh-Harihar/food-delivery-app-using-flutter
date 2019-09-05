import 'package:flutter/material.dart';
import 'package:foodie/providers/product_provider.dart';
import 'package:provider/provider.dart';
import './screens/user_login.dart';
import './screens/start_page.dart';
import 'package:provider/provider.dart';
import './providers/user_provider.dart';
import './screens/home_screen.dart';
import './screens/product_detail.dart';
import './providers/product_provider.dart';
import './screens/searched_category_hotel.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(builder: (_)=> UserProvider(),),
        ChangeNotifierProvider(builder: (_)=>ProductProvider(),),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.pink[0xFFE1164B],
        ),
        home: StartPage(),
        routes: {
          UserLogin.routeName: (ctx) => UserLogin(),
          Home.routeName: (ctx) => Home(),
          ProductDetail.routeName : (ctx) => ProductDetail(),
          SearchedResult.routeName : (ctx) => SearchedResult(),
        },
      ),
    );
  }
}
