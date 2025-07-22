import 'package:ecom_shop/models/cart.dart';
import 'package:ecom_shop/utilities/product_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});


  @override
  Widget build(BuildContext context) {

    final products = context.watch<Cart>().getProducts;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Shop Page"),
        centerTitle: true,
      ),
      body: SizedBox(
        height: 550,
        child: ListView.builder(
          itemCount: products.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return ProductTile(product: products[index]);
          },
        ),
      ),
      drawer: Drawer(

      ),
    );
  }
}