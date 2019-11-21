import 'package:flutter/material.dart';

class CartTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          // center the children
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.shopping_cart,
              size: 160.0,
              color: Colors.red,
            ),
            Text("Cart Tab")
          ],
        ),
      ),
    );
  }
}