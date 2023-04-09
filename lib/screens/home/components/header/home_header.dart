import 'package:flutter/material.dart';
import 'package:flutter_luongtranthienphuc_19dh110031/screens/cart/cart_screen.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: TextField(
            decoration: InputDecoration(
                // contentPadding: EdgeInsets.only(left:10, right: 10),
                filled: true,
                border: OutlineInputBorder(),
                fillColor: Colors.white,
                hintText: "Search product",
                prefixIcon: Icon(Icons.search)),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, CartScreen.routeName);
          },
          child: Container(
            height: 40,
            width: 40,
            padding: const EdgeInsets.all(10),
            child: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,

            ),
          ),
        ),
      ],
    );
  }
}
