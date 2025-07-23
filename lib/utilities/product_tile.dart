import 'package:ecom_shop/models/product.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  final VoidCallback addFunction;
  const ProductTile({super.key, required this.product, required this.addFunction});

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        width: 300,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image of the product
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      product.imagePath,
                      color: Theme.of(context).colorScheme.secondary,
                      colorBlendMode: BlendMode.multiply, 
                      
                    ),
                  ),
                ),),
                
                      
                const SizedBox(height: 20),
                // Product name
                Text(product.name, style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.inversePrimary
                ),),
                      
                // Product description
                Text(product.description, style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.inversePrimary
                )),
                
              ],
            ),
      
            //Product price and add to cart button
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$${product.price.toStringAsFixed(2)}', style: TextStyle(
                  fontSize: 20,
                ),),
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextButton(onPressed: addFunction, child: Icon(Icons.add, color: Theme.of(context).colorScheme.inversePrimary)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}