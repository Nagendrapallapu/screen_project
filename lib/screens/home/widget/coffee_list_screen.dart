import 'package:flutter/material.dart';
import 'package:screen_project/models//coffee.dart';
import 'coffees_item.dart';

class CoffeeListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Coffees'),
      ),
      body: ListView(
        children: Coffees.generateCoffees().map((coffee) {
          return CoffeesItem(coffee);
        }).toList(),
      ),
    );
  }
}
