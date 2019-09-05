import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/carousel.dart';
import '../widgets/recommended_dishes.dart';
import '../widgets/popular_near.dart';
import '../widgets/offer_on_item.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  FontAwesomeIcons.qrcode,
                  color: Colors.black,
                ),
                onPressed: () {
                  print("Pressed");
                })
          ],
          title: Center(
            child: Text(
              'Home',
              style: TextStyle(color: Colors.black87, fontSize: 15),
            ),
          )),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
                height: deviceSize.height * .3,
                width: deviceSize.width,
                child: HomePageCarousel()
            ),
            Container(
                margin: EdgeInsets.only(
                    top: deviceSize.height * .02,
                    right: deviceSize.width * .45),
                height: deviceSize.width * .05,
                child: Center(child: Text('Recommended dishes'))
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 1.0, vertical: 1.0),
                height: MediaQuery.of(context).size.height * 0.27,
                child: RecommendedDishes()
            ),
            Container(
                margin: EdgeInsets.only(
                    top: deviceSize.height * .02,
                    right: deviceSize.width * .55),
                height: deviceSize.width * .05,
                child: Center(child: Text('Popular near you'))
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 1.0, vertical: 1.0),
                height: MediaQuery.of(context).size.height * 0.3,
                child: PopularNearYou()
            ),
            Container(
                margin: EdgeInsets.only(
                    top: deviceSize.height * .02,
                    right: deviceSize.width * .55),
                height: deviceSize.width * .05,
                child: Center(child: Text('Offers on foods'))
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 1.0, vertical: 1.0),
                height: MediaQuery.of(context).size.height * 2.31,
                child: OfferOnItem()
            ),
          ],
        ),
      ),
    );
  }
}
