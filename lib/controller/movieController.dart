import 'package:flutter/material.dart';
import 'package:gca_assignment2/api/api.dart';
import 'package:gca_assignment2/model/movie.dart';
import 'package:gca_assignment2/view/customCard.dart';
import 'package:gca_assignment2/view/movieDetail.dart';
import 'package:get/get.dart';

class MovieController extends GetxController {
  MovieController() {
    refresh();
  }

  List<Widget> _cards = [
    Center(
      child: CircularProgressIndicator(),
    )
  ];
  List<Widget> get cards => _cards;

  Future<void> refresh() async {
    await _loadCards();
    update();
  }

  List<Widget> tempList = List();
  Future<void> _loadCards() async {
    List<Movie> modelList = await API.fetchPost();
    for (int i = 0; i < modelList.length; i++) {
      tempList.add(GestureDetector(
          onTap: () {
            Get.to(MovieDetail(modelList[i]));
          },
          child: CustomCard(modelList[i])));
    }
    _cards = tempList;
  }
}
