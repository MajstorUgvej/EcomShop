import 'package:ecom_shop/models/cart.dart';
import 'package:ecom_shop/utilities/product_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});


  @override
  Widget build(BuildContext context) {

    final products = context.watch<Cart>().getProducts;

    return Consumer<Cart>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text("Shop Page"),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/cart_page');
            }, icon:const Icon(Icons.shopping_cart_outlined))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              // title
              Text('Study items', style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.inversePrimary
              )),
          
              // subtitle
              Text('Items used for productivity increase', style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary
              )),
              
             const SizedBox(
                height: 40,
              ),
          
              // list of products
              SizedBox(
                height: 550,
                child: ListView.builder(
                  itemCount: products.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ProductTile(product: products[index], addFunction: () {
                      context.read<Cart>().addToCart(products[index]);
                      showDialog(context: context, builder: (context) {
                        return AlertDialog(
                          backgroundColor: Theme.of(context).colorScheme.primary,
                          title: Text("Added to the cart", textAlign: TextAlign.center,)
                        );
                      },);
                    } ,);
                  },
                ),
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: Padding(
          padding: const EdgeInsets.only(left: 15, bottom: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[ Column(
                  children: [
                DrawerHeader(
                  child: Icon(Icons.book, 
                    color: Theme.of(context).colorScheme.primary,
                    size: 100
                ),),
                const Divider(
                  height: 30,
                  color: Colors.transparent,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Row(
                    children: [
                      Icon(Icons.shopping_bag_outlined, size: 40),
                      Text("Shop", style: TextStyle(
                        fontSize: 20
                      ),)
                    ],
                  ),
                ),
                const Divider(
                  height: 10,
                  color: Colors.transparent,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/cart_page');
                  },
                  child:const Row(
                    children: [
                      Icon(Icons.shopping_cart_outlined, size: 40),
                      Text("Cart", style: TextStyle(
                        fontSize: 20,
                      ),), 
                    ],
                  ),
                ),],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/start_page');
                  },
                  child: const Row(
                    children: [
                      Icon(Icons.logout, size:40),
                      Text("Log out", style: TextStyle(
                        fontSize: 20
                      ),)
                    ],
                  ),
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}