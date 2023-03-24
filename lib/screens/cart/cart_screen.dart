import 'package:flutter/material.dart';
import 'package:flutter_luongtranthienphuc_19dh110031/screens/cart/body.dart';

class CartScreen extends StatelessWidget {
  static const String routeName = "/cart";

  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Cart Details"),
      ),
      body: Body(),
    );
  }
}
