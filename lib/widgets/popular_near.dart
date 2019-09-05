import 'package:flutter/material.dart';

class PopularNearYou extends StatelessWidget {
  final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return ListView.builder(
        scrollDirection: Axis.horizontal,
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
                  Container(
                      height: deviceSize.height * .2,
                      width: deviceSize.width * .6,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                          'https://www.indianhealthyrecipes.com/wp-content/uploads/2019/02/hyderabadi-biryani.jpg',
                          fit: BoxFit.cover,
                        ),
                      )),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 5.0, bottom: 5, left: 7),
                    child: Text('Amera'),
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
                        margin: EdgeInsets.only(left: 7),
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
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 6.0, left: 7),
                  //   child: Text(
                  //     'served by Hydrabadi Biryani',
                  //     style: TextStyle(fontSize: 12),
                  //   ),
                  // )
                ],
              ),
            ),
          );
        });
  }
}
