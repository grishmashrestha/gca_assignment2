import 'package:flutter/material.dart';
import 'package:gca_assignment2/model/movie.dart';

class CustomCard extends StatelessWidget {
  final Movie movie;
  CustomCard(this.movie);

  @override
  Widget build(BuildContext context) {
    var card = Card(
      elevation: 20,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 180,
              child: Image.network(movie.backgroundImageUrl),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Container(
                width: 245,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      movie.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    Text("${movie.year}",
                        maxLines: 1,
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontSize: 18)),
                    SizedBox(height: 2),
                    Text(
                      movie.descriptionIntro,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
    return card;
  }
}
