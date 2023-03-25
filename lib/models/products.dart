import 'dart:convert';

class Products {
  String id;
  String title;
  String description;
  String image;
  double price;

  Products(
      {required this.id,
      required this.title,
      required this.description,
      required this.image,
      required this.price});

  // static List<Products> init() {
  //   List<Products> data = [
  //     Products(
  //         id: 1,
  //         title: "Bread",
  //         description:
  //             "Founded as a bakery brand in Singapore in 2000 and listed on the SGX in 2003. It has since expanded to more than 1,000 retail stores spread across 17 markets. Its brand portfolio comprises BreadTalk, Toast Box, Food Republic, Food Junction, Din Tai Fung, Bread Society, Thye Moh Chan, The Icing Room, So and Nayuki in Singapore. Din Tai Fung, Song Fa Bak Kut Teh, Wu Pao Chun and Nayuki are franchised brands",
  //         image: "assets/images/ic_black_coffee.png",
  //         price: 8.0),
  //     Products(
  //         id: 2,
  //         title: "Coffee",
  //         description:
  //             "Coffee is a brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species. When coffee berries tum from green to bright red in color- indicating ripeness - they are picked, processed, and dried. [2] Dried coffee seeds (referred to as beans) are roasted to varying degrees, depending on the desired flavor. Roasted beans are ground and then brewed with near-boiling water to produce the beverage known as coffee.",
  //         image: "assets/images/ic_black_coffee.png",
  //         price: 8.0),
  //     Products(
  //         id: 3,
  //         title: "Tea",
  //         description:
  //             "Tea is an aromatic beverage commonly prepared by pouring hot or boiling water over cured or fresh leaves of the Camellia sinensis, an evergreen shrub native to East Asia.[3] After water, it is the most widely consumed drink in the world.[4] There are many different types of tea; some, like Darjeeling and Chinese greens, have a cooling, slightly bitter, and astringent flavour,[5] while others have vastly different profiles that include sweet, nutty, floral, or grassy notes. Tea has a stimulating effect in humans primarily by its caffeine conten",
  //         image: "assets/images/ic_black_coffee.png",
  //         price: 8.0),
  //     Products(
  //         id: 4,
  //         title: "Bread",
  //         description:
  //             "Tea is an aromatic beverage commonly prepared by pouring hot or boiling water over cured or fresh leaves of the Camellia sinensis, an evergreen shrub native to East Asia. [3] After water, it is the most widely consumed drink in the world.[4] There are many different types of tea; some, like Darjeeling and Chinese greens, have a cooling, slightly bitter, and astringent flavour,[5] while others have vastly different profiles that include sweet, nutty, floral, or grassy notes. Tea has a stimulating effect in humans primarily by its caffeine conten",
  //         image: "assets/images/ic_black_coffee.png",
  //         price: 8.0),
  //     Products(
  //         id: 5,
  //         title: "Coffee",
  //         description:
  //             "Founded as a bakery brand in Singapore in 2000 and listed on the SGX in 2003. It has since expanded to more than 1,000 retail stores spread across 17 markets. Its brand portfolio comprises BreadTalk, Toast Box, Food Republic, Food Junction, Din Tai Fung, Bread Society, Thye Moh Chan, The Icing Room, So and Nayuki in Singapore. Din Tai Fung, Song Fa Bak Kut Teh, Wu Pao Chun and Nayuki are franchised brands",
  //         image: "assets/images/ic_black_coffee.png",
  //         price: 8.0),
  //   ];
  //   return data;
  //
  //
  // }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'images': image,
      'price': price,
      'id': id,
    };
  }

  factory Products.fromMap(Map<String, dynamic> map) {
    return Products(
      title: map['title'] ?? '',
      description: map['desc'] ?? '',
      image: map['img'] ?? '',
      price: double.parse(map['price']) ?? 0.0,
      id: map['_id'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Products.fromJson(String source) =>
      Products.fromMap(json.decode(source));
}
