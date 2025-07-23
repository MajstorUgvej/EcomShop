import 'package:ecom_shop/models/product.dart';
import 'package:flutter/material.dart';

class CartProductTile extends StatelessWidget {
  final Product product;
  final VoidCallback removeFunction;
  const CartProductTile({super.key, required this.product, required this.removeFunction});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.primary,
      child: ListTile(
        title: Text(product.name),
        subtitle: Text("\$${product.price.toStringAsFixed(2)}"),
        trailing: IconButton(onPressed: removeFunction, icon: Icon(Icons.remove)),
      ),
    );
  }
}