import 'package:flutter/material.dart';
import 'package:screen_project/models//coffee.dart';

import 'package:screen_project/screens/detail/detail.dart';


class CoffeesItem extends StatelessWidget{
  final Coffees coffees;
  CoffeesItem(this.coffees, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          // print("Item tapped: ${coffees.title}");
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailPage(coffees: coffees),
            ),
          );
        },

        child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage(coffees.imageUrl),
                        fit: BoxFit.fitHeight
                    ),
                  ),
                ),
                Positioned(
                  right: 20,
                  top: 15,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        shape: BoxShape.circle),
                    child: Icon(Icons.favorite,color: Colors.red,size: 15,),
                  ),
                ),
              ],
            ),
            Text(coffees.title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 1.5),),
            Text(coffees.subtitle,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 1.5),),
            Text(coffees.price,
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                  height: 1.5),),
          ],
        ),
       ),
      ),
    );
  }

}