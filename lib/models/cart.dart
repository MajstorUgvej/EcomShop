import 'package:ecom_shop/models/product.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier{
  // list of products
  List<Product> products = [
    Product(
      name: "Pomodoro Timer Clock",
      description: "A compact timer designed to help you stay focused using the Pomodoro technique for studying",
      price: 24.99,
      imagePath: 'assets/pomodoro_timer.png'
    ),
    Product(
      name: "Book Stand",
      description: "Adjustable, ergonomic book stand made from wood, perfect for holding books or tablets while studying",
      price: 29.99,
      imagePath: 'assets/book_stand.png'
    ),
    Product(
      name: "Desk Lamp",
      description: "LED desk lamp with adjustable positioning, makde for late night reading",
      price: 39.99,
      imagePath: 'assets/desk_lamp.png'
    ),
    Product(
      name: "Habit Tracker Notebook",
      description: "Notebook with habit trackers designed to help with tracking daily habits and routines",
      price: 14.99,
      imagePath: 'assets/habit_tracker.png'
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