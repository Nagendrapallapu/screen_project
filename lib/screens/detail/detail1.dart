import 'package:flutter/material.dart';
import 'package:screen_project/models//coffee.dart';
import 'package:screen_project/screens/detail/widget/detail1_app_bar.dart';
import 'package:screen_project/screens/detail/widget/detail_app_bar.dart';

import '../../models/bestsell.dart';



class DetailPage1 extends StatelessWidget{
  final BestSellers bestSellers;

  const DetailPage1({super.key, required this.bestSellers });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DetailAppBar1(bestSellers),
            ],
          )
      ),
    );
  }
}