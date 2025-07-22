import 'package:ecom_shop/models/product.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier{
  // list of products
  List<Product> products = [
    Product(
      name: "Product 1",
      description: "Description of Product 1",
      price: 29.99
    ),
    Product(
      name: "Product 2",
      description: "Description of Product 2",
      price: 49.99,
    ),
    Product(
      name: "Product 3",
      description: "Description of Product 3",
      price: 19.99,
    ),
    Product(
      name: "Product 4",
      description: "Description of Product 4",
      price: 39.99,
    ),
  ];

  // list of cart items
  List<Product> cartItems = [];

  // geters
  List<Product> get getProducts => products;
  List<Product> get getCartItems => cartItems;

  // add product to cart
  void addToCart(Product product) {
    cartItems.add(product);
    notifyListeners();
  }

  // remove product from cart
  void removeFromCart(Product product) {
    cartItems.remove(product);
    notifyListeners();
  }

}