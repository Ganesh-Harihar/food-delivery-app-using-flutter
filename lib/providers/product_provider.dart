import 'package:flutter/cupertino.dart';
import 'package:dio/dio.dart';
import 'package:path/path.dart';
import '../models/product.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class ProductProvider with ChangeNotifier {
   
  String _url = "http://192.168.0.132:3000/products/";
  Dio _dio = new Dio();
  
  List<Product> _items = [];
  // Product(
  //     id: 'p1',
  //     title: 'Biryani',
  //     description: 'A world-renowned Indian dish, biryani takes time and practice to make but is worth every bit of the effort. Long-grained rice (like basmati) flavored with exotic spices, such as saffron, is layered with lamb, chicken, fish, or vegetables, and a thick gravy. The dish is then covered, its lid secured with dough, and then the biryani is cooked over a low flame. This is definitely a special occasion dish.There is much debate of how this dish came to be, but most agree that its origins began in Persia as a rustic rice-and-meat dish and then traveled to India. The various recipes of biryani were then born, mainly where there was culinary influence from Muslim foods, particularly in the city of Hyderabad in south India, but also along the southern coast. Biryani\'s many, many variations depend on where the dish is based. Some differences are subtle while others are distinguished by added or substituted ingredients.',
  //     price: 29.99,
  //     imageUrl:
  //         'https://pbs.twimg.com/media/Czs9aDoW8AAGJMz.jpg:large',
  //   ),
  //   Product(
  //     id: 'p2',
  //     title: 'Pani Puri',
  //     description: 'A nice pair of trousers.',
  //     price: 59.99,
  //     imageUrl:
  //         'http://2.bp.blogspot.com/-U9eZwESu9Vk/ULJutmrfd0I/AAAAAAAAFkE/mY4GEKlK1rE/s1600/pani+puri.jpg',
  //   ),
  //   Product(
  //     id: 'p3',
  //     title: 'Gulab Jamun',
  //     description: 'Warm and cozy - exactly what you need for the winter.',
  //     price: 19.99,
  //     imageUrl:
  //         'http://yesofcorsa.com/wp-content/uploads/2017/05/Gulab-Jamun-Wallpaper-HQ.jpg',
  //   ),
  //   Product(
  //     id: 'p4',
  //     title: 'Ice Cream',
  //     description: 'Prepare any meal you want.',
  //     price: 49.99,
  //     imageUrl:
  //         'https://images.pexels.com/photos/461430/pexels-photo-461430.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  //   ),
//];

List<Product> get items {
  
  return [..._items];
}
 

Future getFoodItems() async {
  try {
      var response = await http.get(_url);
      return response;
    } catch (err) {
      return err;
    }
}

}