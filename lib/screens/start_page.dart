import 'package:flutter/material.dart';
import 'package:foodie/screens/user_login.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFE1164B),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 150,
                child: Center(
              child: Image.asset('assets/images/Delivery-Boy-Clipart.png'),
            )),
            Center(
              child: Text(
                'Foodie',
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                'hungry? order it..',
                style: TextStyle(color: Colors.white70),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 22,
              child: RaisedButton(
                child: Text(
                  'START',
                  style: TextStyle(color: Color(0xFFE1164B)),
                ),
                color: Colors.white70,
                onPressed: () {
                  Navigator.of(context).pushNamed(UserLogin.routeName);
                },
              ),
            )
          ],
        ));
  }
}
