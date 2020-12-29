import 'package:flutter/material.dart';
import 'package:gca_assignment2/model/movie.dart';
import 'package:gca_assignment2/view/customCard.dart';

class MovieDetail extends StatelessWidget {
  final Movie movie;
  MovieDetail(this.movie);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
        backgroundColor: Colors.indigo.shade700,
      ),
      body: CustomCard(movie),
      backgroundColor: Colors.white,
    );
  }
}
