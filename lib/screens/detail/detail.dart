import 'package:flutter/material.dart';
import 'package:screen_project/models//coffee.dart';
import 'package:screen_project/screens/detail/widget/detail_app_bar.dart';

class DetailPage extends StatelessWidget {
  final Coffees coffees;

  const DetailPage({Key? key, required this.coffees }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display Image
            Image.asset(
              coffees.imageUrl,
              height: 200, // Set a suitable height
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            // Display Title
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                coffees.title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            // Display Price
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                coffees.price,
                style: TextStyle(
                  fontSize: 18,
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Display Ingredients
            Padding(
              padding: const EdgeInsets.all(10.0),
             child:Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(
                   'Ingredients',
                   style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                 ),
                 SizedBox(height: 5),
                 Text(
                   ' ${coffees.ingredients}',
                   style: TextStyle(fontSize: 16),
                 ),
               ],
             ),

            ),
            // Display Description
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    ' ${coffees.description}',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),

            ),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Quantity
                  Text(
                    'Quantity: 1', // You can replace this with the actual quantity
                    style: TextStyle(fontSize: 16),
                  ),
                  // Add to Cart Button
                  ElevatedButton(
                    onPressed: () {
                      // Implement your add to cart functionality here
                    },
                    child: Text('Add to Cart'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
