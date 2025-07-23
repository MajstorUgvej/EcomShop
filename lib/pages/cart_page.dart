import 'package:ecom_shop/models/cart.dart';
import 'package:ecom_shop/utilities/cart_product_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    final cartProducts = context.watch<Cart>().getCartItems; 

    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        centerTitle: true,
      ),
      body: cartProducts.isNotEmpty ?
          ListView.builder(
                itemCount: cartProducts.length,
                itemBuilder: (context, index) {
                  return CartProductTile(product: cartProducts[index], removeFunction: () {
                      context.read<Cart>().removeFromCart(cartProducts[index]);
                  },);
                },
              )
          : Center(child: Text("There is nothing in the cart", style: TextStyle(
            fontSize: 20,
          ),)),
        
      floatingActionButton: GestureDetector(
        onTap: () {
          
        },
        child: Container(
          padding: EdgeInsets.all(15),
          width: 200,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Text("Checkout", textAlign: TextAlign.center, style: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary,
            fontSize: 17,
            fontWeight: FontWeight.bold
          ),),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}