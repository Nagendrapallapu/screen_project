import 'package:flutter/material.dart';
import 'package:screen_project/screens/home/widget/popularItem.dart';

import '../../../models/bestsell.dart';


class BestSellListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Best of All Items'),
      ),
      body: ListView(
        children: BestSellers.generateBestSellers().map((bestSellers) {
          return PopularItem(bestSellers);
        }).toList(),
      ),
    );
  }
}


