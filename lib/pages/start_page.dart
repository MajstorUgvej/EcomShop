import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Personal logo
            Icon(
              Icons.book, 
              size: 100, 
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            SizedBox(height: 20),

            // Title
            Text(
              'Study Shop',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            // Subtitle
            Text(
              'Your one-stop shop for productivity',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 40),
            // Go button
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/shop_page'),
              child: Container(
                padding: EdgeInsets.all(25),
                decoration:BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Icon(
                  Icons.arrow_forward, 
                  color: Theme.of(context).colorScheme.inversePrimary, 
                  size: 30
                ),
              ),
            )
            ],
        ),
      )
    );
  }
}