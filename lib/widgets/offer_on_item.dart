import 'package:flutter/material.dart';

class OfferOnItem extends StatefulWidget {
  @override
  _OfferOnItemState createState() => _OfferOnItemState();
}

class _OfferOnItemState extends State<OfferOnItem> {
  final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];
  bool isLiked =false;
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return ListView.builder(
        primary: false,
        shrinkWrap: false,
        scrollDirection: Axis.vertical,
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              print('clicked');
            },
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 0.0, bottom: 1, left: 7),
                              child: Text(
                                'Get 50% Off',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 1.0, bottom: 3, left: 7),
                              child: Text(
                                'use promo code',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              color: Colors.green,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 1.0, bottom: 1, left: 4, right: 4),
                                child: Center(
                                    child: Text(
                                  '50OM',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Stack(
                        children: <Widget>[
                          Container(
                              height: deviceSize.height * .17,
                              width: deviceSize.width * .56,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, left: 20, right: 1),
                                child: Image.network(
                                  'https://www.archanaskitchen.com/images/archanaskitchen/0-Archanas-Kitchen-Recipes/2018/Homemade_Vada_Pav_Recipe_With_Spinach_Corn_Tikki-8.jpg',
                                  fit: BoxFit.cover,
                                ),
                              )),
                          Container(
                            margin: EdgeInsets.only(left:130,top:50),
                              child: IconButton(
                                  icon: isLiked ? Icon(Icons.favorite,color: Colors.red,):Icon(Icons.favorite_border,color: Colors.white,),
                                  onPressed: () {setState(() {
                                    isLiked = isLiked ? !isLiked :! isLiked;
                                  });}))
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 1.0, bottom: 5, left: 7),
                    child: Text('OM'),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 1.0, bottom: 6, left: 7),
                    child: Text(
                      'Fast Food . BreakFast',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 7, bottom: 10),
                        width: deviceSize.width * .23,
                        color: Colors.black12,
                        child: Center(
                            child: Text(
                          '15 - 20 min',
                          style: TextStyle(fontSize: 12),
                        )),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 7, bottom: 10),
                        width: deviceSize.width * .21,
                        color: Colors.black12,
                        child: Row(
                          children: <Widget>[
                            Text(
                              '4.1',
                              style: TextStyle(fontSize: 12),
                            ),
                            Icon(
                              Icons.star,
                              size: 12,
                              color: Colors.amber,
                            ),
                            Text(
                              '(401+)',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
