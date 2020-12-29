import 'package:flutter/material.dart';
import 'package:gca_assignment2/model/movie.dart';

class MovieDetail extends StatelessWidget {
  final Movie movie;
  MovieDetail(this.movie);
  @override
  Widget build(BuildContext context) {
    var card = Card(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 200,
              child: Image.network(movie.backgroundImageUrl),
            ),
            SizedBox(height: 10),
            Text(
              movie.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            Text("Release Year : ${movie.year}",
                maxLines: 1,
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 18)),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Runtime : ${movie.runtime} mins",
                  maxLines: 10,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(width: 10),
                Text(
                  "Ratings : ${movie.runtime} stars",
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            SizedBox(height: 5),
            Text(
              movie.descriptionIntro,
              maxLines: 10,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: card,
    );
  }
}
