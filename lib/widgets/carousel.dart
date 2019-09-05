import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomePageCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Carousel(
      images: [
        NetworkImage(
            'https://www.indianhealthyrecipes.com/wp-content/uploads/2019/02/hyderabadi-biryani.jpg'),
        NetworkImage(
            'https://content.jdmagicbox.com/def_content/sweet_shops/default-sweet-shops-6.jpg'),
        NetworkImage(
            'https://www.archanaskitchen.com/images/archanaskitchen/0-Archanas-Kitchen-Recipes/2018/Homemade_Vada_Pav_Recipe_With_Spinach_Corn_Tikki-8.jpg'),
        NetworkImage(
            'https://www.vegrecipesofindia.com/wp-content/uploads/2017/01/sukha-puri-recipe-1-500x500.jpg'),
        NetworkImage(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaLjw1lKuofsWyp9SPe06UJQ5SFtyq-QoPgPBAy27c6gW1LsC6zg'),
      ],
      dotSize: 5.0,
      dotSpacing: 15.0,
      dotColor: Colors.lightGreenAccent,
      indicatorBgPadding: 5.0,
      dotBgColor: Colors.black12,
      borderRadius: true,
    );
  }
}
