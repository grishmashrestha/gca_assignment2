import 'package:flutter/material.dart';
import 'package:gca_assignment2/controller/movieController.dart';
import 'package:get/get.dart';

class MovieList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
        builder: (BuildContext ctx, Orientation orientation) {
      print(orientation);
      return GetBuilder(
        init: MovieController(),
        builder: (MovieController controller) => ListView(
          children: controller.cards,
          physics: BouncingScrollPhysics(),
        ),
      );
    });
  }
}
