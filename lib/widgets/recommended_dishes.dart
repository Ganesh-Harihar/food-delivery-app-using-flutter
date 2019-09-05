import 'package:flutter/material.dart';
import '../screens/product_detail.dart';
class RecommendedDishes extends StatelessWidget {
  final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

  return  ListView.builder(
        primary: false,
        scrollDirection: Axis.horizontal,
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(ProductDetail.routeName,arguments: 'Pizza');
            },
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      height: deviceSize.height * .17,
                      width: deviceSize.width * .6,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                          'https://www.vegrecipesofindia.com/wp-content/uploads/2017/01/sukha-puri-recipe-1-500x500.jpg',
                          fit: BoxFit.cover,
                        ),
                      )),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 5.0, bottom: 8, left: 7),
                    child: Text('Pani Puri (10 items)'),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 7),
                        width: deviceSize.width * .23,
                        color: Colors.black12,
                        child: Center(child: Text('15 - 20 min',style: TextStyle(fontSize: 12 ))),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: deviceSize.width * .15,
                        color: Colors.black12,
                        child: Center(child: Text('Rs 20',style: TextStyle(fontSize: 12 ))),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6.0, left: 7),
                    child: Text(
                      'served by indorilal',
                      style: TextStyle(fontSize: 12),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
